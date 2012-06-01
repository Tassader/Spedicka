IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[AgregovanyZiskPreprava]'))
    DROP VIEW [AgregovanyZiskPreprava]
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[ZiskPrepravaRozdily]'))
    DROP VIEW [ZiskPrepravaRozdily]
GO

CREATE VIEW [AgregovanyZiskPreprava]
AS
    SELECT Stredisko, Smer, Rok, M�s�c, Z�kazn�k, Obchodn�k, [Druh p�epravy], Disponent, Zastupce, Dopravce, Sum(Naklad) AS Naklad, Sum(Vynos) AS Vynos, Sum(Zisk) AS Zisk
    FROM ZiskPreprava
    GROUP BY Stredisko, Smer, Rok, M�s�c, Z�kazn�k, Obchodn�k, [Druh p�epravy], Disponent, Zastupce, Dopravce
GO


CREATE VIEW [ZiskPrepravaRozdily]
AS
SELECT ISNULL(c.Stredisko,p.Stredisko) AS Stredisko, ISNULL(c.Smer,p.Smer) AS Smer, 
ISNULL(c.Rok,(CASE p.M�s�c when 12 then p.Rok+1 else p.Rok end)) AS Rok, 
ISNULL(c.M�s�c,(CASE p.M�s�c when 12 then 1 else p.M�s�c+1 end)) AS M�s�c, 
ISNULL(c.Z�kazn�k,p.Z�kazn�k) AS Z�kazn�k, ISNULL(c.Obchodn�k,p.Obchodn�k) AS Obchodn�k, ISNULL(c.[Druh p�epravy],p.[Druh p�epravy]) AS [Druh p�epravy], ISNULL(c.Disponent,p.Disponent) AS Disponent, ISNULL(c.Zastupce,p.Zastupce) AS Zastupce, ISNULL(c.Dopravce,p.Dopravce) AS Dopravce, ISNULL(c.Naklad,0)-ISNULL(p.Naklad,0) AS Naklad, ISNULL(c.Vynos,0)-ISNULL(p.Vynos,0) AS Vynos, ISNULL(c.Zisk,0)-ISNULL(p.Zisk,0) AS Zisk
FROM AgregovanyZiskPreprava c FULL JOIN AgregovanyZiskPreprava p ON
c.Stredisko=p.Stredisko AND
c.Smer=p.Smer AND
  (
  (c.Rok=p.Rok AND c.M�s�c=p.M�s�c+1)
  OR
  (c.Rok=p.Rok+1 AND c.M�s�c=1 AND p.M�s�c=12)
) AND
c.Z�kazn�k=p.Z�kazn�k AND
c.Obchodn�k=p.Obchodn�k AND
c.[Druh p�epravy]=p.[Druh p�epravy] AND
c.Disponent=p.Disponent AND
c.Zastupce=p.Zastupce AND
c.Dopravce=p.Dopravce
GO