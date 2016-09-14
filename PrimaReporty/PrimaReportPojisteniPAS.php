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
select SUBSTRING(CONVERT(VARCHAR, ETS, 120),0,8) as r_m,
po.Cislo,
p.Cislo as Preprava,
f.Firma as Pojisteny,
inc.Incoterms,
nak.Misto as Nakladka,
via.Misto as Via,
vyk.Misto as Vykladka,
po.DatumNakladky, po.Castka, po.Castka110, po.Dopravne, po.Mena, po.Kurz, po.Sazba
from dbo.Pojisteni po with (updlock)

join dbo.Preprava p on p.ID=po.Preprava
join dbo.Firma f on f.ID=po.Pojisteny
left join dbo.Misto nak on nak.ID=po.Nakladka
left join dbo.Misto via on via.ID=po.Via
left join dbo.Misto vyk on vyk.ID=po.Vykladka
left join dbo.Incoterms inc on inc.ID=p.Incoterms
WHERE Odeslano IS NULL 
ORDER BY DatumNakladky
",
                  "report-pojisteni_pas",  
                  array(/**/"jakub.fiser@renomia.cz", "dagmar.sykorova@renomia.cz", "Premysl Hanak <premysl.hanak@primalogistics.cz>", "lukas.matousek@primalogistics.cz", "katerina.bartosova@primalogistics.cz", /**/"tomas.zadrazil@primalogistics.cz"/**/),
                  "xls-new");

$pr->query("
UPDATE Pojisteni
SET Odeslano = CURRENT_TIMESTAMP
WHERE Odeslano IS NULL
");
