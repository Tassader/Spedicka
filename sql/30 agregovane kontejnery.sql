IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[AgregovaneKontejnery]'))
    DROP VIEW [AgregovaneKontejnery]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[AgregovaneKontejnerySil]'))
    DROP VIEW [AgregovaneKontejnerySil]
GO
/****** Object:  Script Date: 12/22/2011 09:55:45 ******/
CREATE VIEW [AgregovaneKontejnery]
AS
SELECT  
    Preprava, 
    CAST(SUM(GrossWeight) AS decimal(18, 2)) AS GrossWeight, 
    CAST(SUM(VolumeWeight) AS decimal(18, 2)) AS VolumeWeight, 
    CAST(SUM(LDM) AS decimal(18, 2)) AS LDM, 
    CAST(SUM(CBM) AS decimal(18, 2)) AS CBM, 
    MIN(DatumCasNakladky) AS DatumCasNakladky, 
    MIN(AdresaNakladky) AS AdresaNakladky, 
    MIN(Vykladka) AS Vykladka
FROM     Kontejner
GROUP BY Preprava
GO

CREATE VIEW [AgregovaneKontejnerySil]
AS
SELECT  
    Preprava, 
    CAST(SUM(GrossWeight) AS decimal(18, 2)) AS GrossWeight, 
    CAST(SUM(VolumeWeight) AS decimal(18, 2)) AS VolumeWeight, 
    CAST(SUM(LDM) AS decimal(18, 2)) AS LDM, 
    CAST(SUM(CBM) AS decimal(18, 2)) AS CBM, 
    MIN(DatumCasNakladky) AS DatumCasNakladky, 
    MIN(AdresaNakladky) AS AdresaNakladky, 
    MIN(Vykladka) AS Vykladka
FROM     KontejnerSil
GROUP BY Preprava
GO

/* - nutno delat z NakladyKC a VynosyKC :-/
CREATE VIEW [AgregovaneNakladyVynosy]
AS
SELECT
*/

/*CREATE VIEW [PrepravaFULL]  - na nic
AS
SELECT *
FROM Preprava INNER JOIN
               AgregovaneKontejnery ON Preprava.ID = AgregovaneKontejnery.Preprava
GO
*/

/*
-- daj se i indexy udelat
CREATE UNIQUE CLUSTERED INDEX [IX_AgregovaneKontejnerySil_Preprava] ON [AgregovaneKontejnerySil] 
(
	[Preprava] ASC
)WITH (STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
 
*/