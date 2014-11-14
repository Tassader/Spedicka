<?php
require_once "config.php";
require_once "PrimaReporty.class.php";
error_reporting(E_ALL &~ E_DEPRECATED);

$pr=new PrimaReporty;
$pr->connectToDb(CONN_STRING);

$pr->setSmtpParams(array(
        'host' => SMTP_SERVER,
        'port' => SMTP_PORT,
        'username' => SMTP_USERNAME,
        'password' => SMTP_PASSWORD,
        'secure' => SMTP_SECURE,
        ));

$pr->createReport("
SELECT * FROM PojisteniReport 
ORDER BY DatumNakladky
",
                  "report-pojisteni",  
                  array(/**/"m.kollingerova@greco.cz", "m.zikmundova@greco.cz", "Premysl Hanak <premysl.hanak@primalogistics.cz>", "gabriela.vavru@primalogistics.cz", "lukas.matousek@primalogistics.cz" /** /"tomas.zadrazil@centrum.cz"/**/),
                  "xls-new");
?>