<?php
require_once "config.php";
require "PrimaReporty.class.php";
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

$pr->createReport("SELECT Datum, Uzivatel, Firma, '<neexistujici firma>' AS Stare, 'Nový zákazník' AS Nove 
                    FROM Historie h LEFT JOIN Firma f ON f.ID=h.Radek
                    WHERE Tabulka='Firma' AND Sloupec IS NULL AND f.KategorieCRM=3 AND Datum > cast(DATEADD(ww,-1,CURRENT_TIMESTAMP) as Date) AND Datum < cast(CURRENT_TIMESTAMP as Date)
UNION ALL
SELECT Datum, Uzivatel, Firma, Stare, Nove 
                    FROM Historie h LEFT JOIN Firma f ON f.ID=h.Radek
                    WHERE Tabulka='Firma' AND Sloupec='KategorieCRM' AND Datum > cast(DATEADD(ww,-1,CURRENT_TIMESTAMP) as Date) AND Datum < cast(CURRENT_TIMESTAMP as Date)
                    
ORDER BY Datum",
                  "report-firmy",  
                  array("operations@primalogistics.cz", "sales@primalogistics.cz", "hk@primalogistics.cz", "katerina.bartosova@primalogistics.cz"),
                  "xls");
