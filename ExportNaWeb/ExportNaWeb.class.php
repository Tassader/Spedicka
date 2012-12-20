<?php

class ExportNaWeb{
/**
 * database object
 * @var PDO
 */
protected $sourceDb;
protected $destDb;

protected $targetTable='zak_preprava';

/**
 * Prepared statement for getting processed files
 * @var PDOStatement
 */
protected $stGetRows;

//sqlsrv:server=hostname_or_ip;Database=database_name;
function connectToSourceDb($dsn, $username=NULL, $password=NULL, array $atd=NULL)
{
    $this->sourceDb=New PDO($dsn, $username, $password, $atd);

    // prepare prepared statements, so they're prepared :D
    $this->stGetRows=$this->sourceDb->prepare('SELECT p.ID
      ,Cislo
      ,Zakaznik
      ,ZakaznickaRef
      ,Smer
      ,i.Incoterms -- ciselnik
      ,IncotermsMisto
      ,dp.DruhPrepravy -- ciselnik
      ,Zasilka
      ,POL
      ,ETS
      ,POD
      ,ETA
      ,DatumCasVykladky
      ,Stav2 AS Stav
  FROM PrepravaFull p LEFT JOIN Incoterms i ON i.ID=p.Incoterms LEFT JOIN DruhPrepravy dp ON dp.ID=p.DruhPrepravy');
}

/*
  `ID` INT NOT NULL , -- mozna zbytecny sloupec
  `Zakaznik` INT NOT NULL , -- ID zakaznika, bude asi slouzit pro propojeni s tabulkou zakazniku/loginu 
  `Cislo` VARCHAR(100) NOT NULL , -- Cislo (oznaceni) prepravy dle Primy
  `ZakaznickaRef` VARCHAR(255) NULL DEFAULT NULL , -- oznaceni dle zakaznika
  `Odesilatel` VARCHAR(255) NULL DEFAULT NULL ,
  `Prijemce` VARCHAR(255) NULL DEFAULT NULL ,
  `Smer` CHAR(6) NULL DEFAULT NULL ,
  `Incoterms` CHAR(3) NULL DEFAULT NULL , -- zkratka, napr. "CPT"
  `IncotermsMisto` VARCHAR(255) NULL DEFAULT NULL , -- mozna nebude pouzito
  `DruhPrepravy` VARCHAR(50) NOT NULL ,
  `Zasilka` VARCHAR(100) NULL DEFAULT NULL ,
  `POL` VARCHAR(100) NULL DEFAULT NULL , -- Port of Loading
  `POD` VARCHAR(100) NULL DEFAULT NULL , -- Port of Departure
  `ETS` TIMESTAMP NULL DEFAULT NULL ,  
  `ETA` TIMESTAMP NULL DEFAULT NULL , 
  `DatumCasVykladky` TIMESTAMP NULL DEFAULT NULL ,
  `Stav` VARCHAR(100) NULL DEFAULT NULL ,

*/


function connectToDestDb($dsn, $username=NULL, $password=NULL, array $atd=NULL)
{
    $this->destDb=New PDO($dsn, $username, $password, $atd);

    // prepare prepared statements, so they're prepared :D
    //$this->stGetFiles=$this->db->prepare('SELECT soubor FROM UpominkyZpracovaneSoubory');
}



function copyData()
{
    $this->_queryTargetDb("TRUNCATE $this->targetTable;");

    $rows=array_chunk($this->_getData(),100);
    if (count($rows,COUNT_RECURSIVE)<1) return;

    foreach ($rows as $chunk)
    {
        $sql  = 'insert into '.$this->targetTable.'('.implode(',', array_keys($chunk[0])).') values ';
        foreach ($chunk as $row)
        {
            foreach ($row as $key => $value)
                {$row[$key]=($value==NULL) ? 'NULL' : $this->destDb->quote($value);}

            $sql.="(".implode(",", $row)."),";
        }
        $this->_queryTargetDb(substr($sql,0,-1));
    }

}

protected function _getData()
{
    $this->stGetRows->execute() or $this->_reportError(var_dump($this->stGetRows->errorInfo()));
    return $this->stGetRows->fetchAll(PDO::FETCH_ASSOC);
}

protected function _queryTargetDb($query)
{
    print($query."\n");
    $this->destDb->query($query) or $this->_reportError(var_dump($this->destDb->errorInfo()));
}



protected function _reportError($popis, $faktura=null)
{
//    $this->db->query('INSERT INTO UpominkyChyby (faktura, datum, popis) VALUES ('.$this->db->quote($faktura).', CURRENT_TIMESTAMP, '.$this->db->quote($popis).')');
    print(date('Ymd') . " chyba: $popis (faktura:$faktura)\n");
}

//function __destruct(){}

} // Class PrimaUpominky
//?>