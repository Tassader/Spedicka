SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[PrepravaFullAT]'))
    DROP VIEW [PrepravaFullAT]
GO
-- IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[ZiskPreprava]'))
--     DROP VIEW [ZiskPreprava]
-- GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[ZiskPreprava_AT]'))
    DROP VIEW [ZiskPreprava_AT]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[AgregovaneNakladyAT]'))
    DROP VIEW [AgregovaneNakladyAT]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[AgregovaneVynosyAT]'))
    DROP VIEW [AgregovaneVynosyAT]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[NakladyKCAT]'))
    DROP VIEW [NakladyKCAT]
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[VynosyKCAT]'))
    DROP VIEW [VynosyKCAT]
GO
-- IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[AgregovaneKontejnery]'))
--     DROP VIEW [AgregovaneKontejneryAT]
-- GO


IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[VynosyAT]') AND type in (N'U'))
    DROP TABLE [VynosyAT]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[NakladyAT]') AND type in (N'U'))
    DROP TABLE [NakladyAT]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[KontejnerAT]') AND type in (N'U'))
    DROP TABLE [KontejnerAT]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[PrepravaAT]') AND type in (N'U'))
    DROP TABLE [PrepravaAT]
GO









CREATE TABLE [PrepravaAT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Cislo] [nvarchar](243) NULL,
	[Rok] [int] NOT NULL CONSTRAINT [DF_PrepravaAT_Rok]  DEFAULT (YEAR(CURRENT_TIMESTAMP)),
	[Mesic] [int] NULL,
	[Tyden] [smallint] NULL,
	[Zakaznik] [int] NOT NULL,
	[ZakaznickaRef] [nvarchar](255) NULL,
	[Obchodnik] [int] NOT NULL,
	[Disponent] [int] NULL,
	[StavPrepravy] [int] NOT NULL CONSTRAINT [DF_PrepravaAT_StavPrepravy]  DEFAULT ((1)),
	[Fakturovano] [bit] NOT NULL CONSTRAINT [DF_PrepravaAT_Fakturovano]  DEFAULT ((0)),
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
	[MimoEU] [bit] NOT NULL CONSTRAINT [DF_PrepravaAT_MimoEU]  DEFAULT ((1)),
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
	[KListOdeslany] [bit] NOT NULL CONSTRAINT [DF_PrepravaAT_KListOdeslany]  DEFAULT ((0)),
	[Preprava] [int] NULL, -- id prepravy ze ktere bylo toto vygenerovane
 CONSTRAINT [PK_PrepravaAT] PRIMARY KEY CLUSTERED ([ID] ASC)
) ON [PRIMARY]
GO

-- CREATE NONCLUSTERED INDEX [FirmaPrepravaAT] ON [PrepravaAT] ([Zakaznik] ASC)
CREATE NONCLUSTERED INDEX [IX_PrepravaAT_ZakaznickaRef] ON [PrepravaAT] ([ZakaznickaRef] ASC)
-- CREATE NONCLUSTERED INDEX [OdesilatelID] ON [PrepravaAT] ([Odesilatel] ASC)
-- CREATE NONCLUSTERED INDEX [PrijemceID] ON [PrepravaAT] ([Prijemce] ASC)
CREATE NONCLUSTERED INDEX [IX_PrepravaAT_Cislo] ON [PrepravaAT] ([Cislo] ASC)
GO

CREATE TABLE [KontejnerAT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Preprava] [int] NOT NULL,
	[TypKontejneru] [int] NOT NULL,
	[Kontejner] [nvarchar](255) NOT NULL,
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
	[Zobrazit] [bit] NOT NULL CONSTRAINT [DF_KontejnerAT_Zobrazit]  DEFAULT ((1)),
 CONSTRAINT [PK_KontejnerAT] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)
) ON [PRIMARY]
GO

CREATE CLUSTERED INDEX [IX_KontejnerAT_Preprava] ON [KontejnerAT] ([Preprava] ASC)

CREATE NONCLUSTERED INDEX [IX_KontejnerAT_Vykladka] ON [KontejnerAT] ([Vykladka] ASC)

CREATE NONCLUSTERED INDEX [IX_KontejnerAT_AdresaNakladky] ON [KontejnerAT] ([AdresaNakladky] ASC)
GO

