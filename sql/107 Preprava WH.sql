SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[PrepravaFullWH]'))
    DROP VIEW [PrepravaFullWH]
GO
-- IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[ZiskPreprava]'))
--     DROP VIEW [ZiskPreprava]
-- GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[ZiskPreprava_WH]'))
    DROP VIEW [ZiskPreprava_WH]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[AgregovaneNakladyWH]'))
    DROP VIEW [AgregovaneNakladyWH]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[AgregovaneVynosyWH]'))
    DROP VIEW [AgregovaneVynosyWH]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[NakladyKCWH]'))
    DROP VIEW [NakladyKCWH]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[VynosyKCWH]'))
    DROP VIEW [VynosyKCWH]
GO
-- IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[AgregovaneKontejnery]'))
--     DROP VIEW [AgregovaneKontejneryWH]
-- GO


IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[VynosyWH]') AND type in (N'U'))
    DROP TABLE [VynosyWH]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[NakladyWH]') AND type in (N'U'))
    DROP TABLE [NakladyWH]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[KontejnerWH]') AND type in (N'U'))
    DROP TABLE [KontejnerWH]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PrepravaWH]') AND type in (N'U'))
    DROP TABLE [PrepravaWH]
GO









CREATE TABLE [PrepravaWH](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Cislo] [nvarchar](243) NULL,
	[Rok] [int] NOT NULL CONSTRAINT [DF_PrepravaWH_Rok]  DEFAULT (YEAR(CURRENT_TIMESTAMP)),
	[Mesic] [int] NULL,
	[Tyden] [smallint] NULL,
	[Zakaznik] [int] NOT NULL,
	[ZakaznickaRef] [nvarchar](255) NULL,
	[Obchodnik] [int] NOT NULL,
	[Disponent] [int] NULL,
	[StavPrepravy] [int] NOT NULL CONSTRAINT [DF_PrepravaWH_StavPrepravy]  DEFAULT ((1)),
	[Fakturovano] [bit] NOT NULL CONSTRAINT [DF_PrepravaWH_Fakturovano]  DEFAULT ((0)),
	[Poznamka] [nvarchar](50) NULL,
	[Odesilatel] [int] NULL,
	[Prijemce] [int] NULL,
	[Smer] [nvarchar](10) NULL,
	[Incoterms] [int] NULL,
	[IncotermsMisto] [nvarchar](255) NULL,
	[DruhPrepravy] [int] NOT NULL,
	[Zasilka] [nvarchar](50) NULL,
	[POL] [nvarchar](50) NULL,
	[ETS] [datetime] NULL,
	[POD] [nvarchar](50) NULL,
	[ETA] [datetime] NULL,
	[MBLt] [nvarchar](255) NULL,
	[MAWB] [nvarchar](255) NULL,
	[Kontakt] [nvarchar](100) NULL,
	[upsize_ts] [timestamp] NULL,
	[KurzEUR] [real] NULL,
	[KurzUSD] [real] NULL,
	[Dopravce] [int] NULL,
	[SmluvniCena] [nvarchar](255) NULL,
	[MimoEU] [bit] NOT NULL CONSTRAINT [DF_PrepravaWH_MimoEU]  DEFAULT ((1)),
	[Carrier] [int] NULL,
	[Agent] [int] NULL,
	[Lod] [nvarchar](127) NULL,
	[ReleaseRef] [nvarchar](127) NULL,
	[PopisZbozi] [nvarchar](255) NULL,
	[CelniOdbaveni] [int] NULL,
	[CelniOdbaveniKontakt] [int] NULL,
	[CelniOdbaveniPoznamka] [nvarchar](255) NULL,
	[CelniUrad] [smallint] NULL,
	[DropOff] [int] NULL,
	[Stock] [nvarchar](127) NULL,
	[POLTerminal] [smallint] NULL,
	[PODTerminal] [smallint] NULL,
	[ClosingTimeDatum] [datetime] NULL,
	[ClosingTimeCas] [nvarchar](127) NULL,
	[ReleaseTimeDatum] [datetime] NULL,
	[ReleaseTimeCas] [nvarchar](127) NULL,
	[HScode] [varchar](255) NULL,
	[Oncarriageby] [int] NULL,
	[KListOdeslany] [bit] NOT NULL CONSTRAINT [DF_PrepravaWH_KListOdeslany]  DEFAULT ((0)),

    Zasilka_20DC smallint SPARSE NULL,
    Zasilka_40DC smallint SPARSE NULL,
    Zasilka_40HC smallint SPARSE NULL,
    Zasilka_45HC smallint SPARSE NULL,
    Zasilka_CBM decimal(9,2) NULL,
    Zasilka_GrossWeight decimal(9,2) NULL,
    Zasilka_VolumeWeight decimal(9,2) NULL,
    Zasilka_LDM decimal(9,2) NULL,

    AgentKontakt int NULL
 CONSTRAINT [PK_PrepravaWH] PRIMARY KEY CLUSTERED ([ID] ASC)
) ON [PRIMARY]
GO

