SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

/*
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[ZiskPreprava]'))
    DROP VIEW [ZiskPreprava]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[ZiskPreprava_Overseas]'))
    DROP VIEW [ZiskPreprava_Overseas]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[ZiskPreprava_Road]'))
    DROP VIEW [ZiskPreprava_Road]
GO
*/

ALTER VIEW [ZiskPreprava_Overseas] -- WITH SCHEMABINDING
AS
SELECT     p.ID, 'Praha' AS Stredisko, p.Cislo AS Přeprava, p.Smer, NakladySumy.Naklad, VynosySumy.Vynos, 
                      VynosySumy.Vynos - NakladySumy.Naklad AS Zisk, p.Rok, p.Mesic AS Měsíc, dbo.Firma.Firma AS Zákazník, dbo.Obchodnik.Jmeno AS Obchodník, 
                      dbo.DruhPrepravy.DruhPrepravy AS [Druh přepravy], d.Jmeno AS Disponent, z.Jmeno AS Zastupce, dop.Firma AS Dopravce

                    ,Zasilka_20DC,Zasilka_40DC,Zasilka_40HC,Zasilka_45HC,Zasilka_CBM,Zasilka_GrossWeight,Zasilka_VolumeWeight,Zasilka_LDM,
                    CASE WHEN Zasilka_VolumeWeight > ISNULL(Zasilka_GrossWeight,0) THEN Zasilka_VolumeWeight ELSE Zasilka_GrossWeight END AS Zasilka_CHWeight
FROM         dbo.Preprava AS p LEFT OUTER JOIN
                          (SELECT     Preprava, SUM(CastkaKC) AS Naklad
                            FROM          dbo.NakladyKC
                            GROUP BY Preprava) AS NakladySumy ON p.ID = NakladySumy.Preprava LEFT OUTER JOIN
                          (SELECT     Preprava, SUM(CastkaKC) AS Vynos
                            FROM          dbo.VynosyKC
                            GROUP BY Preprava) AS VynosySumy ON p.ID = VynosySumy.Preprava INNER JOIN
                      dbo.Obchodnik ON dbo.Obchodnik.ID = p.Obchodnik INNER JOIN
                      dbo.DruhPrepravy ON dbo.DruhPrepravy.ID = p.DruhPrepravy LEFT OUTER JOIN
                      dbo.Firma ON dbo.Firma.ID = p.Zakaznik LEFT OUTER JOIN
                      dbo.Obchodnik AS d ON d.ID = p.Disponent LEFT OUTER JOIN
                      dbo.Obchodnik AS z ON z.ID = dbo.Firma.Prodejce LEFT OUTER JOIN
                      dbo.Firma AS dop ON dop.ID = p.Dopravce
WHERE HAS_PERMS_BY_NAME('Preprava', 'OBJECT', 'SELECT')=1
GO

ALTER VIEW [ZiskPreprava_Road] -- WITH SCHEMABINDING
AS
SELECT     p.ID, 'Hradec' AS Stredisko, p.Cislo AS Přeprava, p.Smer, NakladySumy.Naklad, VynosySumy.Vynos, 
                      VynosySumy.Vynos - NakladySumy.Naklad AS Zisk, p.Rok, p.Mesic AS Měsíc, dbo.Firma.Firma AS Zákazník, dbo.Obchodnik.Jmeno AS Obchodník, 
                      dbo.DruhPrepravy.DruhPrepravy AS [Druh přepravy], d.Jmeno AS Disponent, z.Jmeno AS Zastupce, dop.Firma AS Dopravce

                    ,Zasilka_20DC,Zasilka_40DC,Zasilka_40HC,Zasilka_45HC,Zasilka_CBM,Zasilka_GrossWeight,Zasilka_VolumeWeight,Zasilka_LDM,
                    CASE WHEN Zasilka_VolumeWeight > ISNULL(Zasilka_GrossWeight,0) THEN Zasilka_VolumeWeight ELSE Zasilka_GrossWeight END AS Zasilka_CHWeight
