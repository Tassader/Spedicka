ALTER VIEW [PrepravaFullSil]
AS
-- PrepravaSilnicniFull:
SELECT p.*, ak.GrossWeight, ak.DatumCasNakladky, ak.AdresaNakladky, ak.Vykladka,  ak.NMesto, ak.VMesto, /*nak.Mesto AS NMesto, vyk.Mesto AS VMesto, */ ak.NPSC, ak.VPSC, nakStat.ZkracenyNazevC AS NStat, vykStat.ZkracenyNazevC as VStat, an.CastkaKC AS NakladyKC, av.CastkaKC AS VynosyKC, av.CastkaKC-ISNULL(an.CastkaKC,0) AS ZiskKC, DuplicitniZakRef
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
    MIN(MestoVykl) AS VMesto,  -- TODO FIXME mesto muze byt jine
    LEFT(MIN(PSCNakl),2) AS NPSC, -- TODO FIXME mesto muze byt jine - misto MIN dat subquery kde TOP1 order by neco
    LEFT(MIN(PSCVykl),2) AS VPSC  -- TODO FIXME mesto muze byt jine
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