-- CREATE NONCLUSTERED INDEX [FirmaPrepravaWH] ON [PrepravaWH] ([Zakaznik] ASC)
CREATE NONCLUSTERED INDEX [IX_PrepravaWH_ZakaznickaRef] ON [PrepravaWH] ([ZakaznickaRef] ASC)
-- CREATE NONCLUSTERED INDEX [OdesilatelID] ON [PrepravaWH] ([Odesilatel] ASC)
-- CREATE NONCLUSTERED INDEX [PrijemceID] ON [PrepravaWH] ([Prijemce] ASC)
CREATE NONCLUSTERED INDEX [IX_PrepravaWH_Cislo] ON [PrepravaWH] ([Cislo] ASC)
GO

CREATE TABLE [KontejnerWH](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Preprava] [int] NOT NULL,
	[TypKontejneru] [int] NOT NULL,
	[Kontejner] [nvarchar](255) NULL,
	[DruhKusu] [int] NULL,
	[PocetKusu] [int] NULL,
	[GrossWeight] [decimal](18, 2) NULL DEFAULT ((0)),
	[VolumeWeight] [decimal](18, 2) NULL DEFAULT ((0)),
	[LDM] [decimal](18, 2) NULL DEFAULT ((0)),
	[CBM] [decimal](18, 2) NULL DEFAULT ((0)),
	[DatumCasNakladky] [datetime] NULL,
	[AdresaNakladky] [int] NULL,
	[KontaktNakl] [int] NULL,
	[Vykladka] [int] NULL,
	[KontaktVykl] [int] NULL,
	[DatumCasVykladky] [datetime] NULL,
	[upsize_ts] [timestamp] NULL,
	[CasNakladky] [nvarchar](50) NULL,
	[CasVykladky] [nvarchar](50) NULL,
	[NakladkaPoznamka] [nvarchar](150) NULL,
	[VykladkaPoznamka] [nvarchar](150) NULL,
	[Plomba] [nvarchar](255) NULL,
	[Zobrazit] [bit] NOT NULL CONSTRAINT [DF_KontejnerWH_Zobrazit]  DEFAULT ((1)),
 CONSTRAINT [PK_KontejnerWH] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)
) ON [PRIMARY]
GO

CREATE CLUSTERED INDEX [IX_KontejnerWH_Preprava] ON [KontejnerWH] ([Preprava] ASC)

CREATE NONCLUSTERED INDEX [IX_KontejnerWH_Vykladka] ON [KontejnerWH] ([Vykladka] ASC)

CREATE NONCLUSTERED INDEX [IX_KontejnerWH_AdresaNakladky] ON [KontejnerWH] ([AdresaNakladky] ASC)
GO

CREATE TABLE [NakladyWH](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Dodavatel] [int] NOT NULL,
	[Sluzba] [int] NOT NULL,
	[NakladyJednotka] [real] NOT NULL CONSTRAINT [DF_NakladyWH_NakladyJednotka]  DEFAULT ((0)),
	[Mena] [nvarchar](10) NOT NULL,
	[Mnozstvi] [real] NOT NULL CONSTRAINT [DF_NakladyWH_Mnozstvi]  DEFAULT ((0)),
	[Preprava] [int] NOT NULL,
	[FakturaPrijata] [bit] NOT NULL CONSTRAINT [DF_NakladyWH_Faktura]  DEFAULT ((0)),
	[upsize_ts] [timestamp] NULL,
	[Castka]  AS ([NakladyJednotka]*[Mnozstvi]),
 CONSTRAINT [PK_NakladyWH] PRIMARY KEY NONCLUSTERED ([ID] ASC)
) ON [PRIMARY]
GO

