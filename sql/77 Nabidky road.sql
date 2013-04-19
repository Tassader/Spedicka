
CREATE TABLE [NabidkaSil](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Cislo] [char](13) NOT NULL,
	--[DruhPrepravy] [int] NOT NULL,
	[Specifikace] [nvarchar](255) NULL,
	[Smer] [char](6) NOT NULL,
	[Firma] [int] NOT NULL,
	[Kontakt] [int] NULL,
	--[Incoterms] [int] NOT NULL,
	[Carrier] [int] NULL,
	[Nacenil] [int] NOT NULL,
	[DatumVystaveni] [datetime] NOT NULL,
	[PlatnostNabidky] [datetime] NOT NULL,
	[Kurz] [decimal](9, 4) NULL, -- ??
	[Poznamka] [nvarchar](255) NULL,
	[Stav] [int] NOT NULL,
	[Duvod] [nvarchar](255) NULL,
	[NakupniCena] [nvarchar](4000) NULL,
 CONSTRAINT [PK_NabidkaSil] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
) ON [PRIMARY]
)
GO

ALTER TABLE [NabidkaSil]  WITH CHECK ADD  CONSTRAINT [FK_NabidkaSil_Carrier] FOREIGN KEY([Carrier])
REFERENCES [Firma] ([ID])

ALTER TABLE [NabidkaSil]  WITH CHECK ADD  CONSTRAINT [FK_NabidkaSil_Firma] FOREIGN KEY([Firma])
REFERENCES [Firma] ([ID])

/*ALTER TABLE [NabidkaSil]  WITH CHECK ADD  CONSTRAINT [FK_NabidkaSil_Incoterms] FOREIGN KEY([Incoterms])
REFERENCES [Incoterms] ([ID])
EXEC sys.sp_addextendedproperty @name=N'MS_ConstraintText', @value=N'Tento záznam nelze kvůli omezením relace mezi tabulkami Nabídka a Incoterms přidat, změnit ani odstranit.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NabidkaSil', @level2type=N'CONSTRAINT',@level2name=N'FK_NabidkaSil_Incoterms'*/

ALTER TABLE [NabidkaSil]  WITH CHECK ADD  CONSTRAINT [FK_NabidkaSil_Kontakt] FOREIGN KEY([Kontakt])
REFERENCES [Kontakt] ([ID])
ON UPDATE CASCADE
EXEC sys.sp_addextendedproperty @name=N'MS_ConstraintText', @value=N'Tento záznam nelze odstranit kvůli omezením relace mezi tabulkami Nabídka a Kontakt.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NabidkaSil', @level2type=N'CONSTRAINT',@level2name=N'FK_NabidkaSil_Kontakt'

ALTER TABLE [NabidkaSil]  WITH CHECK ADD  CONSTRAINT [FK_NabidkaSil_Nacenil] FOREIGN KEY([Nacenil])
REFERENCES [Obchodnik] ([ID])
EXEC sys.sp_addextendedproperty @name=N'MS_ConstraintText', @value=N'Tento záznam nelze kvůli omezením relace mezi tabulkami Nabídka(Nacenil) a Obchodník přidat, změnit ani odstranit.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NabidkaSil', @level2type=N'CONSTRAINT',@level2name=N'FK_NabidkaSil_Nacenil'

ALTER TABLE [NabidkaSil]  WITH CHECK ADD  CONSTRAINT [FK_NabidkaSil_Stav] FOREIGN KEY([Stav])
REFERENCES [StavPrilezitosti] ([ID])
GO

CREATE TRIGGER [NabidkaSilOnInsert] 
   ON  [NabidkaSil]
   FOR INSERT
   NOT FOR REPLICATION
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE NabidkaSil SET 
        Cislo='CN'+CAST(YEAR(GETDATE()) AS VARCHAR) + '-HK' + 
            Right('000' + 
                CAST((SELECT ISNULL(MAX(CAST(RIGHT(P.Cislo, LEN(P.Cislo)-9)AS smallint)),0)+1 FROM NabidkaSil P WHERE RIGHT(LEFT(P.Cislo, 6),4) like YEAR(GETDATE())) AS VARCHAR),4)
    FROM inserted
    WHERE NabidkaSil.ID=inserted.ID;
END
GO

/****** Object:  Table [NabidkaSilNakladky]    Script Date: 04/09/2013 06:23:39 ******/
CREATE TABLE [NabidkaSilNakladky](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NabidkaSil] [int] NOT NULL,
	[Nakladka] [int] NOT NULL,
	[Vykladka] [int] NOT NULL,
	[Cena] [decimal](9, 3) NULL,
	[DobaPrepravy] [varchar](50) NULL,
 CONSTRAINT [PK_NabidkaSilNakladky] PRIMARY KEY NONCLUSTERED -- CLUSTERED 
(
	[ID] ASC
) ON [PRIMARY]
)

GO

CREATE CLUSTERED INDEX [IX_NabidkaSilNakladky_NabidkaSil] ON [NabidkaSilNakladky] 
([NabidkaSil] ASC )

ALTER TABLE [NabidkaSilNakladky]  WITH CHECK ADD  CONSTRAINT [FK_NabidkaSilNakladky_NabidkaSil] FOREIGN KEY([NabidkaSil])
REFERENCES [NabidkaSil] ([ID])
ON DELETE CASCADE

ALTER TABLE [NabidkaSilNakladky]  WITH CHECK ADD  CONSTRAINT [FK_NabidkaSilNakladky_Nakladka] FOREIGN KEY([Nakladka])
REFERENCES [Misto] ([ID])
EXEC sys.sp_addextendedproperty @name=N'MS_ConstraintText', @value=N'Tento záznam nelze kvůli omezením relace mezi Nabídkami ROAD (Nakladka) a Přístavy přidat, změnit ani odstranit.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NabidkaSilNakladky', @level2type=N'CONSTRAINT',@level2name=N'FK_NabidkaSilNakladky_Nakladka'

ALTER TABLE [NabidkaSilNakladky]  WITH CHECK ADD  CONSTRAINT [FK_NabidkaSilNakladky_Vykladka] FOREIGN KEY([Vykladka])
REFERENCES [Misto] ([ID])
EXEC sys.sp_addextendedproperty @name=N'MS_ConstraintText', @value=N'Tento záznam nelze kvůli omezením relace mezi Nabídkami ROAD (Vykladka) a Přístavy přidat, změnit ani odstranit.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NabidkaSilNakladky', @level2type=N'CONSTRAINT',@level2name=N'FK_NabidkaSilNakladky_Vykladka'
GO


