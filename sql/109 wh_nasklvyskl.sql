ALTER TABLE PrepravaWH ADD TypDataOd smallint;
ALTER TABLE PrepravaWH ADD TypDataDo smallint;
GO
/*
CREATE TABLE [TypData](
	ID int IDENTITY(1,1) NOT NULL,
    TypDataCZ nvarchar(255) NOT NULL,
    TypDataEN nvarchar(255) NOT NULL,
 CONSTRAINT [PK_PrepravaWH] PRIMARY KEY CLUSTERED ([ID] ASC)
) ON [PRIMARY]
GO

INSERT INTO TypData (TypDataCZ, TypDataEN) VALUES
('Naskladnění','Warehouse IN'),
('Vyskladnění','Warehouse OUT'),
GO


ALTER TABLE [PrepravaWH]  WITH CHECK ADD  CONSTRAINT [FK_PrepravaWH_TypDataOd] FOREIGN KEY([TypDataOd])
REFERENCES [TypData] ([ID])
ALTER TABLE [PrepravaWH]  WITH CHECK ADD  CONSTRAINT [FK_PrepravaWH_TypDataDo] FOREIGN KEY([TypDataDo])
REFERENCES [TypData] ([ID])
*/

-- refresh views, just for sure
ALTER VIEW [PrepravaFullWH] -- WITH SCHEMABINDING 
AS
-- PrepravaFullWH:
SELECT p.*, an.CastkaKC AS NakladyKC, av.CastkaKC AS VynosyKC, av.CastkaKC-ISNULL(an.CastkaKC,0) AS ZiskKC, DuplicitniZakRef, DatumCasVykladky,
    Stav2=CASE 
        WHEN CURRENT_TIMESTAMP < ETS THEN 'Před odesláním'
        WHEN CURRENT_TIMESTAMP < ETA THEN 'Na cestě'
        WHEN CURRENT_TIMESTAMP < DatumCasVykladky THEN 'Na doručení'
        WHEN CURRENT_TIMESTAMP >= DatumCasVykladky THEN 'Doručena'
    END
FROM PrepravaWH AS p
-- AgregovaneKontejnery (pouze potrebne)
LEFT JOIN (
SELECT  
    Preprava, 
    MAX(DatumCasVykladky) AS DatumCasVykladky 
FROM KontejnerWH
GROUP BY Preprava) AS ak ON ak.Preprava = p.ID 

LEFT JOIN AgregovaneNakladyWH AS an ON an.Preprava = p.ID 
LEFT JOIN AgregovaneVynosyWH AS av ON av.Preprava = p.ID
-- duplicity ZakRef
LEFT JOIN (
    SELECT 1 AS DuplicitniZakRef, ZakaznickaRef FROM PrepravaWH WHERE ZakaznickaRef IS NOT NULL GROUP BY ZakaznickaRef HAVING COUNT(*)>1
    ) AS zr ON zr.ZakaznickaRef=p.ZakaznickaRef
GO

ALTER VIEW [ZiskPreprava_WH] -- WITH SCHEMABINDING
AS
SELECT     p.ID, 'Warehousing' AS Stredisko, p.Cislo AS Přeprava, p.Smer, NakladySumy.Naklad, VynosySumy.Vynos, 
                      p.POL, /*pols.ZkracenyNazevC*/ NULL AS POLStat, p.POD, /*pods.ZkracenyNazevC*/NULL AS PODStat, ag.Firma as Agent, 
                      VynosySumy.Vynos - COALESCE(NakladySumy.Naklad,0) AS Zisk, p.Rok, p.Mesic AS Měsíc, dbo.Firma.Firma AS Zákazník, dbo.Obchodnik.Jmeno AS Obchodník, 
                      dbo.DruhPrepravy.DruhPrepravy AS [Druh přepravy], d.Jmeno AS Disponent, z.Jmeno AS Zastupce, dop.Firma AS Dopravce

                    ,Zasilka_20DC,Zasilka_40DC,Zasilka_40HC,Zasilka_45HC,Zasilka_CBM,Zasilka_GrossWeight,Zasilka_VolumeWeight,Zasilka_LDM,
                    CASE WHEN Zasilka_VolumeWeight > ISNULL(Zasilka_GrossWeight,0) THEN Zasilka_VolumeWeight ELSE Zasilka_GrossWeight END AS Zasilka_CHWeight
FROM         dbo.PrepravaWH AS p LEFT OUTER JOIN
                          (SELECT     Preprava, SUM(CastkaKC) AS Naklad
                            FROM          dbo.NakladyKCWH
                            GROUP BY Preprava) AS NakladySumy ON p.ID = NakladySumy.Preprava LEFT OUTER JOIN
                          (SELECT     Preprava, SUM(CastkaKC) AS Vynos
                            FROM          dbo.VynosyKCWH
                            GROUP BY Preprava) AS VynosySumy ON p.ID = VynosySumy.Preprava INNER JOIN
                      dbo.Obchodnik ON dbo.Obchodnik.ID = p.Obchodnik INNER JOIN
                      dbo.DruhPrepravy ON dbo.DruhPrepravy.ID = p.DruhPrepravy LEFT OUTER JOIN
                      dbo.Firma ON dbo.Firma.ID = p.Zakaznik LEFT OUTER JOIN
                      dbo.Obchodnik AS d ON d.ID = p.Disponent LEFT OUTER JOIN
                      dbo.Obchodnik AS z ON z.ID = dbo.Firma.Prodejce LEFT OUTER JOIN
                      dbo.Firma AS ag ON ag.ID = p.Agent LEFT OUTER JOIN 
                      dbo.Firma AS dop ON dop.ID = p.Dopravce
WHERE HAS_PERMS_BY_NAME('PrepravaWH', 'OBJECT', 'SELECT')=1
GO