CREATE TABLE [NakladyAT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Dodavatel] [int] NOT NULL,
	[Sluzba] [int] NOT NULL,
	[NakladyJednotka] [real] NOT NULL CONSTRAINT [DF_NakladyAT_NakladyJednotka]  DEFAULT ((0)),
	[Mena] [nvarchar](10) NOT NULL,
	[Mnozstvi] [real] NOT NULL CONSTRAINT [DF_NakladyAT_Mnozstvi]  DEFAULT ((0)),
	[Preprava] [int] NOT NULL,
	[FakturaPrijata] [bit] NOT NULL CONSTRAINT [DF_NakladyAT_Faktura]  DEFAULT ((0)),
	[upsize_ts] [timestamp] NULL,
	[Castka]  AS ([NakladyJednotka]*[Mnozstvi]),
 CONSTRAINT [PK_NakladyAT] PRIMARY KEY NONCLUSTERED ([ID] ASC)
) ON [PRIMARY]
GO

CREATE CLUSTERED INDEX [IX_NakladyAT_Preprava] ON [NakladyAT] ([Preprava] ASC)

-- CREATE NONCLUSTERED INDEX [IX_NakladyAT_Dodavatel] ON [NakladyAT] ([Dodavatel] ASC)

-- CREATE NONCLUSTERED INDEX [IX_NakladyAT_Sluzba] ON [NakladyAT] ([Sluzba] ASC)
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER [PrepravaATOnInsert] 
   ON  [PrepravaAT] 
   --INSTEAD OF INSERT
   FOR INSERT
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here

	-- BEGIN TRAN
	-- INSERT INTO PrepravaAT WITH (updlock) SELECT * FROM inserted
	-- COMMIT
	-- 
	UPDATE PrepravaAT SET 
        Cislo=CAST(YEAR(GETDATE()) AS VARCHAR) + '-' + 
            Right('000' + 
                CAST((SELECT ISNULL(MAX(CAST(RIGHT(P.Cislo, LEN(P.Cislo)-5)AS smallint)),0)+1 FROM PrepravaAT P WHERE LEFT(P.Cislo, 4) like YEAR(GETDATE())) AS VARCHAR),
                CASE When YEAR(GETDATE())=2011 THEN 3 ELSE 4 END)
  		,KurzEUR = EUR -- ISNULL(EUR, 25)
		,KurzUSD = USD -- ISNULL(USD, 20)
    FROM inserted
        LEFT JOIN Kurzy ON Kurzy.Rok = inserted.Rok AND Kurzy.Tyden = inserted.Tyden
    WHERE PrepravaAT.ID=inserted.ID;


END
GO

CREATE TABLE [VynosyAT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Odberatel] [int] NOT NULL,
	[Sluzba] [int] NOT NULL,
	[VynosyJednotka] [real] NOT NULL CONSTRAINT [DF_VynosyAT_VynosyJednotka]  DEFAULT ((0)),
	[Mena] [nvarchar](10) NOT NULL,
	[Mnozstvi] [real] NOT NULL CONSTRAINT [DF_VynosyAT_Mnozstvi]  DEFAULT ((0)),
	[Preprava] [int] NOT NULL,
	[upsize_ts] [timestamp] NULL,
	[Castka]  AS ([VynosyJednotka]*[Mnozstvi]),
	[Zobrazit] [bit] NOT NULL CONSTRAINT [DF_VynosyAT_Zobrazit]  DEFAULT ((1)),
 CONSTRAINT [PK_VynosyAT] PRIMARY KEY NONCLUSTERED ([ID] ASC)
) ON [PRIMARY]
GO

CREATE CLUSTERED INDEX [IX_VynosyAT_Preprava] ON [VynosyAT] ([Preprava] ASC)
GO


/****** Object:  Script Date: 12/22/2011 09:55:45 ******/
/*
CREATE VIEW [AgregovaneKontejnery]
AS
SELECT  Preprava, SUM(GrossWeight) AS GrossWeight, SUM(VolumeWeight) AS VolumeWeight, SUM(LDM) AS LDM, SUM(CBM) AS CBM, MIN(DatumCasNakladky) 
               AS DatumCasNakladky, MIN(AdresaNakladky) AS AdresaNakladky, MIN(Vykladka) AS Vykladka
FROM     KontejnerAT
GROUP BY Preprava
GO*/

-- VynosyKCAT
CREATE VIEW [VynosyKCAT] 
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
    FROM VynosyAT AS Naklady INNER JOIN PrepravaAT AS Preprava ON Naklady.Preprava = Preprava.ID) AS Naklady
GO