CREATE CLUSTERED INDEX [IX_NakladyWH_Preprava] ON [NakladyWH] ([Preprava] ASC)

-- CREATE NONCLUSTERED INDEX [IX_NakladyWH_Dodavatel] ON [NakladyWH] ([Dodavatel] ASC)

-- CREATE NONCLUSTERED INDEX [IX_NakladyWH_Sluzba] ON [NakladyWH] ([Sluzba] ASC)
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [PrepravaWHOnInsert] 
   ON  [PrepravaWH] 
   --INSTEAD OF INSERT
   FOR INSERT
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here

	-- BEGIN TRAN
	-- INSERT INTO PrepravaWH WITH (updlock) SELECT * FROM inserted
	-- COMMIT
	-- 
	UPDATE PrepravaWH SET 
        Cislo=CAST(YEAR(GETDATE()) AS VARCHAR) + '-WH' + 
            Right('000' + 
                CAST((SELECT ISNULL(MAX(CAST(RIGHT(P.Cislo, LEN(P.Cislo)-7)AS smallint)),0)+1 FROM PrepravaWH P WHERE LEFT(P.Cislo, 4) like YEAR(GETDATE())) AS VARCHAR),                4)
  		,KurzEUR = EUR -- ISNULL(EUR, 25)
		,KurzUSD = USD -- ISNULL(USD, 20)
    FROM inserted
        LEFT JOIN Kurzy ON Kurzy.Rok = inserted.Rok AND Kurzy.Tyden = inserted.Tyden
    WHERE PrepravaWH.ID=inserted.ID;


END
GO

CREATE TABLE [VynosyWH](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Odberatel] [int] NOT NULL,
	[Sluzba] [int] NOT NULL,
	[VynosyJednotka] [real] NOT NULL CONSTRAINT [DF_VynosyWH_VynosyJednotka]  DEFAULT ((0)),
	[Mena] [nvarchar](10) NOT NULL,
	[Mnozstvi] [real] NOT NULL CONSTRAINT [DF_VynosyWH_Mnozstvi]  DEFAULT ((0)),
	[Preprava] [int] NOT NULL,
	[upsize_ts] [timestamp] NULL,
	[Castka]  AS ([VynosyJednotka]*[Mnozstvi]),
	[Zobrazit] [bit] NOT NULL CONSTRAINT [DF_VynosyWH_Zobrazit]  DEFAULT ((1)),
 CONSTRAINT [PK_VynosyWH] PRIMARY KEY NONCLUSTERED ([ID] ASC)
) ON [PRIMARY]
GO

CREATE CLUSTERED INDEX [IX_VynosyWH_Preprava] ON [VynosyWH] ([Preprava] ASC)
GO


/****** Object:  Script Date: 12/22/2011 09:55:45 ******/
/*
CREATE VIEW [AgregovaneKontejnery]
AS
SELECT  Preprava, SUM(GrossWeight) AS GrossWeight, SUM(VolumeWeight) AS VolumeWeight, SUM(LDM) AS LDM, SUM(CBM) AS CBM, MIN(DatumCasNakladky) 
               AS DatumCasNakladky, MIN(AdresaNakladky) AS AdresaNakladky, MIN(Vykladka) AS Vykladka
FROM     KontejnerWH
GROUP BY Preprava
GO*/

-- VynosyKCWH
CREATE VIEW [VynosyKCWH] 
AS
SELECT *,
    Castka*Kurz AS CastkaKC, 
    Castka*Kurz/KurzUSD AS CastkaUSD, 
    Castka*Kurz/KurzEUR AS CastkaEUR
