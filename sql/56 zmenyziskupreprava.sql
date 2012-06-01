IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[AgregovanyZiskPreprava]'))
    DROP VIEW [AgregovanyZiskPreprava]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[ZiskPrepravaRozdily]'))
    DROP VIEW [ZiskPrepravaRozdily]
GO

CREATE VIEW [AgregovanyZiskPreprava]
AS
    SELECT Stredisko, Smer, Rok, Mìsíc, Zákazník, Obchodník, [Druh pøepravy], Disponent, Zastupce, Dopravce, Sum(Naklad) AS Naklad, Sum(Vynos) AS Vynos, Sum(Zisk) AS Zisk
    FROM ZiskPreprava
    GROUP BY Stredisko, Smer, Rok, Mìsíc, Zákazník, Obchodník, [Druh pøepravy], Disponent, Zastupce, Dopravce
GO


CREATE VIEW [ZiskPrepravaRozdily]
AS
SELECT ISNULL(c.Stredisko,p.Stredisko) AS Stredisko, ISNULL(c.Smer,p.Smer) AS Smer, 
ISNULL(c.Rok,(CASE p.Mìsíc when 12 then p.Rok+1 else p.Rok end)) AS Rok, 
ISNULL(c.Mìsíc,(CASE p.Mìsíc when 12 then 1 else p.Mìsíc+1 end)) AS Mìsíc, 
ISNULL(c.Zákazník,p.Zákazník) AS Zákazník, ISNULL(c.Obchodník,p.Obchodník) AS Obchodník, ISNULL(c.[Druh pøepravy],p.[Druh pøepravy]) AS [Druh pøepravy], ISNULL(c.Disponent,p.Disponent) AS Disponent, ISNULL(c.Zastupce,p.Zastupce) AS Zastupce, ISNULL(c.Dopravce,p.Dopravce) AS Dopravce, ISNULL(c.Naklad,0)-ISNULL(p.Naklad,0) AS Naklad, ISNULL(c.Vynos,0)-ISNULL(p.Vynos,0) AS Vynos, ISNULL(c.Zisk,0)-ISNULL(p.Zisk,0) AS Zisk
FROM AgregovanyZiskPreprava c FULL JOIN AgregovanyZiskPreprava p ON
c.Stredisko=p.Stredisko AND
c.Smer=p.Smer AND
  (
  (c.Rok=p.Rok AND c.Mìsíc=p.Mìsíc+1)
  OR
  (c.Rok=p.Rok+1 AND c.Mìsíc=1 AND p.Mìsíc=12)
) AND
c.Zákazník=p.Zákazník AND
c.Obchodník=p.Obchodník AND
c.[Druh pøepravy]=p.[Druh pøepravy] AND
c.Disponent=p.Disponent AND
c.Zastupce=p.Zastupce AND
c.Dopravce=p.Dopravce
GO