-- nejprve NakladyAT/VynosyKCAT
-- NakladyKCAT
CREATE VIEW [NakladyKCAT] -- WITH SCHEMABINDING 
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
    FROM NakladyAT AS Naklady INNER JOIN PrepravaAT ON Naklady.Preprava = PrepravaAT.ID) AS Naklady
GO

CREATE VIEW [AgregovaneVynosyAT]
AS
SELECT 
	Preprava,
    SUM(CastkaKC) AS CastkaKC
--    ,SUM(n.CastkaUSD) AS NakladyUSD
--    ,SUM(n.CastkaEUR) AS NakladyEUR
FROM VynosyKCAT
GROUP BY Preprava
GO
/* 
-- indexy (?) - view musi byt with schemabinding - a pak v nem ale nesmi byt *
CREATE UNIQUE CLUSTERED INDEX [IX_NakladyKCAT_Preprava] ON [NakladyKCAT] 
    ( [Preprava] ASC ) ON [PRIMARY]
CREATE UNIQUE CLUSTERED INDEX [IX_NakladyKCATSil_Preprava] ON [NakladyKCATSil] 
    ( [Preprava] ASC ) ON [PRIMARY]
CREATE UNIQUE CLUSTERED INDEX [IX_VynosyKCAT_Preprava] ON [VynosyKCAT] 
    ( [Preprava] ASC ) ON [PRIMARY]
CREATE UNIQUE CLUSTERED INDEX [IX_VynosyKCATSil_Preprava] ON [VynosyKCATSil] 
    ( [Preprava] ASC ) ON [PRIMARY]
GO

-- */

 -- nutno delat z NakladyKCAT a VynosyKCAT :-/
CREATE VIEW [AgregovaneNakladyAT]
AS
SELECT 
	Preprava,
    SUM(CastkaKC) AS CastkaKC
--    ,SUM(n.CastkaUSD) AS NakladyUSD
--    ,SUM(n.CastkaEUR) AS NakladyEUR
FROM NakladyKC
GROUP BY Preprava
GO

CREATE TRIGGER [NakladyKCAT_D] ON [NakladyKCAT]
INSTEAD OF DELETE
AS
set nocount on
    DELETE FROM NakladyAT WHERE ID IN (SELECT ID FROM DELETED);
GO

CREATE TRIGGER [VynosyKCAT_D] ON [VynosyKCAT]
INSTEAD OF DELETE
AS
set nocount on
    DELETE FROM VynosyAT WHERE ID IN (SELECT ID FROM DELETED);
GO

CREATE VIEW [ZiskPreprava_AT] -- WITH SCHEMABINDING
AS
SELECT     p.ID, 'AM Trucking' AS Stredisko, p.Cislo AS Přeprava, p.Smer, NakladySumy.Naklad, VynosySumy.Vynos, 
                      VynosySumy.Vynos - COALESCE(NakladySumy.Naklad,0) AS Zisk, p.Rok, p.Mesic AS Měsíc, dbo.Firma.Firma AS Zákazník, dbo.Obchodnik.Jmeno AS Obchodník, 
                      dbo.DruhPrepravy.DruhPrepravy AS [Druh přepravy], d.Jmeno AS Disponent, z.Jmeno AS Zastupce, dop.Firma AS Dopravce
FROM         dbo.PrepravaAT AS p LEFT OUTER JOIN
                          (SELECT     Preprava, SUM(CastkaKC) AS Naklad
                            FROM          dbo.NakladyKCAT
                            GROUP BY Preprava) AS NakladySumy ON p.ID = NakladySumy.Preprava LEFT OUTER JOIN
                          (SELECT     Preprava, SUM(CastkaKC) AS Vynos
                            FROM          dbo.VynosyKCAT
                            GROUP BY Preprava) AS VynosySumy ON p.ID = VynosySumy.Preprava INNER JOIN
                      dbo.Obchodnik ON dbo.Obchodnik.ID = p.Obchodnik INNER JOIN
                      dbo.DruhPrepravy ON dbo.DruhPrepravy.ID = p.DruhPrepravy LEFT OUTER JOIN
                      dbo.Firma ON dbo.Firma.ID = p.Zakaznik LEFT OUTER JOIN
                      dbo.Obchodnik AS d ON d.ID = p.Disponent LEFT OUTER JOIN
                      dbo.Obchodnik AS z ON z.ID = dbo.Firma.Prodejce LEFT OUTER JOIN
                      dbo.Firma AS dop ON dop.ID = p.Dopravce