FROM 
    (SELECT CASE Mena 
        WHEN 'Kč' THEN 1
        WHEN 'USD' THEN KurzUSD
        WHEN 'EUR' THEN KurzEUR
        END AS Kurz,
    Naklady.*, Rok, Mesic, Disponent, KurzEUR, KurzUSD
    FROM VynosyWH AS Naklady INNER JOIN PrepravaWH AS Preprava ON Naklady.Preprava = Preprava.ID) AS Naklady
GO

-- nejprve NakladyWH/VynosyKCWH
-- NakladyKCWH
CREATE VIEW [NakladyKCWH] -- WITH SCHEMABINDING 
AS
SELECT *,
    Castka*Kurz AS CastkaKC, 
    Castka*Kurz/KurzUSD AS CastkaUSD, 
    Castka*Kurz/KurzEUR AS CastkaEUR
FROM 
    (SELECT CASE Mena 
        WHEN 'Kč' THEN 1
        WHEN 'USD' THEN KurzUSD
        WHEN 'EUR' THEN KurzEUR
        END AS Kurz,
    Naklady.*, Rok, Mesic, Disponent, KurzEUR, KurzUSD
    FROM NakladyWH AS Naklady INNER JOIN PrepravaWH ON Naklady.Preprava = PrepravaWH.ID) AS Naklady
GO

CREATE VIEW [AgregovaneVynosyWH]
AS
SELECT 
	Preprava,
    SUM(CastkaKC) AS CastkaKC
--    ,SUM(n.CastkaUSD) AS NakladyUSD
--    ,SUM(n.CastkaEUR) AS NakladyEUR
FROM VynosyKCWH
GROUP BY Preprava
GO
/* 
-- indexy (?) - view musi byt with schemabinding - a pak v nem ale nesmi byt *
CREATE UNIQUE CLUSTERED INDEX [IX_NakladyKCWH_Preprava] ON [NakladyKCWH] 
    ( [Preprava] ASC ) ON [PRIMARY]
CREATE UNIQUE CLUSTERED INDEX [IX_NakladyKCWHSil_Preprava] ON [NakladyKCWHSil] 
    ( [Preprava] ASC ) ON [PRIMARY]
CREATE UNIQUE CLUSTERED INDEX [IX_VynosyKCWH_Preprava] ON [VynosyKCWH] 
    ( [Preprava] ASC ) ON [PRIMARY]
CREATE UNIQUE CLUSTERED INDEX [IX_VynosyKCWHSil_Preprava] ON [VynosyKCWHSil] 
    ( [Preprava] ASC ) ON [PRIMARY]
GO

-- */

 -- nutno delat z NakladyKCWH a VynosyKCWH :-/
CREATE VIEW [AgregovaneNakladyWH]
AS
SELECT 
	Preprava,
    SUM(CastkaKC) AS CastkaKC
--    ,SUM(n.CastkaUSD) AS NakladyUSD
--    ,SUM(n.CastkaEUR) AS NakladyEUR
FROM NakladyKCWH
GROUP BY Preprava
GO

CREATE TRIGGER [NakladyKCWH_D] ON [NakladyKCWH]
INSTEAD OF DELETE
AS
set nocount on
    DELETE FROM NakladyWH WHERE ID IN (SELECT ID FROM DELETED);
GO

CREATE TRIGGER [VynosyKCWH_D] ON [VynosyKCWH]
INSTEAD OF DELETE
AS
set nocount on
    DELETE FROM VynosyWH WHERE ID IN (SELECT ID FROM DELETED);
GO

CREATE VIEW [ZiskPreprava_WH] -- WITH SCHEMABINDING
AS
SELECT     p.ID, 'Warehousing' AS Stredisko, p.Cislo AS Přeprava, p.Smer, NakladySumy.Naklad, VynosySumy.Vynos, 
                      p.POL, /*pols.ZkracenyNazevC*/ NULL AS POLStat, p.POD, /*pods.ZkracenyNazevC*/NULL AS PODStat, ag.Firma as Agent, 
                      VynosySumy.Vynos - COALESCE(NakladySumy.Naklad,0) AS Zisk, p.Rok, p.Mesic AS Měsíc, dbo.Firma.Firma AS Zákazník, dbo.Obchodnik.Jmeno AS Obchodník, 
                      dbo.DruhPrepravy.DruhPrepravy AS [Druh přepravy], d.Jmeno AS Disponent, z.Jmeno AS Zastupce, dop.Firma AS Dopravce

                    ,Zasilka_20DC,Zasilka_40DC,Zasilka_40HC,Zasilka_45HC,Zasilka_CBM,Zasilka_GrossWeight,Zasilka_VolumeWeight,Zasilka_LDM,
                    CASE WHEN Zasilka_VolumeWeight > ISNULL(Zasilka_GrossWeight,0) THEN Zasilka_VolumeWeight ELSE Zasilka_GrossWeight END AS Zasilka_CHWeight
