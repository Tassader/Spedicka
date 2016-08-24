ALTER TABLE Pojisteni ADD Odeslano bit NOT NULL DEFAULT 0;

ALTER TABLE PojisteniSil ADD Odeslano bit NOT NULL DEFAULT 0;

/*
Update dbo.Pojisteni SET Odeslano = 0 WHERE Odeslano=1;

UPDATE po
SET Odeslano = 1
FROM
dbo.Pojisteni po
join dbo.Preprava p on p.ID=po.Preprava
WHERE YEAR(DATEADD(month, 1, p.ETS)) = YEAR(CURRENT_TIMESTAMP) 
AND MONTH(DATEADD(month, 1, p.ETS)) = MONTH(CURRENT_TIMESTAMP) 

*/

/*
Update dbo.Pojisteni SET Odeslano = 0 WHERE Odeslano=1;

UPDATE po
SET Odeslano = CURRENT_TIMESTAMP
FROM
dbo.Pojisteni po
join dbo.Preprava p on p.ID=po.Preprava
WHERE YEAR(DATEADD(month, 3, p.ETS)) = YEAR(CURRENT_TIMESTAMP) 
AND MONTH(DATEADD(month, 3, p.ETS)) = MONTH(CURRENT_TIMESTAMP) 

UPDATE po
SET Odeslano = CURRENT_TIMESTAMP
FROM
dbo.PojisteniSil po
join dbo.PrepravaSil p on p.ID=po.Preprava
WHERE YEAR(DATEADD(month, 3, p.ETS)) = YEAR(CURRENT_TIMESTAMP) 
AND MONTH(DATEADD(month, 3, p.ETS)) = MONTH(CURRENT_TIMESTAMP) 

*/

ALTER TABLE Pojisteni ADD Odeslano bit NOT NULL DEFAULT 0;

ALTER TABLE PojisteniSil ADD Odeslano bit NOT NULL DEFAULT 0;

ALTER TABLE Pojisteni DROP COLUMN Odeslano ;
ALTER TABLE PojisteniSil DROP COLUMN Odeslano;
GO

ALTER TABLE Pojisteni ADD Odeslano date NULL;

ALTER TABLE PojisteniSil ADD Odeslano date NULL;

ALTER TABLE Pojisteni ADD IndivHlasenka bit NOT NULL CONSTRAINT DF_Pojisteni_IndivHlasenka DEFAULT 0;

ALTER TABLE PojisteniSil ADD IndivHlasenka bit NOT NULL CONSTRAINT DF_PojisteniSil_IndivHlasenka DEFAULT 0;