WHERE HAS_PERMS_BY_NAME('PrepravaAT', 'OBJECT', 'SELECT')=1
GO

ALTER VIEW [ZiskPreprava] -- WITh SCHEMABINDING
AS
    SELECT * FROM ZiskPreprava_Overseas
    UNION ALL
    SELECT * FROM ZiskPreprava_Road
    UNION ALL
    SELECT * FROM ZiskPreprava_AT
GO

CREATE VIEW [PrepravaFullAT]
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



ALTER TABLE [KontejnerAT]  WITH CHECK ADD  CONSTRAINT [FK_KontejnerAT_AdresaNakladky] FOREIGN KEY([AdresaNakladky])
REFERENCES [Firma] ([ID])
GO
ALTER TABLE [KontejnerAT]  WITH CHECK ADD  CONSTRAINT [FK_KontejnerAT_KontaktNakl] FOREIGN KEY([KontaktNakl])
REFERENCES [Kontakt] ([ID])
GO
ALTER TABLE [KontejnerAT]  WITH CHECK ADD  CONSTRAINT [FK_KontejnerAT_KontaktVykl] FOREIGN KEY([KontaktVykl])
REFERENCES [Kontakt] ([ID])
GO
ALTER TABLE [KontejnerAT]  WITH CHECK ADD  CONSTRAINT [FK_KontejnerAT_Vykladka] FOREIGN KEY([Vykladka])
REFERENCES [Firma] ([ID])
GO

ALTER TABLE [KontejnerAT]  WITH CHECK ADD  CONSTRAINT [FK_KontejnerAT_DruhKusu] FOREIGN KEY([DruhKusu])
REFERENCES [DruhKusu] ([ID])
GO
ALTER TABLE [KontejnerAT]  WITH CHECK ADD  CONSTRAINT [FK_KontejnerAT_Preprava] FOREIGN KEY([Preprava])
REFERENCES [PrepravaAT] ([ID])
GO
ALTER TABLE [KontejnerAT]  WITH CHECK ADD  CONSTRAINT [FK_KontejnerAT_TypKontejneru] FOREIGN KEY([TypKontejneru])
REFERENCES [TypKontejneru] ([ID])
GO
ALTER TABLE [NakladyAT]  WITH CHECK ADD  CONSTRAINT [FK_NakladyAT_Dodavatel] FOREIGN KEY([Dodavatel])
REFERENCES [Firma] ([ID])
GO
ALTER TABLE [NakladyAT]  WITH CHECK ADD  CONSTRAINT [FK_NakladyAT_Preprava] FOREIGN KEY([Preprava])
REFERENCES [PrepravaAT] ([ID])
GO
ALTER TABLE [NakladyAT]  WITH CHECK ADD  CONSTRAINT [FK_NakladyAT_Sluzba] FOREIGN KEY([Sluzba])
REFERENCES [Sluzba] ([ID])
GO
ALTER TABLE [PrepravaAT]  WITH CHECK ADD  CONSTRAINT [FK_PrepravaAT_Carrier] FOREIGN KEY([Carrier])
REFERENCES [Firma] ([ID])
GO
ALTER TABLE [PrepravaAT]  WITH CHECK ADD  CONSTRAINT [FK_PrepravaAT_CelniOdbaveni] FOREIGN KEY([CelniOdbaveni])
REFERENCES [Firma] ([ID])
GO
ALTER TABLE [PrepravaAT]  WITH CHECK ADD  CONSTRAINT [FK_PrepravaAT_CelniOdbaveniKontakt] FOREIGN KEY([CelniOdbaveniKontakt])
REFERENCES [Kontakt] ([ID])
GO
ALTER TABLE [PrepravaAT]  WITH CHECK ADD  CONSTRAINT [FK_PrepravaAT_CelniUrad] FOREIGN KEY([CelniUrad])
REFERENCES [CelniUrad] ([ID])
GO
ALTER TABLE [PrepravaAT]  WITH CHECK ADD  CONSTRAINT [FK_PrepravaAT_Agent] FOREIGN KEY([Agent])
REFERENCES [Firma] ([ID])
GO
ALTER TABLE [PrepravaAT]  WITH CHECK ADD  CONSTRAINT [FK_PrepravaAT_DropOff] FOREIGN KEY([DropOff])
REFERENCES [Misto] ([ID])
GO
ALTER TABLE [PrepravaAT]  WITH CHECK ADD  CONSTRAINT [FK_PrepravaAT_Odesilatel] FOREIGN KEY([Odesilatel])
REFERENCES [Firma] ([ID])
GO
ALTER TABLE [PrepravaAT]  WITH CHECK ADD  CONSTRAINT [FK_PrepravaAT_Oncarriageby] FOREIGN KEY([Oncarriageby])
REFERENCES [Firma] ([ID])
GO
ALTER TABLE [PrepravaAT]  WITH CHECK ADD  CONSTRAINT [FK_PrepravaAT_PODTerminal] FOREIGN KEY([PODTerminal])
REFERENCES [Terminal] ([ID])
GO
ALTER TABLE [PrepravaAT]  WITH CHECK ADD  CONSTRAINT [FK_PrepravaAT_POLTerminal] FOREIGN KEY([POLTerminal])
REFERENCES [Terminal] ([ID])
GO
ALTER TABLE [PrepravaAT]  WITH CHECK ADD  CONSTRAINT [FK_PrepravaAT_Prijemce] FOREIGN KEY([Prijemce])
REFERENCES [Firma] ([ID])
GO
ALTER TABLE [PrepravaAT]  WITH CHECK ADD  CONSTRAINT [FK_PrepravaAT_Zakaznik] FOREIGN KEY([Zakaznik])
REFERENCES [Firma] ([ID])
GO
ALTER TABLE [PrepravaAT]  WITH CHECK ADD  CONSTRAINT [FK_PrepravaAT_Dopravce] FOREIGN KEY([Dopravce])
REFERENCES [Firma] ([ID])
GO
ALTER TABLE [PrepravaAT]  WITH CHECK ADD  CONSTRAINT [FK_PrepravaAT_StavPrepravy] FOREIGN KEY([StavPrepravy])
REFERENCES [StavPrepravy] ([ID])
GO
ALTER TABLE [PrepravaAT]  WITH CHECK ADD  CONSTRAINT [FK_PrepravaAT_Obchodnik] FOREIGN KEY([Obchodnik])
REFERENCES [Obchodnik] ([ID])
GO
ALTER TABLE [PrepravaAT]  WITH CHECK ADD  CONSTRAINT [FK_PrepravaAT_DruhPrepravy] FOREIGN KEY([DruhPrepravy])
REFERENCES [DruhPrepravy] ([ID])
GO
ALTER TABLE [PrepravaAT]  WITH CHECK ADD  CONSTRAINT [FK_PrepravaAT_Incoterms] FOREIGN KEY([Incoterms])
REFERENCES [Incoterms] ([ID])
GO
ALTER TABLE [PrepravaAT]  WITH CHECK ADD  CONSTRAINT [FK_PrepravaAT_Disponent] FOREIGN KEY([Disponent])
REFERENCES [Obchodnik] ([ID])
GO

