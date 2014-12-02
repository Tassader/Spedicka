ALTER VIEW [PrepravaFullAT]
AS
-- PrepravaFullAT:
SELECT p.*, an.CastkaKC AS NakladyKC, av.CastkaKC AS VynosyKC, av.CastkaKC-ISNULL(an.CastkaKC,0) AS ZiskKC, DuplicitniZakRef, DatumCasVykladky,
    Stav2=CASE 
        WHEN CURRENT_TIMESTAMP < ETS THEN 'Před odesláním'
        WHEN CURRENT_TIMESTAMP < ETA THEN 'Na cestě'
        WHEN CURRENT_TIMESTAMP >= DatumCasVykladky THEN 'Doručena'
        ELSE 'Na doručení'
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
        WHEN CURRENT_TIMESTAMP >= DatumCasVykladky THEN 'Doručena'
        ELSE 'Na doručení'
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