FROM         dbo.PrepravaSil AS p LEFT OUTER JOIN
                          (SELECT     Preprava, SUM(CastkaKC) AS Naklad
                            FROM          dbo.NakladyKCSil
                            GROUP BY Preprava) AS NakladySumy ON p.ID = NakladySumy.Preprava LEFT OUTER JOIN
                          (SELECT     Preprava, SUM(CastkaKC) AS Vynos
                            FROM          dbo.VynosyKCSil
                            GROUP BY Preprava) AS VynosySumy ON p.ID = VynosySumy.Preprava INNER JOIN
                      dbo.Obchodnik ON dbo.Obchodnik.ID = p.Obchodnik INNER JOIN
                      dbo.DruhPrepravy ON dbo.DruhPrepravy.ID = p.DruhPrepravy LEFT OUTER JOIN
                      dbo.Firma ON dbo.Firma.ID = p.Zakaznik LEFT OUTER JOIN
                      dbo.Obchodnik AS d ON d.ID = p.Disponent LEFT OUTER JOIN
                      dbo.Obchodnik AS z ON z.ID = dbo.Firma.Prodejce LEFT OUTER JOIN
                      dbo.Firma AS dop ON dop.ID = p.Dopravce
WHERE HAS_PERMS_BY_NAME('PrepravaSil', 'OBJECT', 'SELECT')=1
GO


ALTER VIEW [ZiskPreprava_AT] -- WITH SCHEMABINDING
AS
SELECT     p.ID, 'AM Trucking' AS Stredisko, p.Cislo AS Přeprava, p.Smer, NakladySumy.Naklad, VynosySumy.Vynos, 
                      VynosySumy.Vynos - COALESCE(NakladySumy.Naklad,0) AS Zisk, p.Rok, p.Mesic AS Měsíc, dbo.Firma.Firma AS Zákazník, dbo.Obchodnik.Jmeno AS Obchodník, 
                      dbo.DruhPrepravy.DruhPrepravy AS [Druh přepravy], d.Jmeno AS Disponent, z.Jmeno AS Zastupce, dop.Firma AS Dopravce

                    ,Zasilka_20DC,Zasilka_40DC,Zasilka_40HC,Zasilka_45HC,Zasilka_CBM,Zasilka_GrossWeight,Zasilka_VolumeWeight,Zasilka_LDM,
                    CASE WHEN Zasilka_VolumeWeight > ISNULL(Zasilka_GrossWeight,0) THEN Zasilka_VolumeWeight ELSE Zasilka_GrossWeight END AS Zasilka_CHWeight
FROM         dbo.PrepravaAT AS p LEFT OUTER JOIN
                          (SELECT     Preprava, SUM(CastkaKC) AS Naklad
                            FROM          dbo.NakladyKCAT
                            GROUP BY Preprava) AS NakladySumy ON p.ID = NakladySumy.Preprava LEFT OUTER JOIN
                          (SELECT     Preprava, SUM(CastkaKC) AS Vynos
                            FROM          dbo.VynosyKCAT
                            GROUP BY Preprava) AS VynosySumy ON p.ID = VynosySumy.Preprava INNER JOIN
                      dbo.Obchodnik ON dbo.Obchodnik.ID = p.Obchodnik INNER JOIN
                      dbo.DruhPrepravy ON dbo.DruhPrepravy.ID = p.DruhPrepravy LEFT OUTER JOIN
                      dbo.Firma ON dbo.Firma.ID = p.Zakaznik LEFT OUTER JOIN
                      dbo.Obchodnik AS d ON d.ID = p.Disponent LEFT OUTER JOIN
                      dbo.Obchodnik AS z ON z.ID = dbo.Firma.Prodejce LEFT OUTER JOIN
                      dbo.Firma AS dop ON dop.ID = p.Dopravce
WHERE HAS_PERMS_BY_NAME('PrepravaAT', 'OBJECT', 'SELECT')=1
GO

/*
ALTER VIEW [ZiskPreprava] -- WITh SCHEMABINDING
AS
    SELECT * FROM ZiskPreprava_Overseas
    UNION ALL
    SELECT * FROM ZiskPreprava_Road
    UNION ALL
    SELECT * FROM ZiskPreprava_AT
GO

*/

-- je nutne upravit fsechno asi

ALTER VIEW [PrepravaFullAT]
AS
-- PrepravaFullAT:
SELECT p.*, an.CastkaKC AS NakladyKC, av.CastkaKC AS VynosyKC, av.CastkaKC-ISNULL(an.CastkaKC,0) AS ZiskKC, DuplicitniZakRef, DatumCasVykladky,
    Stav2=CASE 
        WHEN CURRENT_TIMESTAMP < ETS THEN 'Před odesláním'
        WHEN CURRENT_TIMESTAMP < ETA THEN 'Na cestě'
        WHEN CURRENT_TIMESTAMP < DatumCasVykladky THEN 'Na doručení'
        WHEN CURRENT_TIMESTAMP >= DatumCasVykladky THEN 'Doručena'
    END
