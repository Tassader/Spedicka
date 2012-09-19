SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[ZiskPreprava_Overseas]'))
    DROP VIEW [ZiskPreprava_Overseas]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[ZiskPreprava_Road]'))
    DROP VIEW [ZiskPreprava_Road]
GO


CREATE VIEW [ZiskPreprava_Overseas] -- WITH SCHEMABINDING
AS
SELECT     p.ID, 'Praha' AS Stredisko, p.Cislo AS Pøeprava, p.Smer, NakladySumy.Naklad, VynosySumy.Vynos, 
                      VynosySumy.Vynos - COALESCE(NakladySumy.Naklad,0) AS Zisk, p.Rok, p.Mesic AS Mìsíc, dbo.Firma.Firma AS Zákazník, dbo.Obchodnik.Jmeno AS Obchodník, 
                      dbo.DruhPrepravy.DruhPrepravy AS [Druh pøepravy], d.Jmeno AS Disponent, z.Jmeno AS Zastupce, dop.Firma AS Dopravce
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

CREATE VIEW [ZiskPreprava_Road] -- WITH SCHEMABINDING
AS
SELECT     p.ID, 'Hradec' AS Stredisko, p.Cislo AS Pøeprava, p.Smer, NakladySumy.Naklad, VynosySumy.Vynos, 
                      VynosySumy.Vynos - COALESCE(NakladySumy.Naklad,0) AS Zisk, p.Rok, p.Mesic AS Mìsíc, dbo.Firma.Firma AS Zákazník, dbo.Obchodnik.Jmeno AS Obchodník, 
                      dbo.DruhPrepravy.DruhPrepravy AS [Druh pøepravy], d.Jmeno AS Disponent, z.Jmeno AS Zastupce, dop.Firma AS Dopravce
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