FROM         dbo.PrepravaWH AS p LEFT OUTER JOIN
                          (SELECT     Preprava, SUM(CastkaKC) AS Naklad
                            FROM          dbo.NakladyKCWH
                            GROUP BY Preprava) AS NakladySumy ON p.ID = NakladySumy.Preprava LEFT OUTER JOIN
                          (SELECT     Preprava, SUM(CastkaKC) AS Vynos
                            FROM          dbo.VynosyKCWH
                            GROUP BY Preprava) AS VynosySumy ON p.ID = VynosySumy.Preprava INNER JOIN
                      dbo.Obchodnik ON dbo.Obchodnik.ID = p.Obchodnik INNER JOIN
                      dbo.DruhPrepravy ON dbo.DruhPrepravy.ID = p.DruhPrepravy LEFT OUTER JOIN
                      dbo.Firma ON dbo.Firma.ID = p.Zakaznik LEFT OUTER JOIN
                      dbo.Obchodnik AS d ON d.ID = p.Disponent LEFT OUTER JOIN
                      dbo.Obchodnik AS z ON z.ID = dbo.Firma.Prodejce LEFT OUTER JOIN
                      dbo.Firma AS ag ON ag.ID = p.Agent LEFT OUTER JOIN 
                      dbo.Firma AS dop ON dop.ID = p.Dopravce
WHERE HAS_PERMS_BY_NAME('PrepravaWH', 'OBJECT', 'SELECT')=1
GO

ALTER VIEW [ZiskPreprava] -- WITh SCHEMABINDING
AS
    SELECT * FROM ZiskPreprava_Overseas
    UNION ALL
    SELECT * FROM ZiskPreprava_Road
    UNION ALL
    SELECT * FROM ZiskPreprava_AT
    UNION ALL
    SELECT * FROM ZiskPreprava_WH
GO

CREATE VIEW [PrepravaFullWH]
AS
-- PrepravaFullWH:
SELECT p.*, an.CastkaKC AS NakladyKC, av.CastkaKC AS VynosyKC, av.CastkaKC-ISNULL(an.CastkaKC,0) AS ZiskKC, DuplicitniZakRef, DatumCasVykladky,
    Stav2=CASE 
        WHEN CURRENT_TIMESTAMP < ETS THEN 'Před odesláním'
        WHEN CURRENT_TIMESTAMP < ETA THEN 'Na cestě'
        WHEN CURRENT_TIMESTAMP < DatumCasVykladky THEN 'Na doručení'
        WHEN CURRENT_TIMESTAMP >= DatumCasVykladky THEN 'Doručena'
    END
FROM PrepravaWH AS p
-- AgregovaneKontejnery (pouze potrebne)
LEFT JOIN (
SELECT  
    Preprava, 
    MAX(DatumCasVykladky) AS DatumCasVykladky 
FROM KontejnerWH
GROUP BY Preprava) AS ak ON ak.Preprava = p.ID 

LEFT JOIN AgregovaneNakladyWH AS an ON an.Preprava = p.ID 
LEFT JOIN AgregovaneVynosyWH AS av ON av.Preprava = p.ID
-- duplicity ZakRef
LEFT JOIN (
    SELECT 1 AS DuplicitniZakRef, ZakaznickaRef FROM PrepravaWH WHERE ZakaznickaRef IS NOT NULL GROUP BY ZakaznickaRef HAVING COUNT(*)>1
    ) AS zr ON zr.ZakaznickaRef=p.ZakaznickaRef
GO



