IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[PrepravaFull]'))
    DROP VIEW [PrepravaFull]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[PrepravaFullSil]'))
    DROP VIEW [PrepravaFullSil]
GO
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Firma]') AND name = N'IX_Firma_ID_Mesto')
    DROP INDEX [IX_Firma_ID_Mesto] ON [Firma]
GO

CREATE VIEW [PrepravaFull]
AS
-- PrepravaFull:
SELECT p.*, an.CastkaKC AS NakladyKC, av.CastkaKC AS VynosyKC, av.CastkaKC-ISNULL(an.CastkaKC,0) AS ZiskKC, DuplicitniZakRef, DatumCasVykladky,
    Stav2=CASE 
        WHEN CURRENT_TIMESTAMP < ETS THEN 'Pøed odesláním'
        WHEN CURRENT_TIMESTAMP < ETA THEN 'Na cestì'
        WHEN CURRENT_TIMESTAMP < DatumCasVykladky THEN 'Na doruèení'
        WHEN CURRENT_TIMESTAMP >= DatumCasVykladky THEN 'Doruèena'
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


CREATE VIEW [PrepravaFullSil]
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


-- index pro JOIN v seznamu SIL preprav
CREATE NONCLUSTERED INDEX [IX_Firma_ID_Mesto] ON [dbo].[Firma] 
(
	[ID] ASC
)
INCLUDE ( [Mesto])

-- mozna pridat index na preprava.cislo? (podle nej se nejvic radi) ... overit v profileru

-- TODO - VIEW agregovaneKontejnery/Naklady/Vynosy(Sil) se možná mohou zrušit, protože nejsou jinde (asi) použity ... naklady/vynosy by e mohly vyuzit v pohledu Zisk* ale ted tam nejsou

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