FROM PrepravaAT AS p
-- AgregovaneKontejnery (pouze potrebne)
LEFT JOIN (
SELECT  
    Preprava, 
    MAX(DatumCasVykladky) AS DatumCasVykladky 
FROM KontejnerAT
GROUP BY Preprava) AS ak ON ak.Preprava = p.ID 

LEFT JOIN AgregovaneNakladyAT AS an ON an.Preprava = p.ID 
LEFT JOIN AgregovaneVynosyAT AS av ON av.Preprava = p.ID
-- duplicity ZakRef
LEFT JOIN (
    SELECT 1 AS DuplicitniZakRef, ZakaznickaRef FROM PrepravaAT WHERE ZakaznickaRef IS NOT NULL GROUP BY ZakaznickaRef HAVING COUNT(*)>1
    ) AS zr ON zr.ZakaznickaRef=p.ZakaznickaRef
GO

ALTER VIEW [PrepravaFull]
AS
-- PrepravaFull:
SELECT p.*, an.CastkaKC AS NakladyKC, av.CastkaKC AS VynosyKC, av.CastkaKC-ISNULL(an.CastkaKC,0) AS ZiskKC, DuplicitniZakRef, DatumCasVykladky,
    Stav2=CASE 
        WHEN CURRENT_TIMESTAMP < ETS THEN 'Před odesláním'
        WHEN CURRENT_TIMESTAMP < ETA THEN 'Na cestě'
        WHEN CURRENT_TIMESTAMP < DatumCasVykladky THEN 'Na doručení'
        WHEN CURRENT_TIMESTAMP >= DatumCasVykladky THEN 'Doručena'
    END
FROM Preprava AS p
-- AgregovaneKontejnery (pouze potrebne)
LEFT JOIN (
SELECT  
    Preprava, 
    MAX(DatumCasVykladky) AS DatumCasVykladky 
FROM Kontejner
GROUP BY Preprava) AS ak ON ak.Preprava = p.ID 

LEFT JOIN AgregovaneNaklady AS an ON an.Preprava = p.ID 
LEFT JOIN AgregovaneVynosy AS av ON av.Preprava = p.ID
-- duplicity ZakRef
LEFT JOIN (
    SELECT 1 AS DuplicitniZakRef, ZakaznickaRef FROM Preprava WHERE ZakaznickaRef IS NOT NULL GROUP BY ZakaznickaRef HAVING COUNT(*)>1
    ) AS zr ON zr.ZakaznickaRef=p.ZakaznickaRef
GO


ALTER VIEW [PrepravaFullSil]
AS
-- PrepravaSilnicniFull:
SELECT p.*, ak.GrossWeight, ak.DatumCasNakladky, ak.AdresaNakladky, ak.Vykladka, nak.Mesto AS NMesto, vyk.Mesto AS VMesto, an.CastkaKC AS NakladyKC, av.CastkaKC AS VynosyKC, av.CastkaKC-ISNULL(an.CastkaKC,0) AS ZiskKC, DuplicitniZakRef
FROM PrepravaSil AS p
-- AgregovaneKontejnerySil
LEFT JOIN (
SELECT  
    Preprava, 
    SUM(GrossWeight) AS GrossWeight, 
    SUM(VolumeWeight) AS VolumeWeight, 
    SUM(LDM) AS LDM, 
    SUM(CBM) AS CBM, 
    MIN(DatumCasNakladky) AS DatumCasNakladky, 
    MIN(AdresaNakladky) AS AdresaNakladky, 
    MIN(Vykladka) AS Vykladka
FROM KontejnerSil
GROUP BY Preprava) AS ak ON ak.Preprava = p.ID 

LEFT JOIN Firma AS nak ON nak.ID=ak.AdresaNakladky 
LEFT JOIN Firma AS vyk ON vyk.ID=ak.Vykladka 
LEFT JOIN AgregovaneNakladySil AS an ON an.Preprava = p.ID 
LEFT JOIN AgregovaneVynosySil AS av ON av.Preprava = p.ID
-- Duplicity ZakRef
LEFT JOIN (
    SELECT 1 AS DuplicitniZakRef, ZakaznickaRef FROM PrepravaSil WHERE ZakaznickaRef IS NOT NULL GROUP BY ZakaznickaRef HAVING COUNT(*)>1
    ) AS zr ON zr.ZakaznickaRef=p.ZakaznickaRef
GO