ALTER TABLE [PrepravaAT]  WITH CHECK ADD  CONSTRAINT [FK_PrepravaAT_Preprava] FOREIGN KEY([Preprava])
REFERENCES [Preprava] ([ID])
GO


ALTER TABLE [VynosyAT]  WITH CHECK ADD  CONSTRAINT [FK_VynosyAT_Odberatel] FOREIGN KEY([Odberatel])
REFERENCES [Firma] ([ID])
GO
ALTER TABLE [VynosyAT]  WITH CHECK ADD  CONSTRAINT [FK_VynosyAT_Sluzba] FOREIGN KEY([Sluzba])
REFERENCES [Sluzba] ([ID])
GO
ALTER TABLE [VynosyAT]  WITH CHECK ADD  CONSTRAINT [FK_VynosyAT_Preprava] FOREIGN KEY([Preprava])
REFERENCES [PrepravaAT] ([ID])
GO




DENY SELECT, DELETE, INSERT, UPDATE ON [NakladyAT] TO [SERVER\Hradec] AS [dbo]
DENY SELECT, DELETE, INSERT, UPDATE ON [PrepravaAT] TO [SERVER\Hradec] AS [dbo]
DENY SELECT, DELETE, INSERT, UPDATE ON [PrepravaFullAT] TO [SERVER\Hradec] AS [dbo]
DENY SELECT, DELETE, INSERT, UPDATE ON [KontejnerAT] TO [SERVER\Hradec] AS [dbo]
DENY SELECT, DELETE, INSERT, UPDATE ON [VynosyAT] TO [SERVER\Hradec] AS [dbo]
GO

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