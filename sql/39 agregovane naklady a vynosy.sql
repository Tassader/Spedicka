IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[NakladyKC]'))
    DROP VIEW [NakladyKC];
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[NakladyKCSil]'))
    DROP VIEW [NakladyKCSil];
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[VynosyKC]'))
    DROP VIEW [VynosyKC];
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[VynosyKCSil]'))
    DROP VIEW [VynosyKCSil];
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[AgregovaneVynosy]'))
    DROP VIEW [AgregovaneVynosy];
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[AgregovaneNaklady]'))
    DROP VIEW [AgregovaneNaklady];
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[AgregovaneVynosySil]'))
    DROP VIEW [AgregovaneVynosySil];
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[AgregovaneNakladySil]'))
    DROP VIEW [AgregovaneNakladySil];
GO

-- nejprve naklady/vynosyKC
-- NakladyKC
CREATE VIEW [NakladyKC] -- WITH SCHEMABINDING 
AS
SELECT *,
    Castka*Kurz AS CastkaKC, 
    Castka*Kurz/KurzUSD AS CastkaUSD, 
    Castka*Kurz/KurzEUR AS CastkaEUR
FROM 
    (SELECT CASE Mena 
        WHEN 'Kč' THEN 1
        WHEN 'USD' THEN KurzUSD
        WHEN 'EUR' THEN KurzEUR
        END AS Kurz,
    Naklady.*, Rok, Mesic, Disponent, KurzEUR, KurzUSD
    FROM Naklady INNER JOIN Preprava ON Naklady.Preprava = Preprava.ID) AS Naklady
GO

-- NakladyKCSilnicni
CREATE VIEW [NakladyKCSil] 
AS
SELECT *,
    Castka*Kurz AS CastkaKC, 
    Castka*Kurz/KurzUSD AS CastkaUSD, 
    Castka*Kurz/KurzEUR AS CastkaEUR
FROM 
    (SELECT CASE Mena 
        WHEN 'Kč' THEN 1
        WHEN 'USD' THEN KurzUSD
        WHEN 'EUR' THEN KurzEUR
        END AS Kurz,
    Naklady.*, Rok, Mesic, Disponent, KurzEUR, KurzUSD
    FROM NakladySil AS Naklady INNER JOIN PrepravaSil AS Preprava ON Naklady.Preprava = Preprava.ID) AS Naklady
GO

-- VynosyKC
CREATE VIEW [VynosyKC] 
AS
SELECT *,
    Castka*Kurz AS CastkaKC, 
    Castka*Kurz/KurzUSD AS CastkaUSD, 
    Castka*Kurz/KurzEUR AS CastkaEUR
FROM 
    (SELECT CASE Mena 
        WHEN 'Kč' THEN 1
        WHEN 'USD' THEN KurzUSD
        WHEN 'EUR' THEN KurzEUR
        END AS Kurz,
    Naklady.*, Rok, Mesic, Disponent, KurzEUR, KurzUSD
    FROM Vynosy AS Naklady INNER JOIN Preprava AS Preprava ON Naklady.Preprava = Preprava.ID) AS Naklady
GO

-- VynosyKCSilnicni
CREATE VIEW [VynosyKCSil] 
AS
SELECT *,
    Castka*Kurz AS CastkaKC, 
    Castka*Kurz/KurzUSD AS CastkaUSD, 
    Castka*Kurz/KurzEUR AS CastkaEUR
FROM 
    (SELECT CASE Mena 
        WHEN 'Kč' THEN 1
        WHEN 'USD' THEN KurzUSD
        WHEN 'EUR' THEN KurzEUR
        END AS Kurz,
    Naklady.*, Rok, Mesic, Disponent, KurzEUR, KurzUSD
    FROM VynosySil AS Naklady INNER JOIN PrepravaSil AS Preprava ON Naklady.Preprava = Preprava.ID) AS Naklady
GO

/* 
-- indexy (?) - view musi byt with schemabinding - a pak v nem ale nesmi byt *
CREATE UNIQUE CLUSTERED INDEX [IX_NakladyKC_Preprava] ON [NakladyKC] 
    ( [Preprava] ASC ) ON [PRIMARY]
CREATE UNIQUE CLUSTERED INDEX [IX_NakladyKCSil_Preprava] ON [NakladyKCSil] 
    ( [Preprava] ASC ) ON [PRIMARY]
CREATE UNIQUE CLUSTERED INDEX [IX_VynosyKC_Preprava] ON [VynosyKC] 
    ( [Preprava] ASC ) ON [PRIMARY]
CREATE UNIQUE CLUSTERED INDEX [IX_VynosyKCSil_Preprava] ON [VynosyKCSil] 
    ( [Preprava] ASC ) ON [PRIMARY]
GO

-- */

 -- nutno delat z NakladyKC a VynosyKC :-/
CREATE VIEW [AgregovaneNaklady]
AS
SELECT 
	Preprava,
    SUM(CastkaKC) AS CastkaKC
--    ,SUM(n.CastkaUSD) AS NakladyUSD
--    ,SUM(n.CastkaEUR) AS NakladyEUR
FROM NakladyKC
GROUP BY Preprava
GO

CREATE VIEW [AgregovaneVynosy]
AS
SELECT 
	Preprava,
    SUM(CastkaKC) AS CastkaKC
--    ,SUM(n.CastkaUSD) AS NakladyUSD
--    ,SUM(n.CastkaEUR) AS NakladyEUR
FROM VynosyKC
GROUP BY Preprava
GO

CREATE VIEW [AgregovaneNakladySil]
AS
SELECT 
	Preprava,
    SUM(CastkaKC) AS CastkaKC
--    ,SUM(n.CastkaUSD) AS NakladyUSD
--    ,SUM(n.CastkaEUR) AS NakladyEUR
FROM NakladyKCSil
GROUP BY Preprava
GO

CREATE VIEW [AgregovaneVynosySil]
AS
SELECT 
	Preprava,
    SUM(CastkaKC) AS CastkaKC
--    ,SUM(n.CastkaUSD) AS NakladyUSD
--    ,SUM(n.CastkaEUR) AS NakladyEUR
FROM VynosyKCSil
GROUP BY Preprava
GO

-- */