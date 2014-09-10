<?php
require_once 'nette.min.php';
require_once 'html2pdf\html2fpdf.php'; 
//require_once 'mpdf/mpdf.php';

class PrimaReporty{
/**
 * database object
 * @var PDO
 */
protected $db;

/**
 * Parameters for SMTP sender
 * @var array
 */
protected $smtpParams=array();

//sqlsrv:server=hostname_or_ip;Database=database_name;
function connectToDb($dsn, $username=NULL, $password=NULL, array $atd=NULL)
{
    $this->db=New PDO($dsn, $username, $password, $atd);
}

function setSmtpParams($smtpParams)
{
    $this->smtpParams=$smtpParams;
}

function createReport($query, $templateName, array $email, $attachmentFormat=NULL)
{
    $statement = $this->db->prepare($query);
    $statement->execute();
    $rows=$statement->fetchAll(PDO::FETCH_ASSOC);
    
    $template = new Nette\Templating\FileTemplate("templates\\$templateName.phtml");
    $template->registerFilter(new Nette\Latte\Engine);
    $template->rows = $rows;
    $template->time = time();
    $template->registerHelperLoader('Nette\Templating\DefaultHelpers::loader');
    //$template->setCacheStorage($context->templateCacheStorage);

    $mail = new Nette\Mail\Message;
    $mail->setFrom('Prima Logistics,s.r.o. <sales@primalogistics.cz>') //TODO do konfigurace
        ->setHtmlBody($template);

    foreach ($email as $email_address)
    {
        $mail->addTo($email_address);
    }

    if (!empty($attachmentFormat))
    {
        switch ($attachmentFormat)
        {
            case 'xls':
                $attachment = new Nette\Templating\FileTemplate("templates\\${templateName}_att.phtml");
                $attachment->registerFilter(new Nette\Latte\Engine);
                $attachment->rows = $rows;
                $attachment->time = time();
                $attachment->registerHelperLoader('Nette\Templating\DefaultHelpers::loader');

                $mail->addAttachment("$templateName.xls", $attachment, 'application/vnd.ms-excel');
                break;
            case 'pdf':
                $attachment = new Nette\Templating\FileTemplate("templates\\${templateName}_att.phtml");
                $attachment->registerFilter(new Nette\Latte\Engine);
                $attachment->rows = $rows;
                $attachment->time = time();
                $attachment->registerHelperLoader('Nette\Templating\DefaultHelpers::loader');

                /*$pdf=new mPDF();
                //$pdf->debug = true;
                $pdf->ignore_invalid_utf8 = true;
                echo $attachment;
                echo iconv('UTF-8', 'UTF-8', $attachment);
                $pdf->WriteHTML($attachment);
                $mail->addAttachment("$templateName.pdf", $pdf->Output("$templateName.pdf",'S'));*/
                $pdf = new HTML2FPDF();
                $pdf->DisableTags();
                $pdf->AddPage();
                $pdf->WriteHTML(iconv('UTF-8', 'windows-1252//TRANSLIT', $attachment)); // fpdf is windows-1252 only
                $mail->addAttachment("$templateName.pdf", $pdf->Output("$templateName.pdf",'S'));
                break;
            case 'xls-new':
                include "templates\\${templateName}_att.php";
                //$attachment = '';
                $mail->addAttachment("$templateName.xls", $attachment, 'application/vnd.ms-excel');
                break;
        }
    }

    $mailer = new Nette\Mail\SmtpMailer($this->smtpParams);

    $mail->setMailer($mailer);
    try
    {
        $mail->send();
    }
    catch(Exception $e)
    {
        $this->_reportError('Chyba při odesílání: '.$e->GetMessage(),$template);
    }
    //print($mail->generateMessage()); //toto lze ulozit na P jako *.eml
}

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

protected function _reportError($popis, $template=null)
{
    //$this->db->query('INSERT INTO UpominkyChyby (faktura, datum, popis) VALUES ('.$this->db->quote($faktura).', CURRENT_TIMESTAMP, '.$this->db->quote($popis).')');
    print(date('Ymd') . " chyba: $popis ($template)\n");
}

} // Class PrimaUpominky
//?>