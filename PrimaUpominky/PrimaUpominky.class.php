<?php
require_once 'nette.min.php';
require_once 'excel_reader2.php';


class PrimaUpominky{
/**
 * database object
 * @var PDO
 */
protected $db;
/**
 * Prepared statement for getting processed files
 * @var PDOStatement
 */
protected $stGetFiles;
/**
 * Prepared statement for getting send reminders
 * @var PDOStatement
 */
protected $stGetReminders;
/**
 * Prepared statement for storing sent reminders (so they won't be sent again)
 * @var PDOStatement
 */
protected $stSaveReminder;
/**
 * Array of reminders (company=>{seznam_pohledavek=>array(), email=>email}
 * @var array
 */
protected $stGetCompanyDetails;
/**
 * Array of reminders (company=>{seznam_pohledavek=>array(), email=>email}
 * @var array
 */
protected $remindersArray=array();

/**
 * Path where invoices are stored
 * @var string
 */
protected $invoicePath;

/**
 * Parameters for SMTP sender
 * @var array
 */
protected $smtpParams=array();

//sqlsrv:server=hostname_or_ip;Database=database_name;
function connectToDb($dsn, $username=NULL, $password=NULL, array $atd=NULL)
{
    $this->db=New PDO($dsn, $username, $password, $atd);

    // prepare prepared statements, so they're prepared :D
    $this->stGetFiles=$this->db->prepare('SELECT soubor FROM UpominkyZpracovaneSoubory');
    $this->stGetReminders=$this->db->prepare('SELECT faktura, email FROM UpominkyOdeslane WHERE upominka=?');
    $this->stSaveReminder=$this->db->prepare('INSERT INTO UpominkyOdeslane (faktura, datum, upominka, email) VALUES (?, CURRENT_TIMESTAMP, ?, ?)');
    //$this->stGetCompanyDetails=$this->db->prepare('SELECT TOP 1 k.email FROM Firma f join Kontakt k ON k.Firma=f.ID WHERE f.Firma LIKE ? ORDER BY k.ID'); // TODO pokud ma firma vic kontaktu, preskocit ty bez vyplneneho emailu - hotovo :)
    //$this->stGetCompanyDetails=$this->db->prepare('SELECT TOP 1 k.email FROM Firma f /*LEFT*/ join Kontakt k ON k.Firma=f.ID WHERE f.Firma LIKE ? AND (k.email IS NOT NULL /*OR k.id IS NULL*/) ORDER BY k.ID');
    //nebo podle ICO
    //$this->stGetCompanyDetails=$this->db->prepare('SELECT TOP 1 k.email FROM Firma f /*LEFT*/ join Kontakt k ON k.Firma=f.ID WHERE f.ICO = ? AND (k.email IS NOT NULL /*OR k.id IS NULL*/) ORDER BY k.ID');
    $this->stGetCompanyDetails=$this->db->prepare('SELECT TOP 1 k.email FROM Firma f /*LEFT*/ join Kontakt k ON k.Firma=f.ID WHERE f.ICO LIKE ? AND (k.email IS NOT NULL /*OR k.id IS NULL*/) ORDER BY k.ID');
}


function setInvoiceLookupPath($path)
{
    $this->invoicePath=$path;
}

function setSmtpParams($smtpParams)
{
    $this->smtpParams=$smtpParams;
}
/**
 * Gets filename (with path) of next unprocessed file that matches given mask
 *
 * @param $filename_mask
 * @return string filename of excel table to proccess
 * @return false if no file found
 */
function getFilename($filename_mask)
{
    $files=glob($filename_mask);
    if (!is_array($files) || count($files)<1)
    {
        return false;
    }

    $this->stGetFiles->execute() or $this->_reportError(var_dump($this->stGetFiles->errorInfo()));

    $filesDone=array();
    while($fileDone=$this->stGetFiles->fetch())
        $filesDone[]=$fileDone[0];

    //print_r($filesDone);
    foreach($files as $file)
    {
        if (!in_array($file, $filesDone) && is_readable($file))
        {
            $this->db->query("INSERT INTO UpominkyZpracovaneSoubory (soubor, datum) VALUES ('$file', CURRENT_TIMESTAMP)") or $this->_reportError(var_dump($this->db->errorInfo()));
            return $file;
        }
    }
    return false;
}

/**
 * Reads data from excel datasheet
 *
 * @param $filename Name and path of file to process
 * @param $time_limit
 * @return not ready yet
 */
function readTable($filename, $time_limit=0)
{
    $data = new Spreadsheet_Excel_Reader($filename);
    $sheet=0;

    //$pohledavky=new array();

    for ($i=2; $i<$data->rowcount($sheet);$i++) // $i=2, pac se zacne od 2. radku
    {
        $numValue=$data->raw($i, 7, 0);
        $utcDays = floor($numValue - ($data->nineteenFour ? SPREADSHEET_EXCEL_READER_UTCOFFSETDAYS1904 : SPREADSHEET_EXCEL_READER_UTCOFFSETDAYS));
        $utcValue = ($utcDays) * SPREADSHEET_EXCEL_READER_MSINADAY;

        //$dateinfo = date("Ymd",$utcValue);
        //$totalseconds = floor(SPREADSHEET_EXCEL_READER_MSINADAY * $fractionalDay);

        $pohledavka=array();

        $pohledavka['firma']=$data->val($i, 2, $sheet);
        $pohledavka['ICO']=$data->val($i, 3, $sheet);
        $pohledavka['cislo_faktury']=$data->val($i, 4, $sheet);
        $pohledavka['zakazka']=$data->val($i, 5, $sheet);
        $pohledavka['datum_vystaveni']=$data->val($i, 6, $sheet);
        $pohledavka['datum_splatnosti']=$data->val($i, 7, $sheet);
        $pohledavka['mena']=$data->val($i, 8, $sheet);
        $pohledavka['fakturovano']=$data->raw($i, 9, $sheet); // castka v cizi mene?
        $pohledavka['celkem_kc']=$data->raw($i, 10, $sheet);
        $pohledavka['k_likvidaci_kc']=$data->raw($i, 11, $sheet); //???? celkem v kè
        //$pohledavka['k_likvidaci_kc']=$data->raw($i, 12, $sheet); //????
        $pohledavka['po_splatnosti']=floor((time()-$utcValue)/SPREADSHEET_EXCEL_READER_MSINADAY);

        //doplnit "mena" a "fakturovano" u Kc 
        if (empty($pohledavka['mena']))
        {
            $pohledavka['mena']='CZK';
            $pohledavka['fakturovano']=$pohledavka['celkem_kc'];
        }

        //print_r($pohledavka);
        if ($pohledavka['po_splatnosti'] < $time_limit || $pohledavka['k_likvidaci_kc']<=0) continue;

        if (empty($pohledavka['firma']) || empty($pohledavka['cislo_faktury'])) continue;
        //print("$pohledavka[cislo_faktury]\t$pohledavka[firma]\t$pohledavka[k_likvidaci_kc]\t$pohledavka[po_splatnosti]\n");

        if (empty($pohledavka['ICO'])) continue; // zahranicni firmy nemaj ICO ... ale bez nej nejde firmu dohledat (+je nesmysl jim posilat ceskou upominku)

        //fix nazvu firmy aby byl vzdy v UTF-8
		if (!Nette\Utils\Strings::checkEncoding($pohledavka['firma'])) 
        {
			$pohledavka['firma'] = iconv('cp1250', 'UTF-8//TRANSLIT', $pohledavka['firma']);
        }       

        $this->remindersArray[$pohledavka['ICO']]['seznam_pohledavek'][]=$pohledavka;
    }

    foreach ($this->remindersArray as $ico => $value)
    {
        try 
        {
            $this->stGetCompanyDetails->execute(array($ico)) or $this->_reportError(var_dump($this->stGetCompanyDetails->errorInfo()), @$this->remindersArray[$ico]['cislo_faktury']);
            $email=$this->stGetCompanyDetails->fetchColumn();
            //print("$firma: '$email'");
            $email=trim($email);
            //print("trimmed: '$email'\n\n");
            if ($this->_checkEmailAddress($email))
            {
                $this->remindersArray[$ico]['email']=$email;
            }
            else
            {
                $this->_reportError("Neplatna emailova adresa '$email' u firmy '".$value['seznam_pohledavek'][0]['firma']."' (IC $ico)", $value['seznam_pohledavek'][0]['cislo_faktury']);
                unset($this->remindersArray[$ico]);
            }
        }
        catch (PDOException $err) 
        {
            $this->_reportError(var_dump($err->getMessage()), @$this->remindersArray[$ico]['cislo_faktury']); // + $err->getCode() ?
        }
        //print_r($this->remindersArray);
    }

    //print_r($this->remindersArray);
}

function sendReminder($days, $reminderNum/*, $text*/)
{
    $this->stGetReminders->execute(array($reminderNum));
    $already_sent_reminders=array();
    while ($already_sent_reminder=$this->stGetReminders->fetch())
    {
        $already_sent_reminders[]=$already_sent_reminder['faktura'];
    }

    foreach ($this->remindersArray as $ico=>$remindersArray_value)
    {
        $reminderToSend=array();
        foreach ($remindersArray_value['seznam_pohledavek'] as $seznam_pohledavek_key=>$pohledavka)
        {
            // do something
            if ($pohledavka['po_splatnosti']>=$days && !in_array($pohledavka['cislo_faktury'], $already_sent_reminders))
            {
                $reminderToSend[]=$pohledavka;
                $this->stSaveReminder->execute(array($pohledavka['cislo_faktury'], $reminderNum, $this->remindersArray[$ico]['email']));
            }
        }
        if (!empty($reminderToSend))
        {
            
            try
            {
                $this->_reallySendReminder($this->remindersArray[$ico]['email'], $reminderToSend, $reminderNum);
            }
            catch(Exception $e)
            {
                $this->_reportError('Chyba pøi odesílání: '.$e->GetMessage(),$invoice['cislo_faktury']);
            }
            //$remindersToSend[$firma]['email']=$this->remindersArray[$firma]['email'];
        }
    }
} //text by se mohl brat z DB?

protected function _reallySendReminder($email, $reminder, $reminderNum)
{
    $template = new Nette\Templating\FileTemplate('templates\upominka'.$reminderNum.'.phtml');
    $template->registerFilter(new Nette\Latte\Engine);
    $template->reminder = $reminder;
    $template->email = $email;
    $template->registerHelperLoader('Nette\Templating\DefaultHelpers::loader');
    //$template->setCacheStorage($context->templateCacheStorage);

    $mail = new Nette\Mail\Message;

    $mail->setFrom('PrimaLogistics,s.r.o. <upominky@primalogistics.cz>') //TODO do konfigurace
        ->addTo($email, $reminder[0]['firma'])
        //->addTo('tomas.zadrazil@centrum.cz')
        //->addTo('premysl.hanak@primalogistics.cz')
        //->addTo('jaroslav.zoubek@primalogistics.cz')
        ->addBCC('upominky@primalogistics.cz')
        ->setHtmlBody($template);

    foreach ($reminder as $invoice)
    {
        //print($invoice['mena'] . "=Kè");
        if (empty($invoice['mena']) || $invoice['mena']=='CZK')
        {
            $invoice_filename='Faktura_'.$invoice['cislo_faktury'].'.pdf';
        }
        else
        {
            $invoice_filename='Faktura_v_cizí_mìnì_'.$invoice['cislo_faktury'].'.pdf';
        }
        //print($invoice_filename);
        $invoice_file_arr=glob($this->invoicePath.$invoice_filename);
        if (!is_array($invoice_file_arr)||count($invoice_file_arr)<1)
        {
            $this->_reportError('Soubor s fakturou nenalezen: '.$invoice_filename,$invoice['cislo_faktury']);
            continue;
        }
        $invoice_file=$invoice_file_arr[0];
        //print($invoice_file);
        $mail->addAttachment($invoice_file);
    }

    $mailer = new Nette\Mail\SmtpMailer($this->smtpParams);
    //alternativa$mailer->send($mail);

    $mail->setMailer($mailer);

    $mail->send();

    //print($mail->generateMessage()); //toto lze ulozit na P jako *.eml
}

/*protected function _getReminders($days, $reminderNum)
{

}*/


/**
 * Check if supplied email address' format is valid
 *
 * @param string email address to be checked
 * @return true if email is valid, false if not 
 */
protected function _checkEmailAddress($address)
{
    $atom = "[-a-z0-9!#$%&'*+/=?^_`{|}~]";
    $localPart = "(?:\"(?:[ !\\x23-\\x5B\\x5D-\\x7E]*|\\\\[ -~])+\"|$atom+(?:\\.$atom+)*)";
    $chars = "a-z0-9\x80-\xFF";
    $domain = "[$chars](?:[-$chars]{0,61}[$chars])";
    return (!empty($address) && preg_match("(^$localPart@(?:$domain?\\.)+[-$chars]{2,19}\\z)i",$address) === 1);
}

protected function _reportError($popis, $faktura=null)
{
    $this->db->query('INSERT INTO UpominkyChyby (faktura, datum, popis) VALUES ('.$this->db->quote($faktura).', CURRENT_TIMESTAMP, '.$this->db->quote($popis).')');
    print(date('Ymd') . " chyba: $popis (faktura:$faktura)\n");
}

} // Class PrimaUpominky
//?>