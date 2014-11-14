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

$pr->createReport(
"SELECT 
  Zákazník AS Zakaznik,/*Obchodník AS Nacenil, Zastupce,*/'100%' AS Podil, 
  COUNT(CASE WHEN Měsíc=Month(DATEADD(m,-4,CURRENT_TIMESTAMP)) AND Rok=Year(DATEADD(m,-4,CURRENT_TIMESTAMP)) THEN Zisk ELSE NULL END) [Pocet1],
  SUM(CASE WHEN Měsíc=Month(DATEADD(m,-4,CURRENT_TIMESTAMP)) AND Rok=Year(DATEADD(m,-4,CURRENT_TIMESTAMP)) THEN Zisk ELSE NULL END) [Zisk1],
  COUNT(CASE WHEN Měsíc=Month(DATEADD(m,-3,CURRENT_TIMESTAMP)) AND Rok=Year(DATEADD(m,-3,CURRENT_TIMESTAMP)) THEN Zisk ELSE NULL END) [Pocet2],
  SUM(CASE WHEN Měsíc=Month(DATEADD(m,-3,CURRENT_TIMESTAMP)) AND Rok=Year(DATEADD(m,-3,CURRENT_TIMESTAMP)) THEN Zisk ELSE NULL END) [Zisk2],
  COUNT(CASE WHEN Měsíc=Month(DATEADD(m,-2,CURRENT_TIMESTAMP)) AND Rok=Year(DATEADD(m,-2,CURRENT_TIMESTAMP)) THEN Zisk ELSE NULL END) [Pocet3],
  SUM(CASE WHEN Měsíc=Month(DATEADD(m,-2,CURRENT_TIMESTAMP)) AND Rok=Year(DATEADD(m,-2,CURRENT_TIMESTAMP)) THEN Zisk ELSE NULL END) [Zisk3]
FROM ZiskPreprava_Overseas
WHERE Zastupce='Michaela Schamannová' /*OR Obchodník='Lukáš Matoušek'*/ 
  AND Měsíc+100*Rok>=Month(DATEADD(m,-4,CURRENT_TIMESTAMP))+100*Year(DATEADD(m,-4,CURRENT_TIMESTAMP))
  AND Měsíc+100*Rok<Month(DATEADD(m,-1,CURRENT_TIMESTAMP))+100*Year(DATEADD(m,-1,CURRENT_TIMESTAMP)) 
GROUP BY Zákazník/*,Obchodník, Zastupce*/

UNION ALL 

SELECT 
  Zákazník AS Zakaznik,/*Obchodník AS Nacenil, Zastupce,*/'50%' AS Podil, 
  COUNT(CASE WHEN Měsíc=Month(DATEADD(m,-4,CURRENT_TIMESTAMP)) AND Rok=Year(DATEADD(m,-4,CURRENT_TIMESTAMP)) THEN Zisk ELSE NULL END) [Pocet1],
  SUM(CASE WHEN Měsíc=Month(DATEADD(m,-4,CURRENT_TIMESTAMP)) AND Rok=Year(DATEADD(m,-4,CURRENT_TIMESTAMP)) THEN Zisk ELSE NULL END)/2 [Zisk1],
  COUNT(CASE WHEN Měsíc=Month(DATEADD(m,-3,CURRENT_TIMESTAMP)) AND Rok=Year(DATEADD(m,-3,CURRENT_TIMESTAMP)) THEN Zisk ELSE NULL END) [Pocet2],
  SUM(CASE WHEN Měsíc=Month(DATEADD(m,-3,CURRENT_TIMESTAMP)) AND Rok=Year(DATEADD(m,-3,CURRENT_TIMESTAMP)) THEN Zisk ELSE NULL END)/2 [Zisk2],
  COUNT(CASE WHEN Měsíc=Month(DATEADD(m,-2,CURRENT_TIMESTAMP)) AND Rok=Year(DATEADD(m,-2,CURRENT_TIMESTAMP)) THEN Zisk ELSE NULL END) [Pocet3],
  SUM(CASE WHEN Měsíc=Month(DATEADD(m,-2,CURRENT_TIMESTAMP)) AND Rok=Year(DATEADD(m,-2,CURRENT_TIMESTAMP)) THEN Zisk ELSE NULL END)/2 [Zisk3]
FROM ZiskPreprava_Road
WHERE Obchodník='Michaela Schamannová' 
  AND Měsíc+100*Rok>=Month(DATEADD(m,-4,CURRENT_TIMESTAMP))+100*Year(DATEADD(m,-4,CURRENT_TIMESTAMP))
  AND Měsíc+100*Rok<Month(DATEADD(m,-1,CURRENT_TIMESTAMP))+100*Year(DATEADD(m,-1,CURRENT_TIMESTAMP)) 
GROUP BY Zákazník/*,Obchodník, Zastupce*/


ORDER BY Podil,Zákazník",
                  "report-obchodnik_ms",  
                  array("tomas.zadrazil@centrum.cz","jaroslav.zoubek@primalogistics.cz","premysl.hanak@primalogistics.cz","lukas.matousek@primalogistics.cz"),
                  "pdf");

?>