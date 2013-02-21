/*
ALTER TABLE Kontejner ADD MestoNakl nvarchar(50);
ALTER TABLE Kontejner ADD PSCNakl varchar(20);
ALTER TABLE Kontejner ADD MestoVykl nvarchar(50);
ALTER TABLE Kontejner ADD PSCVykl varchar(20);
GO
UPDATE k SET k.MestoNakl=f.Mesto, k.PSCNakl=f.PSC FROM Kontejner k join Firma f ON f.ID=k.AdresaNakladky;
UPDATE k SET k.MestoVykl=f.Mesto, k.PSCVykl=f.PSC FROM Kontejner k join Firma f ON f.ID=k.Vykladka;
*/
ALTER TABLE KontejnerSil ADD MestoNakl nvarchar(50);
ALTER TABLE KontejnerSil ADD PSCNakl varchar(20);
ALTER TABLE KontejnerSil ADD MestoVykl nvarchar(50);
ALTER TABLE KontejnerSil ADD PSCVykl varchar(20);
GO
UPDATE k SET k.MestoNakl=f.Mesto, k.PSCNakl=f.PSC FROM KontejnerSil k join Firma f ON f.ID=k.AdresaNakladky WHERE k.MestoNakl IS NULL AND k.PSCNakl IS NULL;
UPDATE k SET k.MestoVykl=f.Mesto, k.PSCVykl=f.PSC FROM KontejnerSil k join Firma f ON f.ID=k.Vykladka WHERE k.MestoVykl IS NULL AND k.PSCVykl IS NULL;
/*
ALTER TABLE KontejnerAT ADD MestoNakl nvarchar(50);
ALTER TABLE KontejnerAT ADD PSCNakl varchar(20);
ALTER TABLE KontejnerAT ADD MestoVykl nvarchar(50);
ALTER TABLE KontejnerAT ADD PSCVykl varchar(20);
GO
UPDATE k SET k.MestoNakl=f.Mesto, k.PSCNakl=f.PSC FROM KontejnerAT k join Firma f ON f.ID=k.AdresaNakladky;
UPDATE k SET k.MestoVykl=f.Mesto, k.PSCVykl=f.PSC FROM KontejnerAT k join Firma f ON f.ID=k.Vykladka;
*/

---------------------
ALTER VIEW [PrepravaFullSil] -- WITH SCHEMABINDING
AS
-- PrepravaSilnicniFull:
SELECT p.*, ak.GrossWeight, ak.DatumCasNakladky, ak.AdresaNakladky, ak.Vykladka, ak.NMesto, ak.VMesto, /*nak.Mesto AS NMesto, vyk.Mesto AS VMesto,*/ an.CastkaKC AS NakladyKC, av.CastkaKC AS VynosyKC, av.CastkaKC-ISNULL(an.CastkaKC,0) AS ZiskKC, DuplicitniZakRef
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
    MIN(Vykladka) AS Vykladka,
    MIN(MestoNakl) AS NMesto, 
    MIN(MestoVykl) AS VMesto 
FROM KontejnerSil
GROUP BY Preprava) AS ak ON ak.Preprava = p.ID 

/*LEFT JOIN Firma AS nak ON nak.ID=ak.AdresaNakladky 
LEFT JOIN Firma AS vyk ON vyk.ID=ak.Vykladka*/ 
LEFT JOIN AgregovaneNakladySil AS an ON an.Preprava = p.ID 
LEFT JOIN AgregovaneVynosySil AS av ON av.Preprava = p.ID
-- Duplicity ZakRef
LEFT JOIN (
    SELECT 1 AS DuplicitniZakRef, ZakaznickaRef FROM PrepravaSil WHERE ZakaznickaRef IS NOT NULL GROUP BY ZakaznickaRef HAVING COUNT(*)>1
    ) AS zr ON zr.ZakaznickaRef=p.ZakaznickaRef
GO
