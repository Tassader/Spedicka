/****** Object:  Table [PrepravaSil]    Script Date: 11/01/2011 15:18:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [PrepravaSil](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Cislo] [nvarchar](243) NULL,
	[Rok] [int] NOT NULL,
	[Mesic] [int] NOT NULL,
	[Tyden] [smallint] NULL,
	[Zakaznik] [int] NULL,
	[ZakaznickaRef] [nvarchar](255) NULL,
	[Obchodnik] [int] NULL,
	[Disponent] [int] NULL,
	[StavPrepravy] [int] NOT NULL,
	[Fakturovano] [bit] NOT NULL,
	[Poznamka] [nvarchar](50) NULL,
	[Odesilatel] [int] NULL,
	[Prijemce] [int] NULL,
	[Smer] [nvarchar](10) NULL,
	[Incoterms] [int] NULL,
	[IncotermsMisto] [nvarchar](255) NULL,
	[DruhPrepravy] [int] NULL,
	[Zasilka] [nvarchar](50) NULL,
	[POL] [nvarchar](50) NULL,
	[ETS] [datetime] NULL,
	[POD] [nvarchar](50) NULL,
	[ETA] [datetime] NULL,
	[MBLt] [nvarchar](255) NULL,
	[MAWB] [nvarchar](255) NULL,
	[Kontakt] [nvarchar](100) NULL,
	[KontaktMail] [nvarchar](255) NULL,
	[ObchodniFaktury] [ntext] NULL,
	[MBL] [ntext] NULL,
	[HBL] [ntext] NULL,
	[CelniDokumenty] [ntext] NULL,
	[NakladoveFaktury] [ntext] NULL,
	[VynosoveFaktury] [ntext] NULL,
	[upsize_ts] [timestamp] NULL,
 CONSTRAINT [aaaaaPrepravaSil_PK] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'PrepravaSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Cislo'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Cislo'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Cislo'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Cislo'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Cislo'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Cislo'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Cislo'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Cislo'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Cislo'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Cislo'
GO

EXEC sys.sp_addextendedproperty @name=N'Expression', @value=N'[Rok] & "-" & Right("000" & [ID],3)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Cislo'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Cislo'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Èíslo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Cislo'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Cislo'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Cislo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Cislo'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Cislo'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Cislo'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Cislo'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'243' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Cislo'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Cislo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Cislo'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'PrepravaSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Cislo'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Cislo'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Cislo'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Rok'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Rok'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Rok'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Rok'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Rok'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Rok'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Rok'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Rok'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Rok'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Rok'
GO

EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'=Year(Date())' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Rok'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Rok'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Rok'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Rok'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_InputMask', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Rok'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Rok' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Rok'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Rok'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Rok'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Rok'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Rok'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Rok' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Rok'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'PrepravaSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Rok'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Rok'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Rok'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Mesic'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Mesic'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Mesic'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Mesic'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Mesic'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Mesic'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Mesic'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Mesic'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Mesic'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Mesic'
GO

EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'=Month(Date())' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Mesic'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Mesic'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Mìsíc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Mesic'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Mesic'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Mesic'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Mesic' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Mesic'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Mesic'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Mesic'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Mesic'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Mesic'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Mesic' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Mesic'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'PrepravaSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Mesic'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Mesic'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Mesic'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Tyden'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Tyden'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Tyden'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Tyden'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Tyden'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Tyden'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Tyden'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Tyden'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Tyden'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Tyden'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Tyden'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Týden' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Tyden'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Tyden'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Tyden'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Tyden' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Tyden'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Tyden'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Tyden'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Tyden'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Tyden'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Tyden' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Tyden'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'PrepravaSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Tyden'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Tyden'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Tyden'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zakaznik'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowMultipleValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zakaznik'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowValueListEdits', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zakaznik'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zakaznik'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zakaznik'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zakaznik'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zakaznik'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zakaznik'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zakaznik'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zakaznik'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zakaznik'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zakaznik'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'A???????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zakaznik'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_BoundColumn', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zakaznik'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Zákazník' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zakaznik'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zakaznik'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHeads', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zakaznik'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'0;1440' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zakaznik'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zakaznik'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zakaznik'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_LimitToList', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zakaznik'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListRows', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zakaznik'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListWidth', @value=N'1440twip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zakaznik'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'SELECT Firma.ID, Firma.Firma
FROM Firma
ORDER BY Firma' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zakaznik'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSourceType', @value=N'Table/View/StoredProc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zakaznik'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Zakaznik' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zakaznik'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zakaznik'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zakaznik'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zakaznik'
GO

EXEC sys.sp_addextendedproperty @name=N'ShowOnlyRowSourceValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zakaznik'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zakaznik'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Zakaznik' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zakaznik'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'PrepravaSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zakaznik'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zakaznik'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zakaznik'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ZakaznickaRef'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ZakaznickaRef'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ZakaznickaRef'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ZakaznickaRef'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ZakaznickaRef'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ZakaznickaRef'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ZakaznickaRef'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ZakaznickaRef'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ZakaznickaRef'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ZakaznickaRef'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ZakaznickaRef'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Zákaznická reference' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ZakaznickaRef'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ZakaznickaRef'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ZakaznickaRef'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ZakaznickaRef'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ZakaznickaRef' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ZakaznickaRef'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ZakaznickaRef'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ZakaznickaRef'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ZakaznickaRef'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ZakaznickaRef'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ZakaznickaRef' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ZakaznickaRef'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'PrepravaSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ZakaznickaRef'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ZakaznickaRef'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ZakaznickaRef'
GO

EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ZakaznickaRef'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Obchodnik'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowMultipleValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Obchodnik'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowValueListEdits', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Obchodnik'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Obchodnik'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Obchodnik'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Obchodnik'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Obchodnik'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Obchodnik'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Obchodnik'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Obchodnik'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Obchodnik'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Obchodnik'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Obchodnik'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_BoundColumn', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Obchodnik'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Obchodník' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Obchodnik'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Obchodnik'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHeads', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Obchodnik'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'0;1440' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Obchodnik'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Obchodnik'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Obchodnik'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_LimitToList', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Obchodnik'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListRows', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Obchodnik'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListWidth', @value=N'1440twip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Obchodnik'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'SELECT Obchodnik.ID, Obchodnik.Jmeno
FROM Obchodnik
ORDER BY Jmeno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Obchodnik'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSourceType', @value=N'Table/View/StoredProc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Obchodnik'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Obchodnik' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Obchodnik'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Obchodnik'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Obchodnik'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Obchodnik'
GO

EXEC sys.sp_addextendedproperty @name=N'ShowOnlyRowSourceValues', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Obchodnik'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Obchodnik'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Obchodnik' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Obchodnik'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'PrepravaSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Obchodnik'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Obchodnik'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Obchodnik'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Disponent'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowMultipleValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Disponent'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowValueListEdits', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Disponent'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Disponent'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Disponent'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Disponent'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Disponent'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Disponent'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Disponent'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Disponent'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Disponent'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Disponent'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Disponent'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_BoundColumn', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Disponent'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Disponent' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Disponent'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Disponent'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHeads', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Disponent'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'0;1442' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Disponent'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Disponent'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Disponent'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_LimitToList', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Disponent'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListRows', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Disponent'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListWidth', @value=N'0twip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Disponent'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'SELECT Obchodnik.ID, Obchodnik.Jmeno
FROM Obchodnik
ORDER BY Jmeno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Disponent'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSourceType', @value=N'Table/View/StoredProc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Disponent'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Disponent' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Disponent'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Disponent'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Disponent'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Disponent'
GO

EXEC sys.sp_addextendedproperty @name=N'ShowOnlyRowSourceValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Disponent'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Disponent'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Disponent' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Disponent'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'PrepravaSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Disponent'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Disponent'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Disponent'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'StavPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowMultipleValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'StavPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowValueListEdits', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'StavPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'StavPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'StavPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'StavPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'StavPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'StavPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'StavPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'StavPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'StavPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'StavPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'=1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'StavPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'StavPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_BoundColumn', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'StavPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Stav' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'StavPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'StavPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHeads', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'StavPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'0;1440' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'StavPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'StavPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'StavPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_LimitToList', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'StavPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListRows', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'StavPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListWidth', @value=N'1440twip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'StavPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'SELECT StavPrepravy.ID, StavPrepravy.StavPrepravy
FROM StavPrepravy
ORDER BY StavPrepravy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'StavPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSourceType', @value=N'Table/View/StoredProc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'StavPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'StavPrepravy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'StavPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'StavPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'StavPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'StavPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'ShowOnlyRowSourceValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'StavPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'StavPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'StavPrepravy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'StavPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'PrepravaSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'StavPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'StavPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'StavPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Fakturovano'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Fakturovano'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Fakturovano'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Fakturovano'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Fakturovano'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Fakturovano'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Fakturovano'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Fakturovano'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Fakturovano'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Fakturovano'
GO

EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Fakturovano'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Fakturovano'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Fakturováno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Fakturovano'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'106' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Fakturovano'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'True/False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Fakturovano'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Fakturovano' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Fakturovano'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Fakturovano'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Fakturovano'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Fakturovano'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Fakturovano'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Fakturovano' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Fakturovano'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'PrepravaSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Fakturovano'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Fakturovano'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Fakturovano'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Poznamka'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowMultipleValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Poznamka'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowValueListEdits', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Poznamka'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Poznamka'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Poznamka'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Poznamka'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Poznamka'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Poznamka'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Poznamka'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Poznamka'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Poznamka'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Poznamka'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Poznamka'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_BoundColumn', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Poznamka'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Poznámka' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Poznamka'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Poznamka'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHeads', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Poznamka'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Poznamka'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Poznamka'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Poznamka'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_LimitToList', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Poznamka'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListRows', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Poznamka'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListWidth', @value=N'0twip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Poznamka'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSourceType', @value=N'Value List' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Poznamka'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Poznamka' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Poznamka'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'11' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Poznamka'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Poznamka'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Poznamka'
GO

EXEC sys.sp_addextendedproperty @name=N'ShowOnlyRowSourceValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Poznamka'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Poznamka'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Poznamka' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Poznamka'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'PrepravaSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Poznamka'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Poznamka'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Poznamka'
GO

EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Poznamka'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Odesilatel'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowMultipleValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Odesilatel'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowValueListEdits', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Odesilatel'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Odesilatel'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Odesilatel'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Odesilatel'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Odesilatel'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Odesilatel'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Odesilatel'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Odesilatel'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Odesilatel'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Odesilatel'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Odesilatel'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_BoundColumn', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Odesilatel'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Odesílatel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Odesilatel'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Odesilatel'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHeads', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Odesilatel'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'0;1440' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Odesilatel'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Odesilatel'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Odesilatel'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_LimitToList', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Odesilatel'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListRows', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Odesilatel'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListWidth', @value=N'1440twip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Odesilatel'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'Firma' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Odesilatel'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSourceType', @value=N'Table/View/StoredProc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Odesilatel'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Odesilatel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Odesilatel'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Odesilatel'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Odesilatel'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Odesilatel'
GO

EXEC sys.sp_addextendedproperty @name=N'ShowOnlyRowSourceValues', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Odesilatel'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Odesilatel'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Odesilatel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Odesilatel'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'PrepravaSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Odesilatel'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Odesilatel'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Odesilatel'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Prijemce'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowMultipleValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Prijemce'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowValueListEdits', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Prijemce'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Prijemce'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Prijemce'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Prijemce'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Prijemce'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Prijemce'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Prijemce'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Prijemce'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Prijemce'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Prijemce'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Prijemce'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_BoundColumn', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Prijemce'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Pøíjemce' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Prijemce'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Prijemce'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHeads', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Prijemce'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'0;1440' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Prijemce'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Prijemce'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Prijemce'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_LimitToList', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Prijemce'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListRows', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Prijemce'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListWidth', @value=N'1440twip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Prijemce'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'Firma' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Prijemce'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSourceType', @value=N'Table/View/StoredProc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Prijemce'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Prijemce' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Prijemce'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'13' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Prijemce'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Prijemce'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Prijemce'
GO

EXEC sys.sp_addextendedproperty @name=N'ShowOnlyRowSourceValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Prijemce'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Prijemce'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Prijemce' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Prijemce'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'PrepravaSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Prijemce'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Prijemce'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Prijemce'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Smer'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowMultipleValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Smer'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowValueListEdits', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Smer'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Smer'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Smer'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Smer'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Smer'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Smer'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Smer'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Smer'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Smer'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Smer'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Smer'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_BoundColumn', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Smer'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Smìr' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Smer'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Smer'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHeads', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Smer'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Smer'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Smer'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Smer'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_LimitToList', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Smer'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListRows', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Smer'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListWidth', @value=N'0twip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Smer'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'"Import";"Export"' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Smer'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSourceType', @value=N'Value List' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Smer'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Smer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Smer'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'14' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Smer'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Smer'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Smer'
GO

EXEC sys.sp_addextendedproperty @name=N'ShowOnlyRowSourceValues', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Smer'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Smer'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Smer' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Smer'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'PrepravaSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Smer'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Smer'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Smer'
GO

EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Smer'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Incoterms'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowMultipleValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Incoterms'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowValueListEdits', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Incoterms'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Incoterms'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Incoterms'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Incoterms'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Incoterms'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Incoterms'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Incoterms'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Incoterms'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Incoterms'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Incoterms'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Incoterms'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_BoundColumn', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Incoterms'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Incoterms' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Incoterms'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Incoterms'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHeads', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Incoterms'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'0;1441' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Incoterms'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Incoterms'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Incoterms'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_LimitToList', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Incoterms'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListRows', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Incoterms'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListWidth', @value=N'1441twip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Incoterms'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'SELECT Incoterms.ID, Incoterms.Incoterms
FROM Incoterms
ORDER BY Incoterms' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Incoterms'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSourceType', @value=N'Table/View/StoredProc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Incoterms'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Incoterms' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Incoterms'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'15' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Incoterms'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Incoterms'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Incoterms'
GO

EXEC sys.sp_addextendedproperty @name=N'ShowOnlyRowSourceValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Incoterms'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Incoterms'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Incoterms' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Incoterms'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'PrepravaSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Incoterms'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Incoterms'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Incoterms'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'IncotermsMisto'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'IncotermsMisto'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'IncotermsMisto'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'IncotermsMisto'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'IncotermsMisto'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'IncotermsMisto'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'IncotermsMisto'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'IncotermsMisto'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'IncotermsMisto'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'IncotermsMisto'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'IncotermsMisto'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Incoterms Místo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'IncotermsMisto'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'IncotermsMisto'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'IncotermsMisto'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'IncotermsMisto'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'IncotermsMisto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'IncotermsMisto'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'IncotermsMisto'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'IncotermsMisto'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'IncotermsMisto'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'IncotermsMisto'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'IncotermsMisto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'IncotermsMisto'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'PrepravaSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'IncotermsMisto'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'IncotermsMisto'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'IncotermsMisto'
GO

EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'IncotermsMisto'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'DruhPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowMultipleValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'DruhPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowValueListEdits', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'DruhPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'DruhPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'DruhPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'DruhPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'DruhPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'DruhPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'DruhPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'DruhPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'DruhPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'DruhPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'DruhPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_BoundColumn', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'DruhPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Druh pøepravy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'DruhPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'DruhPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHeads', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'DruhPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'0;1440' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'DruhPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'DruhPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'DruhPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_LimitToList', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'DruhPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListRows', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'DruhPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListWidth', @value=N'1440twip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'DruhPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'SELECT DruhPrepravy.ID, DruhPrepravy.DruhPrepravy
FROM DruhPrepravy
ORDER BY DruhPrepravy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'DruhPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSourceType', @value=N'Table/View/StoredProc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'DruhPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'DruhPrepravy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'DruhPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'DruhPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'DruhPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'DruhPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'ShowOnlyRowSourceValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'DruhPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'DruhPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'DruhPrepravy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'DruhPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'PrepravaSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'DruhPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'DruhPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'DruhPrepravy'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zasilka'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zasilka'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zasilka'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zasilka'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zasilka'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zasilka'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zasilka'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zasilka'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zasilka'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zasilka'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'?????o??' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zasilka'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Zásilka' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zasilka'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zasilka'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zasilka'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zasilka'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Zasilka' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zasilka'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'18' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zasilka'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zasilka'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zasilka'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zasilka'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Zasilka' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zasilka'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'PrepravaSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zasilka'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zasilka'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zasilka'
GO

EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Zasilka'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POL'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowMultipleValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POL'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowValueListEdits', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POL'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POL'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POL'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POL'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POL'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POL'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POL'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POL'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POL'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POL'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POL'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_BoundColumn', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POL'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Port of Loading' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POL'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POL'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHeads', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POL'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POL'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POL'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POL'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_LimitToList', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POL'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListRows', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POL'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListWidth', @value=N'0twip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POL'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'Mista' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POL'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSourceType', @value=N'Table/View/StoredProc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POL'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'POL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POL'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'19' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POL'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POL'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POL'
GO

EXEC sys.sp_addextendedproperty @name=N'ShowOnlyRowSourceValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POL'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POL'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'POL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POL'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'PrepravaSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POL'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POL'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POL'
GO

EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POL'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETS'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETS'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETS'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETS'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETS'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETS'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETS'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETS'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETS'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETS'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETS'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Sailing Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETS'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'Short Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETS'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETS'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETS'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ETS' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETS'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETS'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETS'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETS'
GO

EXEC sys.sp_addextendedproperty @name=N'ShowDatePicker', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETS'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETS'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ETS' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETS'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'PrepravaSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETS'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETS'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETS'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POD'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowMultipleValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POD'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowValueListEdits', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POD'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POD'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POD'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POD'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POD'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POD'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POD'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POD'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POD'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POD'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POD'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_BoundColumn', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POD'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Port of Discharge' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POD'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POD'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHeads', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POD'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POD'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POD'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POD'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_LimitToList', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POD'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListRows', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POD'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListWidth', @value=N'0twip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POD'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'Mista' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POD'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSourceType', @value=N'Table/View/StoredProc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POD'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'POD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POD'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'21' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POD'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POD'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POD'
GO

EXEC sys.sp_addextendedproperty @name=N'ShowOnlyRowSourceValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POD'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POD'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'POD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POD'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'PrepravaSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POD'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POD'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POD'
GO

EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'POD'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETA'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETA'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETA'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETA'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETA'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETA'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETA'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETA'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETA'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETA'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Arrival Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'Short Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETA'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETA'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ETA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETA'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'22' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETA'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETA'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETA'
GO

EXEC sys.sp_addextendedproperty @name=N'ShowDatePicker', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETA'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETA'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ETA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETA'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'PrepravaSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETA'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETA'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ETA'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MBLt'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MBLt'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MBLt'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MBLt'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MBLt'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MBLt'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MBLt'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MBLt'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MBLt'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MBLt'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MBLt'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'MBL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MBLt'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MBLt'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MBLt'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MBLt'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MBLt' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MBLt'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'23' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MBLt'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MBLt'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MBLt'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MBLt'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MBLt' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MBLt'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'PrepravaSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MBLt'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MBLt'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MBLt'
GO

EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MBLt'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MAWB'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MAWB'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MAWB'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MAWB'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MAWB'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MAWB'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MAWB'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MAWB'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MAWB'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MAWB'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MAWB'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MAWB'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MAWB'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MAWB'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MAWB' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MAWB'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'24' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MAWB'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MAWB'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MAWB'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MAWB'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MAWB' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MAWB'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'PrepravaSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MAWB'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MAWB'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MAWB'
GO

EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MAWB'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Kontakt'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Kontakt'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Kontakt'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Kontakt'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Kontakt'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Kontakt'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Kontakt'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Kontakt'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Kontakt'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Kontakt'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Kontakt'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Kontaktní osoba' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Kontakt'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Kontakt'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Kontakt'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Kontakt'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Kontakt' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Kontakt'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'25' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Kontakt'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Kontakt'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Kontakt'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Kontakt'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Kontakt' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Kontakt'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'PrepravaSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Kontakt'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Kontakt'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Kontakt'
GO

EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'Kontakt'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'KontaktMail'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'KontaktMail'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'KontaktMail'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'KontaktMail'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'KontaktMail'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'KontaktMail'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'KontaktMail'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'KontaktMail'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'KontaktMail'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'KontaktMail'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'KontaktMail'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'KontaktMail'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'KontaktMail'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'KontaktMail'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'KontaktMail'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'KontaktMail' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'KontaktMail'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'26' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'KontaktMail'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'KontaktMail'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'KontaktMail'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'KontaktMail'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'KontaktMail' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'KontaktMail'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'PrepravaSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'KontaktMail'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'KontaktMail'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'KontaktMail'
GO

EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'KontaktMail'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ObchodniFaktury'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ObchodniFaktury'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ObchodniFaktury'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ObchodniFaktury'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ObchodniFaktury'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Obchodní faktury a dodací listy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ObchodniFaktury'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ObchodniFaktury' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ObchodniFaktury'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'27' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ObchodniFaktury'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ObchodniFaktury'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ObchodniFaktury'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ObchodniFaktury' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ObchodniFaktury'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'PrepravaSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ObchodniFaktury'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'ObchodniFaktury'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MBL'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MBL'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MBL'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MBL'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MBL'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'MBL/MAVB' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MBL'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'MBL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MBL'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'28' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MBL'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MBL'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MBL'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'MBL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MBL'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'PrepravaSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MBL'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'MBL'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'HBL'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'HBL'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'HBL'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'HBL'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'HBL'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'HBL/HAVB' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'HBL'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'HBL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'HBL'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'29' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'HBL'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'HBL'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'HBL'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'HBL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'HBL'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'PrepravaSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'HBL'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'HBL'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'CelniDokumenty'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'CelniDokumenty'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'CelniDokumenty'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'CelniDokumenty'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'CelniDokumenty'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Celní dokumenty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'CelniDokumenty'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'CelniDokumenty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'CelniDokumenty'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'30' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'CelniDokumenty'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'CelniDokumenty'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'CelniDokumenty'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'CelniDokumenty' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'CelniDokumenty'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'PrepravaSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'CelniDokumenty'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'CelniDokumenty'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'NakladoveFaktury'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'NakladoveFaktury'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'NakladoveFaktury'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'NakladoveFaktury'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'NakladoveFaktury'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Nákladové faktury' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'NakladoveFaktury'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'NakladoveFaktury' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'NakladoveFaktury'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'31' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'NakladoveFaktury'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'NakladoveFaktury'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'NakladoveFaktury'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'NakladoveFaktury' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'NakladoveFaktury'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'PrepravaSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'NakladoveFaktury'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'NakladoveFaktury'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'VynosoveFaktury'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'VynosoveFaktury'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'VynosoveFaktury'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'VynosoveFaktury'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'VynosoveFaktury'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Výnosové faktury' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'VynosoveFaktury'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'VynosoveFaktury' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'VynosoveFaktury'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'32' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'VynosoveFaktury'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'VynosoveFaktury'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'VynosoveFaktury'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'VynosoveFaktury' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'VynosoveFaktury'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'PrepravaSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'VynosoveFaktury'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'COLUMN',@level2name=N'VynosoveFaktury'
GO

EXEC sys.sp_addextendedproperty @name=N'AlternateBackShade', @value=N'95' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil'
GO

EXEC sys.sp_addextendedproperty @name=N'AlternateBackThemeColorIndex', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil'
GO

EXEC sys.sp_addextendedproperty @name=N'AlternateBackTint', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil'
GO

EXEC sys.sp_addextendedproperty @name=N'BackShade', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil'
GO

EXEC sys.sp_addextendedproperty @name=N'BackTint', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil'
GO

EXEC sys.sp_addextendedproperty @name=N'DatasheetForeThemeColorIndex', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil'
GO

EXEC sys.sp_addextendedproperty @name=N'DatasheetGridlinesThemeColorIndex', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil'
GO

EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'7.9.2011 8:04:31' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil'
GO

EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil'
GO

EXEC sys.sp_addextendedproperty @name=N'FCMinDesignVer', @value=N'14.0.0000.0000' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil'
GO

EXEC sys.sp_addextendedproperty @name=N'FCMinReadVer', @value=N'14.0.0000.0000' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil'
GO

EXEC sys.sp_addextendedproperty @name=N'FCMinWriteVer', @value=N'14.0.0000.0000' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil'
GO

EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil'
GO

EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil'
GO

EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'25.10.2011 17:15:56' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'PrepravaSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil'
GO

EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil'
GO

EXEC sys.sp_addextendedproperty @name=N'PublishToWeb', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil'
GO

EXEC sys.sp_addextendedproperty @name=N'ReadOnlyWhenDisconnected', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil'
GO

EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'155' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil'
GO

EXEC sys.sp_addextendedproperty @name=N'ThemeFontIndex', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil'
GO

EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil'
GO

EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil'
GO

ALTER TABLE [PrepravaSil]  WITH CHECK ADD  CONSTRAINT [PrepravaSil_FK00] FOREIGN KEY([Odesilatel])
REFERENCES [Firma] ([ID])
GO

ALTER TABLE [PrepravaSil] CHECK CONSTRAINT [PrepravaSil_FK00]
GO

ALTER TABLE [PrepravaSil]  WITH CHECK ADD  CONSTRAINT [PrepravaSil_FK01] FOREIGN KEY([Prijemce])
REFERENCES [Firma] ([ID])
GO

ALTER TABLE [PrepravaSil] CHECK CONSTRAINT [PrepravaSil_FK01]
GO

ALTER TABLE [PrepravaSil]  WITH CHECK ADD  CONSTRAINT [PrepravaSil_FK02] FOREIGN KEY([StavPrepravy])
REFERENCES [StavPrepravy] ([ID])
GO

ALTER TABLE [PrepravaSil] CHECK CONSTRAINT [PrepravaSil_FK02]
GO

ALTER TABLE [PrepravaSil]  WITH CHECK ADD  CONSTRAINT [PrepravaSil_FK03] FOREIGN KEY([Obchodnik])
REFERENCES [Obchodnik] ([ID])
GO

ALTER TABLE [PrepravaSil] CHECK CONSTRAINT [PrepravaSil_FK03]
GO

ALTER TABLE [PrepravaSil]  WITH CHECK ADD  CONSTRAINT [PrepravaSil_FK04] FOREIGN KEY([DruhPrepravy])
REFERENCES [DruhPrepravy] ([ID])
GO

ALTER TABLE [PrepravaSil] CHECK CONSTRAINT [PrepravaSil_FK04]
GO

ALTER TABLE [PrepravaSil]  WITH CHECK ADD  CONSTRAINT [PrepravaSil_FK05] FOREIGN KEY([Zakaznik])
REFERENCES [Firma] ([ID])
GO

ALTER TABLE [PrepravaSil] CHECK CONSTRAINT [PrepravaSil_FK05]
GO

ALTER TABLE [PrepravaSil]  WITH CHECK ADD  CONSTRAINT [PrepravaSil_FK06] FOREIGN KEY([Incoterms])
REFERENCES [Incoterms] ([ID])
GO

ALTER TABLE [PrepravaSil] CHECK CONSTRAINT [PrepravaSil_FK06]
GO

ALTER TABLE [PrepravaSil]  WITH CHECK ADD  CONSTRAINT [PrepravaSil_FK07] FOREIGN KEY([Disponent])
REFERENCES [Obchodnik] ([ID])
GO

ALTER TABLE [PrepravaSil] CHECK CONSTRAINT [PrepravaSil_FK07]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ConstraintText', @value=N'Tento záznam nelze kvùli omezením relace mezi tabulkami Obchodnik a Preprava pøidat, zmìnit ani odstranit.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrepravaSil', @level2type=N'CONSTRAINT',@level2name=N'PrepravaSil_FK07'
GO

ALTER TABLE [PrepravaSil] ADD CONSTRAINT [DF__Preprava__Rok] DEFAULT (datepart(year,CONVERT([datetime],CONVERT([varchar],getdate(),(1)),(1)))) FOR [Rok]
GO

ALTER TABLE [PrepravaSil] ADD  CONSTRAINT [DF__Preprava__Mesic] DEFAULT (datepart(month,CONVERT([datetime],CONVERT([varchar],getdate(),(1)),(1)))) FOR [Mesic]
GO

ALTER TABLE [PrepravaSil] ADD  CONSTRAINT [DF__Preprava__StavPrepravy] DEFAULT ((1)) FOR [StavPrepravy]
GO

ALTER TABLE [PrepravaSil] ADD  CONSTRAINT [DF__Preprava__Fakturovano] DEFAULT ((0)) FOR [Fakturovano]
GO






















CREATE TABLE [KontejnerSil](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Preprava] [int] NOT NULL,
	[TypKontejneru] [int] NOT NULL,
	[Kontejner] [nvarchar](255) NOT NULL,
	[DruhKusu] [int] NULL,
	[PocetKusu] [int] NULL,
	[GrossWeight] [decimal](18, 2) NULL,
	[VolumeWeight] [decimal](18, 2) NULL,
	[LDM] [decimal](18, 2) NULL,
	[CBM] [decimal](18, 2) NULL,
	[DatumCasNakladky] [datetime] NULL,
	[AdresaNakladky] [int] NULL,
	[KontaktNakl] [int] NULL,
	[Vykladka] [int] NULL,
	[KontaktVykl] [int] NULL,
	[DatumCasVykladky] [datetime] NULL,
 CONSTRAINT [aaaaaKontejnerSil_PK] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'KontejnerSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowMultipleValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowValueListEdits', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'Ž???????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_BoundColumn', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHeads', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'0;1440' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_LimitToList', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListRows', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListWidth', @value=N'1440twip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'SELECT Preprava.ID, Preprava.Cislo
FROM Preprava
ORDER BY Cislo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSourceType', @value=N'Table/View/StoredProc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Preprava' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'ShowOnlyRowSourceValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Preprava' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'KontejnerSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'TypKontejneru'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowMultipleValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'TypKontejneru'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowValueListEdits', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'TypKontejneru'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'TypKontejneru'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'TypKontejneru'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'TypKontejneru'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'TypKontejneru'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'TypKontejneru'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'TypKontejneru'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'TypKontejneru'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'TypKontejneru'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'TypKontejneru'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'TypKontejneru'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_BoundColumn', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'TypKontejneru'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'TypKontejneru'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHeads', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'TypKontejneru'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'0;1440' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'TypKontejneru'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'TypKontejneru'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'TypKontejneru'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_LimitToList', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'TypKontejneru'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListRows', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'TypKontejneru'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListWidth', @value=N'1440twip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'TypKontejneru'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'SELECT TypKontejneru.ID, TypKontejneru.Typ
FROM TypKontejneru
ORDER BY Typ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'TypKontejneru'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSourceType', @value=N'Table/View/StoredProc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'TypKontejneru'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'TypKontejneru' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'TypKontejneru'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'TypKontejneru'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'TypKontejneru'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'TypKontejneru'
GO

EXEC sys.sp_addextendedproperty @name=N'ShowOnlyRowSourceValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'TypKontejneru'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'TypKontejneru'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'TypKontejneru' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'TypKontejneru'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'KontejnerSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'TypKontejneru'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'TypKontejneru'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'TypKontejneru'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Kontejner'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Kontejner'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Kontejner'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Kontejner'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Kontejner'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Kontejner'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Kontejner'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Kontejner'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Kontejner'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Kontejner'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Kontejner'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Kontejner'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Kontejner'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Kontejner'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'KontejnerSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Kontejner'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Kontejner'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Kontejner'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Kontejner'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Kontejner'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'KontejnerSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Kontejner'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'KontejnerSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Kontejner'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Kontejner'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Kontejner'
GO

EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Kontejner'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DruhKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowMultipleValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DruhKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowValueListEdits', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DruhKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DruhKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DruhKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DruhKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DruhKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DruhKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DruhKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DruhKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DruhKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DruhKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DruhKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_BoundColumn', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DruhKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Druh nákladových kusù' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DruhKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DruhKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHeads', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DruhKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'0;1440' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DruhKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DruhKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DruhKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_LimitToList', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DruhKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListRows', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DruhKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListWidth', @value=N'1440twip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DruhKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'SELECT DruhKusu.ID, DruhKusu.Druh
FROM DruhKusu
ORDER BY Druh' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DruhKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSourceType', @value=N'Table/View/StoredProc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DruhKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'DruhKusu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DruhKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DruhKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DruhKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DruhKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'ShowOnlyRowSourceValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DruhKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DruhKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'DruhKusu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DruhKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'KontejnerSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DruhKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DruhKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DruhKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'PocetKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'PocetKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'PocetKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'PocetKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'PocetKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'PocetKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'PocetKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'PocetKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'PocetKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'PocetKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'PocetKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Poèet nákladových kusù' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'PocetKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'PocetKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'PocetKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'PocetKusu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'PocetKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'PocetKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'PocetKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'PocetKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'PocetKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'PocetKusu' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'PocetKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'KontejnerSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'PocetKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'PocetKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'PocetKusu'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'GrossWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'GrossWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'GrossWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'GrossWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'18' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'GrossWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'GrossWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'GrossWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'GrossWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'GrossWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'GrossWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'GrossWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'GrossWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Gross Weight Kg' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'GrossWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'GrossWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'GrossWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'GrossWeight' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'GrossWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'GrossWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'GrossWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'GrossWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'GrossWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'GrossWeight' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'GrossWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'KontejnerSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'GrossWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'GrossWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'GrossWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'VolumeWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'VolumeWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'VolumeWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'VolumeWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'18' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'VolumeWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'VolumeWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'VolumeWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'VolumeWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'VolumeWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'VolumeWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'VolumeWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'VolumeWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Volume Weight Kg' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'VolumeWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'VolumeWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'VolumeWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'VolumeWeight' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'VolumeWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'VolumeWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'VolumeWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'VolumeWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'VolumeWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'VolumeWeight' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'VolumeWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'KontejnerSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'VolumeWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'VolumeWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'VolumeWeight'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'LDM'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'LDM'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'LDM'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'LDM'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'18' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'LDM'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'LDM'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'LDM'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'LDM'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'LDM'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'LDM'
GO

EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'LDM'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'LDM'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'LDM'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'LDM'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'LDM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'LDM'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'LDM'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'LDM'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'LDM'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'LDM'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'LDM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'LDM'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'KontejnerSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'LDM'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'LDM'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'LDM'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'CBM'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'CBM'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'CBM'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'CBM'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'18' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'CBM'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'CBM'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'CBM'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'CBM'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'CBM'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'CBM'
GO

EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'CBM'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'CBM'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'CBM'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'CBM'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'CBM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'CBM'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'9' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'CBM'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'CBM'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'CBM'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'CBM'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'CBM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'CBM'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'KontejnerSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'CBM'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'CBM'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'CBM'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'2055' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Datum a èas' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'General Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'DatumCasNakladky' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'ShowDatePicker', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'DatumCasNakladky' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'KontejnerSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'AdresaNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowMultipleValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'AdresaNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowValueListEdits', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'AdresaNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'AdresaNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'AdresaNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'AdresaNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'AdresaNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'AdresaNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'AdresaNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'AdresaNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'AdresaNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'AdresaNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'AdresaNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_BoundColumn', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'AdresaNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Adresa nakládky' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'AdresaNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'AdresaNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHeads', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'AdresaNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'0;1441;1441' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'AdresaNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'AdresaNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'AdresaNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_LimitToList', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'AdresaNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListRows', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'AdresaNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListWidth', @value=N'2880twip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'AdresaNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'SELECT Firma.ID, Firma.Firma, Firma.Mesto
FROM Firma
ORDER BY Firma, Mesto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'AdresaNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSourceType', @value=N'Table/View/StoredProc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'AdresaNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'AdresaNakladky' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'AdresaNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'AdresaNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'AdresaNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'AdresaNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'ShowOnlyRowSourceValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'AdresaNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'AdresaNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'AdresaNakladky' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'AdresaNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'KontejnerSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'AdresaNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'AdresaNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'AdresaNakladky'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktNakl'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowMultipleValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktNakl'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowValueListEdits', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktNakl'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktNakl'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktNakl'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktNakl'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktNakl'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktNakl'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktNakl'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktNakl'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktNakl'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktNakl'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktNakl'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_BoundColumn', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktNakl'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Kontakt nakl' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktNakl'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktNakl'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHeads', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktNakl'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'0;1441;1441;1441;1441' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktNakl'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktNakl'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktNakl'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_LimitToList', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktNakl'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListRows', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktNakl'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListWidth', @value=N'5761twip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktNakl'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'SELECT Kontakt.ID, Kontakt.Jmeno, Kontakt.Mobil, Kontakt.Telefon, Kontakt.Email
FROM Kontakt
ORDER BY Jmeno' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktNakl'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSourceType', @value=N'Table/View/StoredProc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktNakl'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'KontaktNakl' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktNakl'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'18' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktNakl'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktNakl'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktNakl'
GO

EXEC sys.sp_addextendedproperty @name=N'ShowOnlyRowSourceValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktNakl'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktNakl'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'KontaktNakl' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktNakl'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'KontejnerSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktNakl'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktNakl'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktNakl'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Vykladka'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowMultipleValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Vykladka'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowValueListEdits', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Vykladka'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Vykladka'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Vykladka'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Vykladka'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Vykladka'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Vykladka'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Vykladka'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Vykladka'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Vykladka'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Vykladka'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Vykladka'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_BoundColumn', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Vykladka'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Vykládka' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Vykladka'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Vykladka'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHeads', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Vykladka'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'0;1441;1441' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Vykladka'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Vykladka'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Vykladka'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_LimitToList', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Vykladka'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListRows', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Vykladka'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListWidth', @value=N'2880twip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Vykladka'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'SELECT Firma.ID, Firma.Firma, Firma.Mesto
FROM Firma
ORDER BY Firma, Mesto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Vykladka'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSourceType', @value=N'Table/View/StoredProc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Vykladka'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Vykladka' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Vykladka'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'19' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Vykladka'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Vykladka'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Vykladka'
GO

EXEC sys.sp_addextendedproperty @name=N'ShowOnlyRowSourceValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Vykladka'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Vykladka'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Vykladka' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Vykladka'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'KontejnerSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Vykladka'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Vykladka'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'Vykladka'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktVykl'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowMultipleValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktVykl'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowValueListEdits', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktVykl'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktVykl'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktVykl'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktVykl'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktVykl'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktVykl'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktVykl'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktVykl'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktVykl'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktVykl'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktVykl'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_BoundColumn', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktVykl'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Kontakt vykl' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktVykl'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktVykl'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHeads', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktVykl'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'0;1441;1441;1441;1441;1441' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktVykl'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktVykl'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktVykl'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_LimitToList', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktVykl'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListRows', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktVykl'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListWidth', @value=N'7200twip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktVykl'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'SELECT Kontakt.ID, Kontakt.Prijmeni, Kontakt.Krestni, Kontakt.Mobil, Kontakt.Telefon, Kontakt.Email
FROM Kontakt
ORDER BY Prijmeni, Krestni' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktVykl'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSourceType', @value=N'Table/View/StoredProc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktVykl'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'KontaktVykl' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktVykl'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'20' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktVykl'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktVykl'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktVykl'
GO

EXEC sys.sp_addextendedproperty @name=N'ShowOnlyRowSourceValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktVykl'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktVykl'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'KontaktVykl' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktVykl'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'KontejnerSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktVykl'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktVykl'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'KontaktVykl'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasVykladky'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasVykladky'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasVykladky'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasVykladky'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasVykladky'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasVykladky'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasVykladky'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasVykladky'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasVykladky'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasVykladky'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasVykladky'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Datum a èas' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasVykladky'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'General Date' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasVykladky'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasVykladky'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasVykladky'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'DatumCasVykladky' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasVykladky'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'21' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasVykladky'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasVykladky'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasVykladky'
GO

EXEC sys.sp_addextendedproperty @name=N'ShowDatePicker', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasVykladky'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasVykladky'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'DatumCasVykladky' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasVykladky'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'KontejnerSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasVykladky'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasVykladky'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'COLUMN',@level2name=N'DatumCasVykladky'
GO

EXEC sys.sp_addextendedproperty @name=N'AlternateBackShade', @value=N'95' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil'
GO

EXEC sys.sp_addextendedproperty @name=N'AlternateBackThemeColorIndex', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil'
GO

EXEC sys.sp_addextendedproperty @name=N'AlternateBackTint', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil'
GO

EXEC sys.sp_addextendedproperty @name=N'BackShade', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil'
GO

EXEC sys.sp_addextendedproperty @name=N'BackTint', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil'
GO

EXEC sys.sp_addextendedproperty @name=N'DatasheetForeThemeColorIndex', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil'
GO

EXEC sys.sp_addextendedproperty @name=N'DatasheetGridlinesThemeColorIndex', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil'
GO

EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'21.9.2011 20:47:28' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil'
GO

EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil'
GO

EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil'
GO

EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil'
GO

EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'27.10.2011 13:18:04' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'KontejnerSil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil'
GO

EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil'
GO

EXEC sys.sp_addextendedproperty @name=N'PublishToWeb', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil'
GO

EXEC sys.sp_addextendedproperty @name=N'ReadOnlyWhenDisconnected', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil'
GO

EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'282' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil'
GO

EXEC sys.sp_addextendedproperty @name=N'ThemeFontIndex', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil'
GO

EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil'
GO

EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil'
GO

ALTER TABLE [KontejnerSil]  WITH CHECK ADD  CONSTRAINT [KontejnerSil_FK00] FOREIGN KEY([DruhKusu])
REFERENCES [DruhKusu] ([ID])
GO

ALTER TABLE [KontejnerSil] CHECK CONSTRAINT [KontejnerSil_FK00]
GO

ALTER TABLE [KontejnerSil]  WITH CHECK ADD  CONSTRAINT [KontejnerSil_FK01] FOREIGN KEY([Vykladka])
REFERENCES [Firma] ([ID])
GO

ALTER TABLE [KontejnerSil] CHECK CONSTRAINT [KontejnerSil_FK01]
GO

ALTER TABLE [KontejnerSil]  WITH CHECK ADD  CONSTRAINT [KontejnerSil_FK02] FOREIGN KEY([AdresaNakladky])
REFERENCES [Firma] ([ID])
GO

ALTER TABLE [KontejnerSil] CHECK CONSTRAINT [KontejnerSil_FK02]
GO

ALTER TABLE [KontejnerSil]  WITH CHECK ADD  CONSTRAINT [KontejnerSil_FK03] FOREIGN KEY([KontaktVykl])
REFERENCES [Kontakt] ([ID])
GO

ALTER TABLE [KontejnerSil] CHECK CONSTRAINT [KontejnerSil_FK03]
GO

ALTER TABLE [KontejnerSil]  WITH CHECK ADD  CONSTRAINT [KontejnerSil_FK04] FOREIGN KEY([KontaktNakl])
REFERENCES [Kontakt] ([ID])
GO

ALTER TABLE [KontejnerSil] CHECK CONSTRAINT [KontejnerSil_FK04]
GO

ALTER TABLE [KontejnerSil]  WITH CHECK ADD  CONSTRAINT [KontejnerSil_FK05] FOREIGN KEY([Preprava])
REFERENCES [PrepravaSil] ([ID])
GO

ALTER TABLE [KontejnerSil] CHECK CONSTRAINT [KontejnerSil_FK05]
GO

ALTER TABLE [KontejnerSil]  WITH CHECK ADD  CONSTRAINT [KontejnerSil_FK06] FOREIGN KEY([TypKontejneru])
REFERENCES [TypKontejneru] ([ID])
GO

ALTER TABLE [KontejnerSil] CHECK CONSTRAINT [KontejnerSil_FK06]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ConstraintText', @value=N'Tento záznam nelze kvùli omezením relace mezi tabulkami TypKontejneru a Kontejner pøidat, zmìnit ani odstranit.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'KontejnerSil', @level2type=N'CONSTRAINT',@level2name=N'KontejnerSil_FK06'
GO

ALTER TABLE [KontejnerSil] ADD  CONSTRAINT [DF__Kontejner__GrossWeight] DEFAULT ((0)) FOR [GrossWeight]
GO

ALTER TABLE [KontejnerSil] ADD  CONSTRAINT [DF__Kontejner__VolumeWeight] DEFAULT ((0)) FOR [VolumeWeight]
GO

ALTER TABLE [KontejnerSil] ADD  CONSTRAINT [DF__Kontejner__LDM] DEFAULT ((0)) FOR [LDM]
GO

ALTER TABLE [KontejnerSil] ADD  CONSTRAINT [DF__Kontejner__CBM] DEFAULT ((0)) FOR [CBM]
GO






















CREATE TABLE [NakladySil](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Dodavatel] [int] NULL,
	[Sluzba] [int] NULL,
	[NakladyJednotka] [real] NOT NULL,
	[Mena] [nvarchar](10) NULL,
	[Mnozstvi] [real] NOT NULL,
	[Preprava] [int] NULL,
	[FakturaPrijata] [bit] NULL,
	[upsize_ts] [timestamp] NULL,
	[Castka]  AS CAST(NakladyJednotka*Mnozstvi AS real),
 CONSTRAINT [aaaaaNakladySil_PK] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'NakladySil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Dodavatel'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowMultipleValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Dodavatel'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowValueListEdits', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Dodavatel'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Dodavatel'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Dodavatel'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Dodavatel'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Dodavatel'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Dodavatel'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Dodavatel'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Dodavatel'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Dodavatel'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Dodavatel'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Dodavatel'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_BoundColumn', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Dodavatel'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Dodavatel'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHeads', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Dodavatel'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'0;1440' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Dodavatel'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Dodavatel'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Dodavatel'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_LimitToList', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Dodavatel'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListRows', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Dodavatel'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListWidth', @value=N'1440twip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Dodavatel'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'SELECT Firma.ID, Firma.Firma
FROM Firma
ORDER BY Firma' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Dodavatel'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSourceType', @value=N'Table/View/StoredProc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Dodavatel'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Dodavatel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Dodavatel'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Dodavatel'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Dodavatel'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Dodavatel'
GO

EXEC sys.sp_addextendedproperty @name=N'ShowOnlyRowSourceValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Dodavatel'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Dodavatel'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Dodavatel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Dodavatel'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'NakladySil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Dodavatel'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Dodavatel'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Dodavatel'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowMultipleValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowValueListEdits', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_BoundColumn', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Služba' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHeads', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'0;1440' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_LimitToList', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListRows', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListWidth', @value=N'1440twip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'SELECT Sluzba.ID, Sluzba.Sluzba
FROM Sluzba
ORDER BY Sluzba' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSourceType', @value=N'Table/View/StoredProc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Sluzba' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'ShowOnlyRowSourceValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Sluzba' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'NakladySil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'NakladyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'NakladyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'NakladyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'NakladyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'NakladyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'NakladyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'NakladyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'NakladyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'NakladyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'NakladyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'NakladyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'NakladyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Jednotkové náklady' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'NakladyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'NakladyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'NakladyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'NakladyJednotka' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'NakladyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'NakladyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'NakladyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'NakladyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'NakladyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'NakladyJednotka' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'NakladyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'NakladySil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'NakladyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'NakladyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'NakladyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowMultipleValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowValueListEdits', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_BoundColumn', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Mìna' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHeads', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'1134' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_LimitToList', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListRows', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListWidth', @value=N'0twip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'"Kè";"USD";"EUR"' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSourceType', @value=N'Value List' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Mena' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'ShowOnlyRowSourceValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Mena' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'NakladySil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'???????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Množství' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Mnozstvi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Mnozstvi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'NakladySil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowMultipleValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowValueListEdits', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_BoundColumn', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHeads', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'0;1440' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_LimitToList', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListRows', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListWidth', @value=N'1440twip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'SELECT Preprava.ID, Preprava.Cislo
FROM Preprava
ORDER BY Cislo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSourceType', @value=N'Table/View/StoredProc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Preprava' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'ShowOnlyRowSourceValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Preprava' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'NakladySil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'FakturaPrijata'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'FakturaPrijata'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'FakturaPrijata'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'FakturaPrijata'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'FakturaPrijata'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'FakturaPrijata'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'FakturaPrijata'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'FakturaPrijata'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'FakturaPrijata'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'FakturaPrijata'
GO

EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'FakturaPrijata'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'FakturaPrijata'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Faktura pøijata' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'FakturaPrijata'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'106' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'FakturaPrijata'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Format', @value=N'True/False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'FakturaPrijata'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'FakturaPrijata' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'FakturaPrijata'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'8' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'FakturaPrijata'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'FakturaPrijata'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'FakturaPrijata'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'FakturaPrijata'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'FakturaPrijata' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'FakturaPrijata'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'NakladySil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'FakturaPrijata'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'FakturaPrijata'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'COLUMN',@level2name=N'FakturaPrijata'
GO

EXEC sys.sp_addextendedproperty @name=N'AlternateBackShade', @value=N'95' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil'
GO

EXEC sys.sp_addextendedproperty @name=N'AlternateBackThemeColorIndex', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil'
GO

EXEC sys.sp_addextendedproperty @name=N'AlternateBackTint', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil'
GO

EXEC sys.sp_addextendedproperty @name=N'BackShade', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil'
GO

EXEC sys.sp_addextendedproperty @name=N'BackTint', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil'
GO

EXEC sys.sp_addextendedproperty @name=N'DatasheetForeThemeColorIndex', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil'
GO

EXEC sys.sp_addextendedproperty @name=N'DatasheetGridlinesThemeColorIndex', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil'
GO

EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'7.9.2011 8:04:31' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil'
GO

EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil'
GO

EXEC sys.sp_addextendedproperty @name=N'FCMinDesignVer', @value=N'14.0.0000.0000' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil'
GO

EXEC sys.sp_addextendedproperty @name=N'FCMinReadVer', @value=N'14.0.0000.0000' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil'
GO

EXEC sys.sp_addextendedproperty @name=N'FCMinWriteVer', @value=N'14.0.0000.0000' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil'
GO

EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil'
GO

EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil'
GO

EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'25.10.2011 17:15:56' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'NakladySil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil'
GO

EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil'
GO

EXEC sys.sp_addextendedproperty @name=N'PublishToWeb', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil'
GO

EXEC sys.sp_addextendedproperty @name=N'ReadOnlyWhenDisconnected', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil'
GO

EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'507' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil'
GO

EXEC sys.sp_addextendedproperty @name=N'ThemeFontIndex', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil'
GO

EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil'
GO

EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil'
GO

ALTER TABLE [NakladySil]  WITH CHECK ADD  CONSTRAINT [NakladySil_FK00] FOREIGN KEY([Dodavatel])
REFERENCES [Firma] ([ID])
GO

ALTER TABLE [NakladySil] CHECK CONSTRAINT [NakladySil_FK00]
GO

ALTER TABLE [NakladySil]  WITH CHECK ADD  CONSTRAINT [NakladySil_FK01] FOREIGN KEY([Sluzba])
REFERENCES [Sluzba] ([ID])
GO

ALTER TABLE [NakladySil] CHECK CONSTRAINT [NakladySil_FK01]
GO

ALTER TABLE [NakladySil]  WITH CHECK ADD  CONSTRAINT [NakladySil_FK02] FOREIGN KEY([Preprava])
REFERENCES [PrepravaSil] ([ID])
GO

ALTER TABLE [NakladySil] CHECK CONSTRAINT [NakladySil_FK02]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ConstraintText', @value=N'Tento záznam nelze kvùli omezením relace mezi tabulkami Preprava a Naklady pøidat, zmìnit ani odstranit.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NakladySil', @level2type=N'CONSTRAINT',@level2name=N'NakladySil_FK02'
GO

-- ALTER TABLE [NakladySil] ADD  DEFAULT ((0)) FOR [NakladyJednotka]
-- GO

-- ALTER TABLE [NakladySil] ADD  DEFAULT ((0)) FOR [Mnozstvi]
-- GO

ALTER TABLE [NakladySil] ADD  CONSTRAINT [DF__NakladySil__FakturaPrijata] DEFAULT ((0)) FOR [FakturaPrijata]
GO





















CREATE TABLE [VynosySil](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Odberatel] [int] NULL,
	[Sluzba] [int] NULL,
	[VynosyJednotka] [real] NOT NULL,
	[Mena] [nvarchar](10) NULL,
	[Mnozstvi] [real] NOT NULL,
	[Preprava] [int] NULL,
	[upsize_ts] [timestamp] NULL,
	[Castka]  AS CAST(VynosyJednotka*Mnozstvi AS real),
 CONSTRAINT [aaaaaVynosySil_PK] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'17' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'VynosySil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'ID'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Odberatel'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowMultipleValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Odberatel'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowValueListEdits', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Odberatel'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Odberatel'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Odberatel'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Odberatel'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Odberatel'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Odberatel'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Odberatel'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Odberatel'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Odberatel'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Odberatel'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Odberatel'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_BoundColumn', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Odberatel'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Odbìratel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Odberatel'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Odberatel'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHeads', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Odberatel'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'0;1440' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Odberatel'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Odberatel'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Odberatel'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_LimitToList', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Odberatel'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListRows', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Odberatel'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListWidth', @value=N'1440twip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Odberatel'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'SELECT Firma.ID, Firma.Firma
FROM Firma
ORDER BY Firma' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Odberatel'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSourceType', @value=N'Table/View/StoredProc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Odberatel'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Odberatel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Odberatel'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Odberatel'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Odberatel'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Odberatel'
GO

EXEC sys.sp_addextendedproperty @name=N'ShowOnlyRowSourceValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Odberatel'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Odberatel'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Odberatel' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Odberatel'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'VynosySil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Odberatel'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Odberatel'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Odberatel'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowMultipleValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowValueListEdits', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_BoundColumn', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Služba' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHeads', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'0;1440' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_LimitToList', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListRows', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListWidth', @value=N'1440twip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'SELECT Sluzba.ID, Sluzba.Sluzba
FROM Sluzba
ORDER BY Sluzba' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSourceType', @value=N'Table/View/StoredProc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Sluzba' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'ShowOnlyRowSourceValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Sluzba' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'VynosySil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Sluzba'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'VynosyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'VynosyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'VynosyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'VynosyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'VynosyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'VynosyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'VynosyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'VynosyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'VynosyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'VynosyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'VynosyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'VynosyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Jednotkové výnosy' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'VynosyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'VynosyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'VynosyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'VynosyJednotka' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'VynosyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'VynosyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'VynosyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'VynosyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'VynosyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'VynosyJednotka' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'VynosyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'VynosySil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'VynosyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'VynosyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'VynosyJednotka'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowMultipleValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowValueListEdits', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'?g??????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_BoundColumn', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Mìna' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHeads', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'1134' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_LimitToList', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListRows', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListWidth', @value=N'0twip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'"Kè";"USD";"EUR"' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSourceType', @value=N'Value List' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Mena' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'ShowOnlyRowSourceValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Mena' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'VynosySil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mena'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'DefaultValue', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Caption', @value=N'Množství' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Mnozstvi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'5' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Mnozstvi' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'VynosySil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'6' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Mnozstvi'
GO

EXEC sys.sp_addextendedproperty @name=N'AggregateType', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowMultipleValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowValueListEdits', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'AppendOnly', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1029' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'CurrencyLCID', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'????????' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_BoundColumn', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnCount', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnHeads', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ColumnWidths', @value=N'0;1440' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DecimalPlaces', @value=N'255' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'111' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_LimitToList', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListRows', @value=N'16' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ListWidth', @value=N'1440twip' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSource', @value=N'SELECT Preprava.ID, Preprava.Cislo
FROM Preprava
ORDER BY Cislo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_RowSourceType', @value=N'Table/View/StoredProc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Preprava' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'7' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'ResultType', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'ShowOnlyRowSourceValues', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Preprava' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'VynosySil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'TextAlign', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'COLUMN',@level2name=N'Preprava'
GO

EXEC sys.sp_addextendedproperty @name=N'AlternateBackShade', @value=N'95' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil'
GO

EXEC sys.sp_addextendedproperty @name=N'AlternateBackThemeColorIndex', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil'
GO

EXEC sys.sp_addextendedproperty @name=N'AlternateBackTint', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil'
GO

EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil'
GO

EXEC sys.sp_addextendedproperty @name=N'BackShade', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil'
GO

EXEC sys.sp_addextendedproperty @name=N'BackTint', @value=N'100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil'
GO

EXEC sys.sp_addextendedproperty @name=N'DatasheetForeThemeColorIndex', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil'
GO

EXEC sys.sp_addextendedproperty @name=N'DatasheetGridlinesThemeColorIndex', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil'
GO

EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'7.9.2011 8:04:31' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil'
GO

EXEC sys.sp_addextendedproperty @name=N'DisplayViewsOnSharePointSite', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil'
GO

EXEC sys.sp_addextendedproperty @name=N'FCMinDesignVer', @value=N'14.0.0000.0000' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil'
GO

EXEC sys.sp_addextendedproperty @name=N'FCMinReadVer', @value=N'14.0.0000.0000' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil'
GO

EXEC sys.sp_addextendedproperty @name=N'FCMinWriteVer', @value=N'14.0.0000.0000' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil'
GO

EXEC sys.sp_addextendedproperty @name=N'FilterOnLoad', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil'
GO

EXEC sys.sp_addextendedproperty @name=N'HideNewField', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil'
GO

EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'25.10.2011 17:15:56' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil'
GO

EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'VynosySil' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil'
GO

EXEC sys.sp_addextendedproperty @name=N'OrderByOnLoad', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil'
GO

EXEC sys.sp_addextendedproperty @name=N'PublishToWeb', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil'
GO

EXEC sys.sp_addextendedproperty @name=N'ReadOnlyWhenDisconnected', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil'
GO

EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'294' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil'
GO

EXEC sys.sp_addextendedproperty @name=N'ThemeFontIndex', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil'
GO

EXEC sys.sp_addextendedproperty @name=N'TotalsRow', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil'
GO

EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil'
GO

ALTER TABLE [VynosySil]  WITH CHECK ADD  CONSTRAINT [VynosySil_FK00] FOREIGN KEY([Preprava])
REFERENCES [PrepravaSil] ([ID])
GO

ALTER TABLE [VynosySil] CHECK CONSTRAINT [VynosySil_FK00]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_ConstraintText', @value=N'Tento záznam nelze kvùli omezením relace mezi tabulkami Preprava a Vynosy pøidat, zmìnit ani odstranit.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VynosySil', @level2type=N'CONSTRAINT',@level2name=N'VynosySil_FK00'
GO

-- ALTER TABLE [VynosySil] ADD  DEFAULT ((0)) FOR [VynosyJednotka]
-- GO

-- ALTER TABLE [VynosySil] ADD  DEFAULT ((0)) FOR [Mnozstvi]
-- GO
















IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[PrepravaSilNastaveniCisla]'))
DROP TRIGGER [PrepravaSilNastaveniCisla]
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER PrepravaSilNastaveniCisla 
   ON  PrepravaSil
   --INSTEAD OF INSERT
   FOR INSERT
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here

	-- UPDATE inserted SET Cislo=[Rok] + '-' + Right('000' + [ID],3);

	-- BEGIN TRAN
	-- INSERT INTO Preprava WITH (updlock) SELECT * FROM inserted
	-- COMMIT
	UPDATE PrepravaSil SET Cislo=CAST([Rok] AS VARCHAR) + '-HK' + Right('000' + CAST([ID] AS VARCHAR),3) WHERE ID =(SELECT ID FROM inserted);

END
GO
