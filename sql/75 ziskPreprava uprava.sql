-- nejdriv musim dat naklady/vynosyKC schemabind a az pak muzu toto :-(

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
                      p.POL, /*pols.ZkracenyNazevC*/ NULL AS POLStat, p.POD, /*pods.ZkracenyNazevC*/NULL AS PODStat, ag.Firma as Agent, 
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
                      dbo.Firma AS ag ON ag.ID = p.Agent LEFT OUTER JOIN 
                      /*dbo.Misto AS polm ON polm.Misto = p.POL LEFT OUTER JOIN 
                      dbo.Stat AS pols ON pols.N3 LIKE polm.Stat LEFT OUTER JOIN 
                      dbo.Misto AS podm ON podm.Misto = p.POD LEFT OUTER JOIN 
                      dbo.Stat AS pods ON pods.N3 LIKE podm.Stat LEFT OUTER JOIN*/ 
                      dbo.Firma AS dop ON dop.ID = p.Dopravce
WHERE HAS_PERMS_BY_NAME('Preprava', 'OBJECT', 'SELECT')=1
GO

ALTER VIEW [ZiskPreprava_Road] -- WITH SCHEMABINDING
AS
SELECT     p.ID, 'Hradec' AS Stredisko, p.Cislo AS Přeprava, p.Smer, NakladySumy.Naklad, VynosySumy.Vynos, 
                      p.POL, /*pols.ZkracenyNazevC*/ NULL AS POLStat, p.POD, /*pods.ZkracenyNazevC*/NULL AS PODStat, ag.Firma as Agent, 
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
                      dbo.Firma AS ag ON ag.ID = p.Agent LEFT OUTER JOIN 
                      /*dbo.Misto AS polm ON polm.Misto = p.POL LEFT OUTER JOIN 
                      dbo.Stat AS pols ON pols.N3 LIKE polm.Stat LEFT OUTER JOIN 
                      dbo.Misto AS podm ON podm.Misto = p.POD LEFT OUTER JOIN 
                      dbo.Stat AS pods ON pods.N3 LIKE podm.Stat LEFT OUTER JOIN*/ 
                      dbo.Firma AS dop ON dop.ID = p.Dopravce
WHERE HAS_PERMS_BY_NAME('PrepravaSil', 'OBJECT', 'SELECT')=1
GO


ALTER VIEW [ZiskPreprava_AT] -- WITH SCHEMABINDING
AS
SELECT     p.ID, 'AM Trucking' AS Stredisko, p.Cislo AS Přeprava, p.Smer, NakladySumy.Naklad, VynosySumy.Vynos, 
                      p.POL, /*pols.ZkracenyNazevC*/ NULL AS POLStat, p.POD, /*pods.ZkracenyNazevC*/NULL AS PODStat, ag.Firma as Agent, 
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
                      dbo.Firma AS ag ON ag.ID = p.Agent LEFT OUTER JOIN 
                      /*dbo.Misto AS polm ON polm.Misto = p.POL LEFT OUTER JOIN 
                      dbo.Stat AS pols ON pols.N3 LIKE polm.Stat LEFT OUTER JOIN 
                      dbo.Misto AS podm ON podm.Misto = p.POD LEFT OUTER JOIN 
                      dbo.Stat AS pods ON pods.N3 LIKE podm.Stat LEFT OUTER JOIN*/ 
                      dbo.Firma AS dop ON dop.ID = p.Dopravce
WHERE HAS_PERMS_BY_NAME('PrepravaAT', 'OBJECT', 'SELECT')=1
GO

-- je nutný alter i tady i když to neměnim protože se to jinak nezaktualizuje a nové sloupce tam nebudou :-o
ALTER VIEW [ZiskPreprava] -- WITh SCHEMABINDING
AS
    SELECT * FROM ZiskPreprava_Overseas
    UNION ALL
    SELECT * FROM ZiskPreprava_Road
    UNION ALL
    SELECT * FROM ZiskPreprava_AT
GO