ALTER TABLE [KontejnerWH]  WITH CHECK ADD  CONSTRAINT [FK_KontejnerWH_AdresaNakladky] FOREIGN KEY([AdresaNakladky])
REFERENCES [Firma] ([ID])
GO
ALTER TABLE [KontejnerWH]  WITH CHECK ADD  CONSTRAINT [FK_KontejnerWH_KontaktNakl] FOREIGN KEY([KontaktNakl])
REFERENCES [Kontakt] ([ID])
GO
ALTER TABLE [KontejnerWH]  WITH CHECK ADD  CONSTRAINT [FK_KontejnerWH_KontaktVykl] FOREIGN KEY([KontaktVykl])
REFERENCES [Kontakt] ([ID])
GO
ALTER TABLE [KontejnerWH]  WITH CHECK ADD  CONSTRAINT [FK_KontejnerWH_Vykladka] FOREIGN KEY([Vykladka])
REFERENCES [Firma] ([ID])
GO

ALTER TABLE [KontejnerWH]  WITH CHECK ADD  CONSTRAINT [FK_KontejnerWH_DruhKusu] FOREIGN KEY([DruhKusu])
REFERENCES [DruhKusu] ([ID])
GO
ALTER TABLE [KontejnerWH]  WITH CHECK ADD  CONSTRAINT [FK_KontejnerWH_Preprava] FOREIGN KEY([Preprava])
REFERENCES [PrepravaWH] ([ID])
GO
ALTER TABLE [KontejnerWH]  WITH CHECK ADD  CONSTRAINT [FK_KontejnerWH_TypKontejneru] FOREIGN KEY([TypKontejneru])
REFERENCES [TypKontejneru] ([ID])
GO
ALTER TABLE [NakladyWH]  WITH CHECK ADD  CONSTRAINT [FK_NakladyWH_Dodavatel] FOREIGN KEY([Dodavatel])
REFERENCES [Firma] ([ID])
GO
ALTER TABLE [NakladyWH]  WITH CHECK ADD  CONSTRAINT [FK_NakladyWH_Preprava] FOREIGN KEY([Preprava])
REFERENCES [PrepravaWH] ([ID])
GO
ALTER TABLE [NakladyWH]  WITH CHECK ADD  CONSTRAINT [FK_NakladyWH_Sluzba] FOREIGN KEY([Sluzba])
REFERENCES [Sluzba] ([ID])
GO
ALTER TABLE [PrepravaWH]  WITH CHECK ADD  CONSTRAINT [FK_PrepravaWH_Carrier] FOREIGN KEY([Carrier])
REFERENCES [Firma] ([ID])
GO
ALTER TABLE [PrepravaWH]  WITH CHECK ADD  CONSTRAINT [FK_PrepravaWH_CelniOdbaveni] FOREIGN KEY([CelniOdbaveni])
REFERENCES [Firma] ([ID])
GO
ALTER TABLE [PrepravaWH]  WITH CHECK ADD  CONSTRAINT [FK_PrepravaWH_CelniOdbaveniKontakt] FOREIGN KEY([CelniOdbaveniKontakt])
REFERENCES [Kontakt] ([ID])
GO
ALTER TABLE [PrepravaWH]  WITH CHECK ADD  CONSTRAINT [FK_PrepravaWH_CelniUrad] FOREIGN KEY([CelniUrad])
REFERENCES [CelniUrad] ([ID])
GO
ALTER TABLE [PrepravaWH]  WITH CHECK ADD  CONSTRAINT [FK_PrepravaWH_Agent] FOREIGN KEY([Agent])
REFERENCES [Firma] ([ID])
GO
ALTER TABLE [PrepravaWH]  WITH CHECK ADD  CONSTRAINT [FK_PrepravaWH_DropOff] FOREIGN KEY([DropOff])
REFERENCES [Misto] ([ID])
GO
ALTER TABLE [PrepravaWH]  WITH CHECK ADD  CONSTRAINT [FK_PrepravaWH_Odesilatel] FOREIGN KEY([Odesilatel])
REFERENCES [Firma] ([ID])
GO
ALTER TABLE [PrepravaWH]  WITH CHECK ADD  CONSTRAINT [FK_PrepravaWH_Oncarriageby] FOREIGN KEY([Oncarriageby])
REFERENCES [Firma] ([ID])
GO
ALTER TABLE [PrepravaWH]  WITH CHECK ADD  CONSTRAINT [FK_PrepravaWH_PODTerminal] FOREIGN KEY([PODTerminal])
REFERENCES [Terminal] ([ID])
GO
ALTER TABLE [PrepravaWH]  WITH CHECK ADD  CONSTRAINT [FK_PrepravaWH_POLTerminal] FOREIGN KEY([POLTerminal])
REFERENCES [Terminal] ([ID])
GO
ALTER TABLE [PrepravaWH]  WITH CHECK ADD  CONSTRAINT [FK_PrepravaWH_Prijemce] FOREIGN KEY([Prijemce])
REFERENCES [Firma] ([ID])
GO
ALTER TABLE [PrepravaWH]  WITH CHECK ADD  CONSTRAINT [FK_PrepravaWH_Zakaznik] FOREIGN KEY([Zakaznik])
REFERENCES [Firma] ([ID])
GO
ALTER TABLE [PrepravaWH]  WITH CHECK ADD  CONSTRAINT [FK_PrepravaWH_Dopravce] FOREIGN KEY([Dopravce])
REFERENCES [Firma] ([ID])
GO
ALTER TABLE [PrepravaWH]  WITH CHECK ADD  CONSTRAINT [FK_PrepravaWH_StavPrepravy] FOREIGN KEY([StavPrepravy])
REFERENCES [StavPrepravy] ([ID])
GO
ALTER TABLE [PrepravaWH]  WITH CHECK ADD  CONSTRAINT [FK_PrepravaWH_Obchodnik] FOREIGN KEY([Obchodnik])
REFERENCES [Obchodnik] ([ID])
GO
ALTER TABLE [PrepravaWH]  WITH CHECK ADD  CONSTRAINT [FK_PrepravaWH_DruhPrepravy] FOREIGN KEY([DruhPrepravy])
REFERENCES [DruhPrepravy] ([ID])
GO
ALTER TABLE [PrepravaWH]  WITH CHECK ADD  CONSTRAINT [FK_PrepravaWH_Incoterms] FOREIGN KEY([Incoterms])
REFERENCES [Incoterms] ([ID])
GO
ALTER TABLE [PrepravaWH]  WITH CHECK ADD  CONSTRAINT [FK_PrepravaWH_Disponent] FOREIGN KEY([Disponent])
REFERENCES [Obchodnik] ([ID])
GO



