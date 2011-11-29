/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Kontakt
	DROP CONSTRAINT Kontakt_FK00
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Tmp_Kontakt
	(
	ID int NOT NULL IDENTITY (1, 1),
	Firma int NOT NULL,
	Krestni nvarchar(255) NULL,
	Prijmeni nvarchar(255) NOT NULL,
	Pozice nvarchar(255) NULL,
	Telefon nvarchar(255) NULL,
	Mobil nvarchar(255) NULL,
	Email nvarchar(255) NULL,
	Fax nvarchar(255) NULL,
	upsize_ts timestamp NULL,
	Jmeno  AS (([Krestni]+' ')+[Prijmeni])
	)  ON [PRIMARY]
GO
DECLARE @v sql_variant 
SET @v = N'95'
EXECUTE sp_addextendedproperty N'AlternateBackShade', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', NULL, NULL
SET @v = N'1'
EXECUTE sp_addextendedproperty N'AlternateBackThemeColorIndex', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', NULL, NULL
SET @v = N'100'
EXECUTE sp_addextendedproperty N'AlternateBackTint', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', NULL, NULL
SET @v = N'0'
EXECUTE sp_addextendedproperty N'Attributes', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', NULL, NULL
SET @v = N'100'
EXECUTE sp_addextendedproperty N'BackShade', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', NULL, NULL
SET @v = N'100'
EXECUTE sp_addextendedproperty N'BackTint', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', NULL, NULL
SET @v = N'0'
EXECUTE sp_addextendedproperty N'DatasheetForeThemeColorIndex', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', NULL, NULL
SET @v = N'3'
EXECUTE sp_addextendedproperty N'DatasheetGridlinesThemeColorIndex', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', NULL, NULL
SET @v = N'18.9.2011 19:54:40'
EXECUTE sp_addextendedproperty N'DateCreated', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', NULL, NULL
SET @v = N'1'
EXECUTE sp_addextendedproperty N'DisplayViewsOnSharePointSite', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', NULL, NULL
SET @v = N'14.0.0000.0000'
EXECUTE sp_addextendedproperty N'FCMinDesignVer', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', NULL, NULL
SET @v = N'14.0.0000.0000'
EXECUTE sp_addextendedproperty N'FCMinReadVer', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', NULL, NULL
SET @v = N'14.0.0000.0000'
EXECUTE sp_addextendedproperty N'FCMinWriteVer', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', NULL, NULL
SET @v = N'False'
EXECUTE sp_addextendedproperty N'FilterOnLoad', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', NULL, NULL
SET @v = N'False'
EXECUTE sp_addextendedproperty N'HideNewField', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', NULL, NULL
SET @v = N'25.10.2011 17:15:56'
EXECUTE sp_addextendedproperty N'LastUpdated', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', NULL, NULL
SET @v = N'2'
EXECUTE sp_addextendedproperty N'MS_DefaultView', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', NULL, NULL
SET @v = N'False'
EXECUTE sp_addextendedproperty N'MS_OrderByOn', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', NULL, NULL
SET @v = N'0'
EXECUTE sp_addextendedproperty N'MS_Orientation', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', NULL, NULL
SET @v = N'Kontakt'
EXECUTE sp_addextendedproperty N'Name', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', NULL, NULL
SET @v = N'True'
EXECUTE sp_addextendedproperty N'OrderByOnLoad', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', NULL, NULL
SET @v = N'1'
EXECUTE sp_addextendedproperty N'PublishToWeb', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', NULL, NULL
SET @v = N'False'
EXECUTE sp_addextendedproperty N'ReadOnlyWhenDisconnected', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', NULL, NULL
SET @v = N'21'
EXECUTE sp_addextendedproperty N'RecordCount', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', NULL, NULL
SET @v = N'1'
EXECUTE sp_addextendedproperty N'ThemeFontIndex', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', NULL, NULL
SET @v = N'False'
EXECUTE sp_addextendedproperty N'TotalsRow', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', NULL, NULL
SET @v = N'True'
EXECUTE sp_addextendedproperty N'Updatable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', NULL, NULL
GO
DECLARE @v sql_variant 
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'AggregateType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'ID'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AllowZeroLength', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'ID'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AppendOnly', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'ID'
SET @v = N'17'
EXECUTE sp_addextendedproperty N'Attributes', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'ID'
SET @v = N'1029'
EXECUTE sp_addextendedproperty N'CollatingOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'ID'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'ColumnHidden', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'ID'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ColumnOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'ID'
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'ColumnWidth', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'ID'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'CurrencyLCID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'ID'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'DataUpdatable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'ID'
SET @v = N'ᓘ픊蝘䥖ႍ힥複恵'
EXECUTE sp_addextendedproperty N'GUID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'ID'
SET @v = N'ID'
EXECUTE sp_addextendedproperty N'Name', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'ID'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'OrdinalPosition', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'ID'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'Required', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'ID'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ResultType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'ID'
SET @v = N'4'
EXECUTE sp_addextendedproperty N'Size', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'ID'
SET @v = N'ID'
EXECUTE sp_addextendedproperty N'SourceField', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'ID'
SET @v = N'Kontakt'
EXECUTE sp_addextendedproperty N'SourceTable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'ID'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'TextAlign', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'ID'
SET @v = N'4'
EXECUTE sp_addextendedproperty N'Type', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'ID'
GO
DECLARE @v sql_variant 
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'AggregateType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Firma'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AllowMultipleValues', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Firma'
SET @v = N'True'
EXECUTE sp_addextendedproperty N'AllowValueListEdits', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Firma'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AllowZeroLength', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Firma'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AppendOnly', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Firma'
SET @v = N'1'
EXECUTE sp_addextendedproperty N'Attributes', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Firma'
SET @v = N'1029'
EXECUTE sp_addextendedproperty N'CollatingOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Firma'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'ColumnHidden', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Firma'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ColumnOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Firma'
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'ColumnWidth', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Firma'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'CurrencyLCID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Firma'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'DataUpdatable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Firma'
SET @v = N'荅왲䅵ꦡ凘犙렷'
EXECUTE sp_addextendedproperty N'GUID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Firma'
SET @v = N'Customer Details'
EXECUTE sp_addextendedproperty N'ListItemsEditForm', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Firma'
SET @v = N'1'
EXECUTE sp_addextendedproperty N'MS_BoundColumn', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Firma'
SET @v = N'2'
EXECUTE sp_addextendedproperty N'MS_ColumnCount', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Firma'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'MS_ColumnHeads', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Firma'
SET @v = N'0;1440'
EXECUTE sp_addextendedproperty N'MS_ColumnWidths', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Firma'
SET @v = N'255'
EXECUTE sp_addextendedproperty N'MS_DecimalPlaces', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Firma'
SET @v = N'111'
EXECUTE sp_addextendedproperty N'MS_DisplayControl', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Firma'
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'MS_LimitToList', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Firma'
SET @v = N'16'
EXECUTE sp_addextendedproperty N'MS_ListRows', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Firma'
SET @v = N'1440twip'
EXECUTE sp_addextendedproperty N'MS_ListWidth', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Firma'
SET @v = N'SELECT Firma.ID, Firma.Firma
FROM Firma
ORDER BY Firma'
EXECUTE sp_addextendedproperty N'MS_RowSource', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Firma'
SET @v = N'Table/View/StoredProc'
EXECUTE sp_addextendedproperty N'MS_RowSourceType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Firma'
SET @v = N'Firma'
EXECUTE sp_addextendedproperty N'Name', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Firma'
SET @v = N'1'
EXECUTE sp_addextendedproperty N'OrdinalPosition', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Firma'
SET @v = N'True'
EXECUTE sp_addextendedproperty N'Required', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Firma'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ResultType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Firma'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'ShowOnlyRowSourceValues', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Firma'
SET @v = N'4'
EXECUTE sp_addextendedproperty N'Size', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Firma'
SET @v = N'Firma'
EXECUTE sp_addextendedproperty N'SourceField', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Firma'
SET @v = N'Kontakt'
EXECUTE sp_addextendedproperty N'SourceTable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Firma'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'TextAlign', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Firma'
SET @v = N'4'
EXECUTE sp_addextendedproperty N'Type', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Firma'
GO
DECLARE @v sql_variant 
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'AggregateType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Krestni'
SET @v = N'True'
EXECUTE sp_addextendedproperty N'AllowZeroLength', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Krestni'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AppendOnly', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Krestni'
SET @v = N'2'
EXECUTE sp_addextendedproperty N'Attributes', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Krestni'
SET @v = N'1029'
EXECUTE sp_addextendedproperty N'CollatingOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Krestni'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'ColumnHidden', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Krestni'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ColumnOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Krestni'
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'ColumnWidth', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Krestni'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'CurrencyLCID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Krestni'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'DataUpdatable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Krestni'
SET @v = N'셽㈤溜䟨媓鱸⌁'
EXECUTE sp_addextendedproperty N'GUID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Krestni'
SET @v = N'109'
EXECUTE sp_addextendedproperty N'MS_DisplayControl', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Krestni'
SET @v = N'"Křestní jméno"'
EXECUTE sp_addextendedproperty N'MS_Format', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Krestni'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'MS_IMEMode', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Krestni'
SET @v = N'3'
EXECUTE sp_addextendedproperty N'MS_IMESentMode', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Krestni'
SET @v = N'Krestni'
EXECUTE sp_addextendedproperty N'Name', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Krestni'
SET @v = N'2'
EXECUTE sp_addextendedproperty N'OrdinalPosition', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Krestni'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'Required', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Krestni'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ResultType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Krestni'
SET @v = N'255'
EXECUTE sp_addextendedproperty N'Size', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Krestni'
SET @v = N'Krestni'
EXECUTE sp_addextendedproperty N'SourceField', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Krestni'
SET @v = N'Kontakt'
EXECUTE sp_addextendedproperty N'SourceTable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Krestni'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'TextAlign', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Krestni'
SET @v = N'10'
EXECUTE sp_addextendedproperty N'Type', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Krestni'
SET @v = N'True'
EXECUTE sp_addextendedproperty N'UnicodeCompression', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Krestni'
GO
DECLARE @v sql_variant 
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'AggregateType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Prijmeni'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AllowZeroLength', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Prijmeni'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AppendOnly', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Prijmeni'
SET @v = N'2'
EXECUTE sp_addextendedproperty N'Attributes', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Prijmeni'
SET @v = N'1029'
EXECUTE sp_addextendedproperty N'CollatingOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Prijmeni'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'ColumnHidden', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Prijmeni'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ColumnOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Prijmeni'
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'ColumnWidth', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Prijmeni'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'CurrencyLCID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Prijmeni'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'DataUpdatable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Prijmeni'
SET @v = N'袊�읿侤ⶨ鯷䷒ꆖ'
EXECUTE sp_addextendedproperty N'GUID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Prijmeni'
SET @v = N'Příjmení'
EXECUTE sp_addextendedproperty N'MS_Caption', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Prijmeni'
SET @v = N'109'
EXECUTE sp_addextendedproperty N'MS_DisplayControl', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Prijmeni'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'MS_IMEMode', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Prijmeni'
SET @v = N'3'
EXECUTE sp_addextendedproperty N'MS_IMESentMode', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Prijmeni'
SET @v = N'Prijmeni'
EXECUTE sp_addextendedproperty N'Name', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Prijmeni'
SET @v = N'3'
EXECUTE sp_addextendedproperty N'OrdinalPosition', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Prijmeni'
SET @v = N'True'
EXECUTE sp_addextendedproperty N'Required', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Prijmeni'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ResultType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Prijmeni'
SET @v = N'255'
EXECUTE sp_addextendedproperty N'Size', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Prijmeni'
SET @v = N'Prijmeni'
EXECUTE sp_addextendedproperty N'SourceField', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Prijmeni'
SET @v = N'Kontakt'
EXECUTE sp_addextendedproperty N'SourceTable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Prijmeni'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'TextAlign', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Prijmeni'
SET @v = N'10'
EXECUTE sp_addextendedproperty N'Type', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Prijmeni'
SET @v = N'True'
EXECUTE sp_addextendedproperty N'UnicodeCompression', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Prijmeni'
GO
DECLARE @v sql_variant 
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'AggregateType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Pozice'
SET @v = N'True'
EXECUTE sp_addextendedproperty N'AllowZeroLength', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Pozice'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AppendOnly', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Pozice'
SET @v = N'2'
EXECUTE sp_addextendedproperty N'Attributes', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Pozice'
SET @v = N'1029'
EXECUTE sp_addextendedproperty N'CollatingOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Pozice'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'ColumnHidden', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Pozice'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ColumnOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Pozice'
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'ColumnWidth', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Pozice'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'CurrencyLCID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Pozice'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'DataUpdatable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Pozice'
SET @v = N'池箝枫丢妾梉ಅㆱ'
EXECUTE sp_addextendedproperty N'GUID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Pozice'
SET @v = N'109'
EXECUTE sp_addextendedproperty N'MS_DisplayControl', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Pozice'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'MS_IMEMode', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Pozice'
SET @v = N'3'
EXECUTE sp_addextendedproperty N'MS_IMESentMode', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Pozice'
SET @v = N'Pozice'
EXECUTE sp_addextendedproperty N'Name', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Pozice'
SET @v = N'4'
EXECUTE sp_addextendedproperty N'OrdinalPosition', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Pozice'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'Required', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Pozice'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ResultType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Pozice'
SET @v = N'255'
EXECUTE sp_addextendedproperty N'Size', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Pozice'
SET @v = N'Pozice'
EXECUTE sp_addextendedproperty N'SourceField', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Pozice'
SET @v = N'Kontakt'
EXECUTE sp_addextendedproperty N'SourceTable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Pozice'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'TextAlign', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Pozice'
SET @v = N'10'
EXECUTE sp_addextendedproperty N'Type', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Pozice'
SET @v = N'True'
EXECUTE sp_addextendedproperty N'UnicodeCompression', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Pozice'
GO
DECLARE @v sql_variant 
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'AggregateType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Telefon'
SET @v = N'True'
EXECUTE sp_addextendedproperty N'AllowZeroLength', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Telefon'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AppendOnly', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Telefon'
SET @v = N'2'
EXECUTE sp_addextendedproperty N'Attributes', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Telefon'
SET @v = N'1029'
EXECUTE sp_addextendedproperty N'CollatingOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Telefon'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'ColumnHidden', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Telefon'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ColumnOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Telefon'
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'ColumnWidth', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Telefon'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'CurrencyLCID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Telefon'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'DataUpdatable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Telefon'
SET @v = N'Ṍס䜾䯼ඉ핚ﮠ䮎'
EXECUTE sp_addextendedproperty N'GUID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Telefon'
SET @v = N'109'
EXECUTE sp_addextendedproperty N'MS_DisplayControl', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Telefon'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'MS_IMEMode', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Telefon'
SET @v = N'3'
EXECUTE sp_addextendedproperty N'MS_IMESentMode', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Telefon'
SET @v = N'Telefon'
EXECUTE sp_addextendedproperty N'Name', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Telefon'
SET @v = N'5'
EXECUTE sp_addextendedproperty N'OrdinalPosition', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Telefon'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'Required', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Telefon'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ResultType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Telefon'
SET @v = N'255'
EXECUTE sp_addextendedproperty N'Size', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Telefon'
SET @v = N'Telefon'
EXECUTE sp_addextendedproperty N'SourceField', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Telefon'
SET @v = N'Kontakt'
EXECUTE sp_addextendedproperty N'SourceTable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Telefon'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'TextAlign', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Telefon'
SET @v = N'10'
EXECUTE sp_addextendedproperty N'Type', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Telefon'
SET @v = N'True'
EXECUTE sp_addextendedproperty N'UnicodeCompression', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Telefon'
GO
DECLARE @v sql_variant 
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'AggregateType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Mobil'
SET @v = N'True'
EXECUTE sp_addextendedproperty N'AllowZeroLength', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Mobil'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AppendOnly', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Mobil'
SET @v = N'2'
EXECUTE sp_addextendedproperty N'Attributes', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Mobil'
SET @v = N'1029'
EXECUTE sp_addextendedproperty N'CollatingOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Mobil'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'ColumnHidden', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Mobil'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ColumnOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Mobil'
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'ColumnWidth', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Mobil'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'CurrencyLCID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Mobil'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'DataUpdatable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Mobil'
SET @v = N'삁먇苈䛺몿噩罗'
EXECUTE sp_addextendedproperty N'GUID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Mobil'
SET @v = N'109'
EXECUTE sp_addextendedproperty N'MS_DisplayControl', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Mobil'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'MS_IMEMode', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Mobil'
SET @v = N'3'
EXECUTE sp_addextendedproperty N'MS_IMESentMode', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Mobil'
SET @v = N'Mobil'
EXECUTE sp_addextendedproperty N'Name', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Mobil'
SET @v = N'6'
EXECUTE sp_addextendedproperty N'OrdinalPosition', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Mobil'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'Required', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Mobil'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ResultType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Mobil'
SET @v = N'255'
EXECUTE sp_addextendedproperty N'Size', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Mobil'
SET @v = N'Mobil'
EXECUTE sp_addextendedproperty N'SourceField', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Mobil'
SET @v = N'Kontakt'
EXECUTE sp_addextendedproperty N'SourceTable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Mobil'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'TextAlign', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Mobil'
SET @v = N'10'
EXECUTE sp_addextendedproperty N'Type', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Mobil'
SET @v = N'True'
EXECUTE sp_addextendedproperty N'UnicodeCompression', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Mobil'
GO
DECLARE @v sql_variant 
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'AggregateType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Email'
SET @v = N'True'
EXECUTE sp_addextendedproperty N'AllowZeroLength', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Email'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AppendOnly', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Email'
SET @v = N'2'
EXECUTE sp_addextendedproperty N'Attributes', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Email'
SET @v = N'1029'
EXECUTE sp_addextendedproperty N'CollatingOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Email'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'ColumnHidden', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Email'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ColumnOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Email'
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'ColumnWidth', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Email'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'CurrencyLCID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Email'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'DataUpdatable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Email'
SET @v = N'朷叕鬧䐖겉풢髳譥'
EXECUTE sp_addextendedproperty N'GUID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Email'
SET @v = N'109'
EXECUTE sp_addextendedproperty N'MS_DisplayControl', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Email'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'MS_IMEMode', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Email'
SET @v = N'3'
EXECUTE sp_addextendedproperty N'MS_IMESentMode', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Email'
SET @v = N'Email'
EXECUTE sp_addextendedproperty N'Name', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Email'
SET @v = N'7'
EXECUTE sp_addextendedproperty N'OrdinalPosition', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Email'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'Required', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Email'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ResultType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Email'
SET @v = N'255'
EXECUTE sp_addextendedproperty N'Size', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Email'
SET @v = N'Email'
EXECUTE sp_addextendedproperty N'SourceField', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Email'
SET @v = N'Kontakt'
EXECUTE sp_addextendedproperty N'SourceTable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Email'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'TextAlign', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Email'
SET @v = N'10'
EXECUTE sp_addextendedproperty N'Type', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Email'
SET @v = N'True'
EXECUTE sp_addextendedproperty N'UnicodeCompression', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Kontakt', N'COLUMN', N'Email'
GO
SET IDENTITY_INSERT dbo.Tmp_Kontakt ON
GO
IF EXISTS(SELECT * FROM dbo.Kontakt)
	 EXEC('INSERT INTO dbo.Tmp_Kontakt (ID, Firma, Krestni, Prijmeni, Pozice, Telefon, Mobil, Email)
		SELECT ID, Firma, Krestni, Prijmeni, Pozice, Telefon, Mobil, Email FROM dbo.Kontakt WITH (HOLDLOCK TABLOCKX)')
GO
SET IDENTITY_INSERT dbo.Tmp_Kontakt OFF
GO
ALTER TABLE dbo.Aktivity
	DROP CONSTRAINT FK_Aktivity_Kontakt
GO
ALTER TABLE dbo.KontejnerSil
	DROP CONSTRAINT KontejnerSil_FK03
GO
ALTER TABLE dbo.KontejnerSil
	DROP CONSTRAINT KontejnerSil_FK04
GO
ALTER TABLE dbo.Kontejner
	DROP CONSTRAINT Kontejner_FK03
GO
ALTER TABLE dbo.Kontejner
	DROP CONSTRAINT Kontejner_FK04
GO
DROP TABLE dbo.Kontakt
GO
EXECUTE sp_rename N'dbo.Tmp_Kontakt', N'Kontakt', 'OBJECT' 
GO
ALTER TABLE dbo.Kontakt ADD CONSTRAINT
	aaaaaKontakt_PK PRIMARY KEY NONCLUSTERED 
	(
	ID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
CREATE NONCLUSTERED INDEX FirmaKontakt ON dbo.Kontakt
	(
	Firma
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX ID ON dbo.Kontakt
	(
	ID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE dbo.Kontakt WITH NOCHECK ADD CONSTRAINT
	Kontakt_FK00 FOREIGN KEY
	(
	Firma
	) REFERENCES dbo.Firma
	(
	ID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
DECLARE @v sql_variant 
SET @v = N'Tento záznam nelze kvůli omezením relace mezi tabulkami Firma a Kontakt přidat, změnit ani odstranit.'
EXECUTE sp_addextendedproperty N'MS_ConstraintText', @v, N'SCHEMA', N'dbo', N'TABLE', N'Kontakt', N'CONSTRAINT', N'Kontakt_FK00'
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Kontejner WITH NOCHECK ADD CONSTRAINT
	Kontejner_FK03 FOREIGN KEY
	(
	KontaktVykl
	) REFERENCES dbo.Kontakt
	(
	ID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Kontejner WITH NOCHECK ADD CONSTRAINT
	Kontejner_FK04 FOREIGN KEY
	(
	KontaktNakl
	) REFERENCES dbo.Kontakt
	(
	ID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.KontejnerSil WITH NOCHECK ADD CONSTRAINT
	KontejnerSil_FK03 FOREIGN KEY
	(
	KontaktVykl
	) REFERENCES dbo.Kontakt
	(
	ID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.KontejnerSil WITH NOCHECK ADD CONSTRAINT
	KontejnerSil_FK04 FOREIGN KEY
	(
	KontaktNakl
	) REFERENCES dbo.Kontakt
	(
	ID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Aktivity ADD CONSTRAINT
	FK_Aktivity_Kontakt FOREIGN KEY
	(
	Kontakt
	) REFERENCES dbo.Kontakt
	(
	ID
	) ON UPDATE  NO ACTION 
	 ON DELETE  SET NULL 
	
GO
COMMIT
