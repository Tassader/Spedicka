-- nezapomenout pridat prava !!
/*
do prepravy na prvni list dopravce/spz auta/spz navesu/?kontakt na řidiče?

k nakl/vykl km naj/prazdne/plne/myto
*/
/* nejde dropovat constraint kdyz tam jeste neni .-/)
ALTER TABLE PrepravaSil DROP CONSTRAINT FK_PrepravaSil_Vozidlo;
ALTER TABLE CenaZaKm DROP CONSTRAINT FK_CenaZaKm_Vozidlo;
ALTER TABLE Vozidlo DROP CONSTRAINT FK_Vozidlo_TypMnozstvi;
GO*/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Vozidlo]') AND type in (N'U'))
    DROP TABLE [Vozidlo]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[CenaZaKm]') AND type in (N'U'))
    DROP TABLE [CenaZaKm]
GO
CREATE TABLE Vozidlo (
    ID int IDENTITY(1,1) NOT NULL CONSTRAINT PK_Vozidlo PRIMARY KEY CLUSTERED,
    Dopravce int NOT NULL,
    SPZ char(7) NOT NULL,
    SPZ2 varchar(100) NULL,
    Ridic varchar(100) NULL,
    /*Kontakt varchar(100) NULL,*/
    TypMnozstvi smallint NOT NULL,
    Poznamka varchar(255) NULL
)
GO

CREATE TABLE CenaZaKm (
    ID int IDENTITY(1,1) NOT NULL CONSTRAINT PK_CenaZaKm PRIMARY KEY CLUSTERED,
    Vozidlo int NOT NULL,
    PlatnostOd date NOT NULL,
    Najezd decimal(9,2) NOT NULL,
    Prazdne decimal(9,2) NOT NULL,
    Plne decimal(9,2) NOT NULL
)

ALTER TABLE Vozidlo WITH CHECK ADD CONSTRAINT FK_Vozidlo_TypMnozstvi FOREIGN KEY(TypMnozstvi)
REFERENCES TypMnozstvi (ID) -- ON DELETE SET NULL -- tak to je v pril/potenc

ALTER TABLE CenaZaKm WITH CHECK ADD CONSTRAINT FK_CenaZaKm_Vozidlo FOREIGN KEY(Vozidlo)
REFERENCES Vozidlo (ID) ON DELETE CASCADE
GO

-- SPZ je ve sloupci MBLt - bude to "SPZ2" a řidič v MAWB- s tim nevim co
ALTER TABLE PrepravaSil ADD Vozidlo int NULL;
--?? kontakt na řidiče?
ALTER TABLE PrepravaSil  WITH CHECK ADD CONSTRAINT FK_PrepravaSil_Vozidlo FOREIGN KEY(Vozidlo)
REFERENCES Vozidlo (ID)

----
ALTER TABLE KontejnerSil ADD NajezdKM decimal(9,2);
ALTER TABLE KontejnerSil ADD PrazdneKM decimal(9,2);
ALTER TABLE KontejnerSil ADD PlneKM decimal(9,2); 
ALTER TABLE KontejnerSil ADD Myto decimal(9,2);

