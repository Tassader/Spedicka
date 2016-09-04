<?php

require_once "config.php";
require_once 'nette.min.php';

error_reporting(E_ALL &~ E_DEPRECATED);

$smtpParams = array(
        'host' => SMTP_SERVER,
        'port' => SMTP_PORT,
        'username' => SMTP_USERNAME,
        'password' => SMTP_PASSWORD,
        'secure' => SMTP_SECURE,
        );

$to = "jiri.cipro@stokvistapes.cz";
$attachment = "C:/P/Praha/AAA SKLAD/AAA ZAKAZNICI/Stokvis/Stav Skladu/Stokvis_stav skladu.xlsx";
$subject = "Stav skladu Prima Warehousing and Distribution";

try
{
    /*
		$template = new Nette\Templating\FileTemplate('templates\komplimentka.phtml');
    $template->registerFilter(new Nette\Latte\Engine);
    $template->email = $email;
    $template->registerHelperLoader('Nette\Templating\DefaultHelpers::loader');
    //$template->setCacheStorage($context->templateCacheStorage);
*/
    $mail = new Nette\Mail\Message;
    $mail->setFrom('Prima Warehousing and Distribution, s.r.o. <sklad@primalogistics.cz>') //TODO do konfigurace
        ->addTo($to)
        //->addTo('tomas.zadrazil@centrum.cz')
        //->addBCC('jaroslav.zoubek@primalogistics.cz')
        //->setHtmlBody($template);
        ->setSubject($subject)
        ->addAttachment($attachment)
        ;

    $mailer = new Nette\Mail\SmtpMailer($smtpParams);
    //alternativa$mailer->send($mail);

    $mail->setMailer($mailer);
    $mail->send();
}
catch(Exception $e)
{
		print('Chyba při odesílání: '.$e->GetMessage());
}