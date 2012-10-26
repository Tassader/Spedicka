<?php
require_once 'nette.min.php';


class PrimaSvatky{
/**
 * database object
 * @var PDO
 */
protected $db;

/**
 * Prepared statement for getting send reminders
 * @var PDOStatement
 */
protected $stGetNameDay;

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
    $this->stGetNameDay=$this->db->prepare('SELECT Email FROM Kontakt k JOIN Svatky s ON s.Jmeno COLLATE Czech_CI_AI LIKE k.Krestni COLLATE Czech_CI_AI WHERE ZasilatPrani=1 AND s.Den=? AND s.Mesic=?');
    //$this->stGetNameDay=$this->db->prepare('SELECT Email FROM Kontakt k JOIN Svatky s ON s.Jmeno LIKE k.Krestni WHERE ZasilatPrani=1 AND s.Den=? AND s.Mesic=?');
}

function getRecipients($day, $month)
{
    $this->stGetNameDay->execute(array($day, $month));
    $arrNameDays=array();
    while ($arrNameDay=$this->stGetNameDay->fetch())
    {
        $arrNameDays[]=$arrNameDay['Email'];
    }
    return $arrNameDays;
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

function sendMail($email)
{
    $template = new Nette\Templating\FileTemplate('templates\komplimentka.phtml');
    $template->registerFilter(new Nette\Latte\Engine);
    $template->email = $email;
    $template->registerHelperLoader('Nette\Templating\DefaultHelpers::loader');
    //$template->setCacheStorage($context->templateCacheStorage);

    $mail = new Nette\Mail\Message;
    $mail->setFrom('Prima Logistics,s.r.o. <sales@primalogistics.cz>') //TODO do konfigurace
        ->addTo($email/*, $reminder[0]['firma']*/)
        //->addTo('tomas.zadrazil@centrum.cz')
        //->addTo('premysl.hanak@primalogistics.cz')
        ->addBCC('jaroslav.zoubek@primalogistics.cz')
        //->addBCC('upominky@primalogistics.cz')
        ->setHtmlBody($template);

    $mailer = new Nette\Mail\SmtpMailer($this->smtpParams);
    //alternativa$mailer->send($mail);

    $mail->setMailer($mailer);
    try
    {
        $mail->send();
    }
    catch(Exception $e)
    {
        //$this->_reportError('Chyba pøi odesílání: '.$e->GetMessage(),$invoice['cislo_faktury']);
    }
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
    //$this->db->query('INSERT INTO UpominkyChyby (faktura, datum, popis) VALUES ('.$this->db->quote($faktura).', CURRENT_TIMESTAMP, '.$this->db->quote($popis).')');
    print(date('Ymd') . " chyba: $popis (faktura:$faktura)\n");
}

} // Class PrimaUpominky
//?>