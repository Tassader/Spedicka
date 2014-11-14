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


$pr->createReport("SELECT k.*, 
Firma.firma AS Zakaznik, 
Obchodnik.Prijmeni AS Disponent, 
p.ETAPrg, 
Year(p.ETAPrg) AS ETAPrgYear, 
Datepart(ww,p.ETAPrg) AS ETAPrgWeek, 
car.Firma AS Carrier, 
vyk.Mesto, 
vyk.PSC

,p.Cislo,dk.Druh,tk.Typ


FROM ((((Kontejner AS k LEFT JOIN
  Firma AS vyk ON k.Vykladka = vyk.ID) LEFT JOIN
  Preprava p ON p.ID = k.Preprava) LEFT JOIN
  Firma AS car ON p.Carrier = car.ID) LEFT JOIN 
  Obchodnik ON Obchodnik.ID = p.Disponent) LEFT JOIN
  Firma ON Firma.ID = p.Zakaznik

  LEFT JOIN DruhKusu dk ON dk.ID=k.DruhKusu
  LEFT JOIN TypKontejneru tk ON tk.ID=k.TypKontejneru
 
WHERE p.DruhPrepravy IN (7,8) AND p.Smer='Import'
AND ETAPrg BETWEEN current_timestamp AND current_timestamp+14 
ORDER BY ETAPrg",
                  "report-rozvozy",  
                  array("operations@primalogistics.cz", "hk@primalogistics.cz", "tomas.zadrazil@centrum.cz"),
                  "xls");
?>