ALTER TABLE [VynosyWH]  WITH CHECK ADD  CONSTRAINT [FK_VynosyWH_Odberatel] FOREIGN KEY([Odberatel])
REFERENCES [Firma] ([ID])
GO
ALTER TABLE [VynosyWH]  WITH CHECK ADD  CONSTRAINT [FK_VynosyWH_Sluzba] FOREIGN KEY([Sluzba])
REFERENCES [Sluzba] ([ID])
GO
ALTER TABLE [VynosyWH]  WITH CHECK ADD  CONSTRAINT [FK_VynosyWH_Preprava] FOREIGN KEY([Preprava])
REFERENCES [PrepravaWH] ([ID])
GO




/*
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON KontejnerWH TO prima_WH;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON NakladyWH TO prima_WH;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON PrepravaWH TO prima_WH;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON VynosyWH TO prima_WH;
-- views:
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON AgregovaneNakladyWH TO prima_WH;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON AgregovaneVynosyWH TO prima_WH;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON NakladyKCWH TO prima_WH;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON PrepravaFullWH TO prima_WH;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON VynosyKCWH TO prima_WH;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON ZiskPreprava_WH TO prima_WH;


*/

/*

DECLARE @sql varchar(MAX)
SET @sql = ''
SELECT @sql = @sql + 'DENY UPDATE on OBJECT::[' + SCHEMA_NAME(schema_id) + '].[' + name + '] TO user
GO
' from sys.objects where type = 'u'
EXEC (@sql)

*/

-- db_datareader=SELECT
-- db_datawriter=SELECT, DELETE, INSERT, UPDATE