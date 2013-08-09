IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[PrepravaFullSil]'))
    DROP VIEW [PrepravaFullSil]
GO

CREATE VIEW [PrepravaFullSil]
AS
-- PrepravaSilnicniFull:
SELECT p.*, ak.GrossWeight, ak.DatumCasNakladky, ak.AdresaNakladky, ak.Vykladka,  ak.NMesto, ak.VMesto, /*nak.Mesto AS NMesto, vyk.Mesto AS VMesto, */nakStat.ZkracenyNazevC AS NStat, vykStat.ZkracenyNazevC as VStat, an.CastkaKC AS NakladyKC, av.CastkaKC AS VynosyKC, av.CastkaKC-ISNULL(an.CastkaKC,0) AS ZiskKC, DuplicitniZakRef
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
    MIN(AdresaNakladky) AS AdresaNakladky, -- TODO mozna netreba?
    MIN(Vykladka) AS Vykladka, -- TODO mozna netreba?
    MIN(MestoNakl) AS NMesto, -- TODO FIXME mesto muze byt jine - misto MIN dat subquery kde TOP1 order by neco
    MIN(MestoVykl) AS VMesto  -- TODO FIXME mesto muze byt jine
FROM KontejnerSil
GROUP BY Preprava) AS ak ON ak.Preprava = p.ID 

LEFT JOIN Firma AS nak ON nak.ID=ak.AdresaNakladky 
LEFT JOIN Firma AS vyk ON vyk.ID=ak.Vykladka 

LEFT JOIN AgregovaneNakladySil AS an ON an.Preprava = p.ID 
LEFT JOIN AgregovaneVynosySil AS av ON av.Preprava = p.ID

LEFT JOIN Stat AS nakStat ON nakStat.N3=nak.Stat 
LEFT JOIN Stat AS vykStat ON vykStat.N3=vyk.Stat 

-- Duplicity ZakRef
LEFT JOIN (
    SELECT 1 AS DuplicitniZakRef, ZakaznickaRef FROM PrepravaSil WHERE ZakaznickaRef IS NOT NULL GROUP BY ZakaznickaRef HAVING COUNT(*)>1
    ) AS zr ON zr.ZakaznickaRef=p.ZakaznickaRef
GO

-- alternativa k agregovanymkontejnerum
/*(SELECT * FROM ( SELECT
    Preprava, 
    SUM(GrossWeight) OVER(PARTITION BY Preprava) AS GrossWeight, 
    SUM(VolumeWeight) OVER(PARTITION BY Preprava) AS VolumeWeight, 
    SUM(LDM) OVER(PARTITION BY Preprava) AS LDM, 
    SUM(CBM) OVER(PARTITION BY Preprava) AS CBM, 
    DatumCasNakladky AS DatumCasNakladky, 
    AdresaNakladky AS AdresaNakladky, 
    Vykladka AS Vykladka,
    ROW_NUMBER() OVER(PARTITION BY Preprava ORDER BY DatumCasNakladky ASC) as RowNum
FROM     KontejnerSil) ks
WHERE RowNum=1)

nebo

With ks as
( SELECT
    Preprava, 
    SUM(GrossWeight) OVER(PARTITION BY Preprava) AS GrossWeight, 
    SUM(VolumeWeight) OVER(PARTITION BY Preprava) AS VolumeWeight, 
    SUM(LDM) OVER(PARTITION BY Preprava) AS LDM, 
    SUM(CBM) OVER(PARTITION BY Preprava) AS CBM, 
    DatumCasNakladky AS DatumCasNakladky, 
    AdresaNakladky AS AdresaNakladky, 
    Vykladka AS Vykladka,
    ROW_NUMBER() OVER(PARTITION BY Preprava ORDER BY DatumCasNakladky ASC) as RowNum
	FROM     KontejnerSil)
SELECT * FROM ks
WHERE RowNum=1
*/