ALTER TABLE KontejnerSil ADD NakladkaCasDo time(2);
ALTER TABLE KontejnerSil ADD NakladkaCasOd time(2);
ALTER TABLE KontejnerSil ADD VykladkaCasDo time(2);
ALTER TABLE KontejnerSil ADD VykladkaCasOd time(2);
--+ zmenit soucasne datum z datetime na date
---
/*
-- SPZ je ve sloupci MBLt - bude to "SPZ2" a řidič v MAWB- s tim nevim co
ALTER TABLE Preprava ADD Vozidlo int NULL;
--?? kontakt na řidiče?
ALTER TABLE Preprava  WITH CHECK ADD CONSTRAINT FK_Preprava_Vozidlo FOREIGN KEY(Vozidlo)
REFERENCES Vozidlo (ID)

ALTER TABLE Kontejner ADD NajezdKM decimal(9,2);
ALTER TABLE Kontejner ADD PrazdneKM decimal(9,2);
ALTER TABLE Kontejner ADD PlneKM decimal(9,2); 
ALTER TABLE Kontejner ADD Myto decimal(9,2);

ALTER TABLE Kontejner ADD NakladkaCasDo time(2);
ALTER TABLE Kontejner ADD NakladkaCasOd time(2);
ALTER TABLE Kontejner ADD VykladkaCasDo time(2);
ALTER TABLE Kontejner ADD VykladkaCasOd time(2);
--+ zmenit soucasne datum z datetime na date
---

-- SPZ je ve sloupci MBLt - bude to "SPZ2" a řidič v MAWB- s tim nevim co
ALTER TABLE PrepravaAT ADD Vozidlo int NULL;
--?? kontakt na řidiče?
ALTER TABLE PrepravaAT  WITH CHECK ADD CONSTRAINT FK_PrepravaAT_Vozidlo FOREIGN KEY(Vozidlo)
REFERENCES Vozidlo (ID)

ALTER TABLE KontejnerAT ADD NajezdKM decimal(9,2);
ALTER TABLE KontejnerAT ADD PrazdneKM decimal(9,2);
ALTER TABLE KontejnerAT ADD PlneKM decimal(9,2); 
ALTER TABLE KontejnerAT ADD Myto decimal(9,2);

ALTER TABLE KontejnerAT ADD NakladkaCasDo time(2);
ALTER TABLE KontejnerAT ADD NakladkaCasOd time(2);
ALTER TABLE KontejnerAT ADD VykladkaCasDo time(2);
ALTER TABLE KontejnerAT ADD VykladkaCasOd time(2);
--+ zmenit soucasne datum z datetime na date
---
*/
--nutny refresh pohledu, alespon propravaFull, viz "87 preprava add AgentKontakt.sql"


IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[VykonDopravceSil]'))
    DROP VIEW [VykonDopravceSil]
GO
CREATE VIEW VykonDopravceSil --WITH SCHEMABINDING 
AS
SELECT p.*, /*ak.GrossWeight,*/ ak.*, an.CastkaKC AS NakladyKC, av.CastkaKC AS VynosyKC,

(SELECT TOP 1 Najezd FROM CenaZaKm WHERE PlatnostOd < ak.DatumCasNakladky AND Vozidlo=p.Vozidlo) AS Najezd,
(SELECT TOP 1 Prazdne FROM CenaZaKm WHERE PlatnostOd < ak.DatumCasNakladky AND Vozidlo=p.Vozidlo) AS Prazdne,
(SELECT TOP 1 Plne FROM CenaZaKm WHERE PlatnostOd < ak.DatumCasNakladky AND Vozidlo=p.Vozidlo) AS Plne

FROM PrepravaSil AS p
-- AgregovaneKontejnerySil
LEFT JOIN (
SELECT  
    Preprava, 
    CAST(SUM(NajezdKM) AS decimal(19,2)) AS NajezdKM, -- puvodni je (9,2) ale sum to da na (38,2), Access zvladne max (19,2)
    CAST(SUM(PrazdneKM) AS decimal(19,2)) AS PrazdneKM,
    CAST(SUM(PlneKM) AS decimal(19,2)) AS PlneKM,
    CAST(SUM(Myto) AS decimal(19,2)) AS Myto,

    MIN(DatumCasNakladky) AS DatumCasNakladky, 
    MIN(MestoNakl) AS NMesto, -- TODO FIXME mesto muze byt jine - misto MIN dat subquery kde TOP1 order by neco
    MIN(MestoVykl) AS VMesto  -- TODO FIXME mesto muze byt jine
FROM KontejnerSil
GROUP BY Preprava) AS ak ON ak.Preprava = p.ID 

LEFT JOIN AgregovaneNakladySil AS an ON an.Preprava = p.ID 
LEFT JOIN AgregovaneVynosySil AS av ON av.Preprava = p.ID 
GO

GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON Vozidlo TO prima_spolecne;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON CenaZaKm TO prima_spolecne;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON VykonDopravceSil TO prima_road;
--TODO jeste pridat prava pro ty tabulky hore