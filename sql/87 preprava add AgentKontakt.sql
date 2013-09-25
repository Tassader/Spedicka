-- nutno "refreshnout" view PrepravaFull !!!!!

ALTER TABLE Preprava ADD AgentKontakt int NULL;
----------------------------------------------------------------
ALTER TABLE PrepravaSil ADD AgentKontakt int NULL;
----------------------------------------------------------------
ALTER TABLE PrepravaAT ADD AgentKontakt int NULL;
----------------------------------------------------------------
GO
ALTER TABLE Preprava WITH CHECK ADD CONSTRAINT FK_Preprava_AgentKontakt FOREIGN KEY ( AgentKontakt ) REFERENCES Kontakt ( ID ) -- ON DELETE SET NULL; 
ALTER TABLE PrepravaSil WITH CHECK ADD CONSTRAINT FK_PrepravaSil_AgentKontakt FOREIGN KEY ( AgentKontakt ) REFERENCES Kontakt ( ID ) -- ON DELETE SET NULL; 
ALTER TABLE PrepravaAT WITH CHECK ADD CONSTRAINT FK_PrepravaAT_AgentKontakt FOREIGN KEY ( AgentKontakt ) REFERENCES Kontakt ( ID ) -- ON DELETE SET NULL; 
GO

-----------------------------------------------------------------

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
