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
ALTER TABLE dbo.Naklady
	DROP CONSTRAINT Naklady_FK02
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Naklady
	DROP CONSTRAINT Naklady_FK01
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Naklady
	DROP CONSTRAINT Naklady_FK00
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Naklady
	DROP CONSTRAINT DF__Naklady__Naklady__66EA454A
GO
ALTER TABLE dbo.Naklady
	DROP CONSTRAINT DF__Naklady__Mnozstv__67DE6983
GO
ALTER TABLE dbo.Naklady
	DROP CONSTRAINT DF__Naklady__Faktura__68D28DBC
GO
CREATE TABLE dbo.Tmp_Naklady
	(
	ID int NOT NULL IDENTITY (1, 1),
	Dodavatel int NOT NULL,
	Sluzba int NOT NULL,
	NakladyJednotka real NOT NULL,
	Mena nvarchar(10) NOT NULL,
	Mnozstvi real NOT NULL,
	Preprava int NOT NULL,
	FakturaPrijata bit NOT NULL,
	upsize_ts timestamp NULL,
	Castka  AS ([NakladyJednotka]*[Mnozstvi])
	)  ON [PRIMARY]
GO
DECLARE @v sql_variant 
SET @v = N'95'
EXECUTE sp_addextendedproperty N'AlternateBackShade', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', NULL, NULL
SET @v = N'1'
EXECUTE sp_addextendedproperty N'AlternateBackThemeColorIndex', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', NULL, NULL
SET @v = N'100'
EXECUTE sp_addextendedproperty N'AlternateBackTint', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', NULL, NULL
SET @v = N'0'
EXECUTE sp_addextendedproperty N'Attributes', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', NULL, NULL
SET @v = N'100'
EXECUTE sp_addextendedproperty N'BackShade', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', NULL, NULL
SET @v = N'100'
EXECUTE sp_addextendedproperty N'BackTint', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', NULL, NULL
SET @v = N'0'
EXECUTE sp_addextendedproperty N'DatasheetForeThemeColorIndex', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', NULL, NULL
SET @v = N'3'
EXECUTE sp_addextendedproperty N'DatasheetGridlinesThemeColorIndex', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', NULL, NULL
SET @v = N'7.9.2011 8:04:31'
EXECUTE sp_addextendedproperty N'DateCreated', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', NULL, NULL
SET @v = N'1'
EXECUTE sp_addextendedproperty N'DisplayViewsOnSharePointSite', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', NULL, NULL
SET @v = N'14.0.0000.0000'
EXECUTE sp_addextendedproperty N'FCMinDesignVer', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', NULL, NULL
SET @v = N'14.0.0000.0000'
EXECUTE sp_addextendedproperty N'FCMinReadVer', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', NULL, NULL
SET @v = N'14.0.0000.0000'
EXECUTE sp_addextendedproperty N'FCMinWriteVer', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', NULL, NULL
SET @v = N'False'
EXECUTE sp_addextendedproperty N'FilterOnLoad', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', NULL, NULL
SET @v = N'False'
EXECUTE sp_addextendedproperty N'HideNewField', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', NULL, NULL
SET @v = N'25.10.2011 17:15:56'
EXECUTE sp_addextendedproperty N'LastUpdated', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', NULL, NULL
SET @v = N'2'
EXECUTE sp_addextendedproperty N'MS_DefaultView', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', NULL, NULL
SET @v = N'False'
EXECUTE sp_addextendedproperty N'MS_OrderByOn', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', NULL, NULL
SET @v = N'0'
EXECUTE sp_addextendedproperty N'MS_Orientation', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', NULL, NULL
SET @v = N'Naklady'
EXECUTE sp_addextendedproperty N'Name', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', NULL, NULL
SET @v = N'True'
EXECUTE sp_addextendedproperty N'OrderByOnLoad', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', NULL, NULL
SET @v = N'1'
EXECUTE sp_addextendedproperty N'PublishToWeb', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', NULL, NULL
SET @v = N'False'
EXECUTE sp_addextendedproperty N'ReadOnlyWhenDisconnected', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', NULL, NULL
SET @v = N'531'
EXECUTE sp_addextendedproperty N'RecordCount', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', NULL, NULL
SET @v = N'1'
EXECUTE sp_addextendedproperty N'ThemeFontIndex', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', NULL, NULL
SET @v = N'False'
EXECUTE sp_addextendedproperty N'TotalsRow', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', NULL, NULL
SET @v = N'True'
EXECUTE sp_addextendedproperty N'Updatable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', NULL, NULL
GO
DECLARE @v sql_variant 
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'AggregateType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'ID'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AllowZeroLength', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'ID'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AppendOnly', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'ID'
SET @v = N'17'
EXECUTE sp_addextendedproperty N'Attributes', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'ID'
SET @v = N'1029'
EXECUTE sp_addextendedproperty N'CollatingOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'ID'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'ColumnHidden', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'ID'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ColumnOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'ID'
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'ColumnWidth', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'ID'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'CurrencyLCID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'ID'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'DataUpdatable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'ID'
SET @v = N'噛㴫骚䉖㒧囧䵯ꑉ'
EXECUTE sp_addextendedproperty N'GUID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'ID'
SET @v = N'ID'
EXECUTE sp_addextendedproperty N'Name', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'ID'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'OrdinalPosition', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'ID'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'Required', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'ID'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ResultType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'ID'
SET @v = N'4'
EXECUTE sp_addextendedproperty N'Size', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'ID'
SET @v = N'ID'
EXECUTE sp_addextendedproperty N'SourceField', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'ID'
SET @v = N'Naklady'
EXECUTE sp_addextendedproperty N'SourceTable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'ID'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'TextAlign', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'ID'
SET @v = N'4'
EXECUTE sp_addextendedproperty N'Type', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'ID'
GO
DECLARE @v sql_variant 
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'AggregateType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Dodavatel'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AllowMultipleValues', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Dodavatel'
SET @v = N'True'
EXECUTE sp_addextendedproperty N'AllowValueListEdits', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Dodavatel'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AllowZeroLength', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Dodavatel'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AppendOnly', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Dodavatel'
SET @v = N'1'
EXECUTE sp_addextendedproperty N'Attributes', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Dodavatel'
SET @v = N'1029'
EXECUTE sp_addextendedproperty N'CollatingOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Dodavatel'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'ColumnHidden', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Dodavatel'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ColumnOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Dodavatel'
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'ColumnWidth', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Dodavatel'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'CurrencyLCID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Dodavatel'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'DataUpdatable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Dodavatel'
SET @v = N'ᠠ甞䏴䒜薴迎杺'
EXECUTE sp_addextendedproperty N'GUID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Dodavatel'
SET @v = N'1'
EXECUTE sp_addextendedproperty N'MS_BoundColumn', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Dodavatel'
SET @v = N'2'
EXECUTE sp_addextendedproperty N'MS_ColumnCount', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Dodavatel'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'MS_ColumnHeads', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Dodavatel'
SET @v = N'0;1440'
EXECUTE sp_addextendedproperty N'MS_ColumnWidths', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Dodavatel'
SET @v = N'255'
EXECUTE sp_addextendedproperty N'MS_DecimalPlaces', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Dodavatel'
SET @v = N'111'
EXECUTE sp_addextendedproperty N'MS_DisplayControl', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Dodavatel'
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'MS_LimitToList', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Dodavatel'
SET @v = N'16'
EXECUTE sp_addextendedproperty N'MS_ListRows', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Dodavatel'
SET @v = N'1440twip'
EXECUTE sp_addextendedproperty N'MS_ListWidth', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Dodavatel'
SET @v = N'SELECT Firma.ID, Firma.Firma
FROM Firma
ORDER BY Firma'
EXECUTE sp_addextendedproperty N'MS_RowSource', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Dodavatel'
SET @v = N'Table/View/StoredProc'
EXECUTE sp_addextendedproperty N'MS_RowSourceType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Dodavatel'
SET @v = N'Dodavatel'
EXECUTE sp_addextendedproperty N'Name', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Dodavatel'
SET @v = N'1'
EXECUTE sp_addextendedproperty N'OrdinalPosition', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Dodavatel'
SET @v = N'True'
EXECUTE sp_addextendedproperty N'Required', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Dodavatel'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ResultType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Dodavatel'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'ShowOnlyRowSourceValues', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Dodavatel'
SET @v = N'4'
EXECUTE sp_addextendedproperty N'Size', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Dodavatel'
SET @v = N'Dodavatel'
EXECUTE sp_addextendedproperty N'SourceField', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Dodavatel'
SET @v = N'Naklady'
EXECUTE sp_addextendedproperty N'SourceTable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Dodavatel'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'TextAlign', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Dodavatel'
SET @v = N'4'
EXECUTE sp_addextendedproperty N'Type', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Dodavatel'
GO
DECLARE @v sql_variant 
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'AggregateType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Sluzba'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AllowMultipleValues', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Sluzba'
SET @v = N'True'
EXECUTE sp_addextendedproperty N'AllowValueListEdits', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Sluzba'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AllowZeroLength', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Sluzba'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AppendOnly', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Sluzba'
SET @v = N'1'
EXECUTE sp_addextendedproperty N'Attributes', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Sluzba'
SET @v = N'1029'
EXECUTE sp_addextendedproperty N'CollatingOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Sluzba'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'ColumnHidden', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Sluzba'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ColumnOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Sluzba'
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'ColumnWidth', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Sluzba'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'CurrencyLCID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Sluzba'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'DataUpdatable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Sluzba'
SET @v = N'ቊ慤꽁侵䮽΄쫬㈸'
EXECUTE sp_addextendedproperty N'GUID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Sluzba'
SET @v = N'1'
EXECUTE sp_addextendedproperty N'MS_BoundColumn', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Sluzba'
SET @v = N'Služba'
EXECUTE sp_addextendedproperty N'MS_Caption', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Sluzba'
SET @v = N'2'
EXECUTE sp_addextendedproperty N'MS_ColumnCount', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Sluzba'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'MS_ColumnHeads', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Sluzba'
SET @v = N'0;1440'
EXECUTE sp_addextendedproperty N'MS_ColumnWidths', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Sluzba'
SET @v = N'255'
EXECUTE sp_addextendedproperty N'MS_DecimalPlaces', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Sluzba'
SET @v = N'111'
EXECUTE sp_addextendedproperty N'MS_DisplayControl', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Sluzba'
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'MS_LimitToList', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Sluzba'
SET @v = N'16'
EXECUTE sp_addextendedproperty N'MS_ListRows', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Sluzba'
SET @v = N'1440twip'
EXECUTE sp_addextendedproperty N'MS_ListWidth', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Sluzba'
SET @v = N'SELECT Sluzba.ID, Sluzba.Sluzba
FROM Sluzba
ORDER BY Sluzba'
EXECUTE sp_addextendedproperty N'MS_RowSource', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Sluzba'
SET @v = N'Table/View/StoredProc'
EXECUTE sp_addextendedproperty N'MS_RowSourceType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Sluzba'
SET @v = N'Sluzba'
EXECUTE sp_addextendedproperty N'Name', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Sluzba'
SET @v = N'2'
EXECUTE sp_addextendedproperty N'OrdinalPosition', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Sluzba'
SET @v = N'True'
EXECUTE sp_addextendedproperty N'Required', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Sluzba'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ResultType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Sluzba'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'ShowOnlyRowSourceValues', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Sluzba'
SET @v = N'4'
EXECUTE sp_addextendedproperty N'Size', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Sluzba'
SET @v = N'Sluzba'
EXECUTE sp_addextendedproperty N'SourceField', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Sluzba'
SET @v = N'Naklady'
EXECUTE sp_addextendedproperty N'SourceTable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Sluzba'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'TextAlign', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Sluzba'
SET @v = N'4'
EXECUTE sp_addextendedproperty N'Type', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Sluzba'
GO
DECLARE @v sql_variant 
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'AggregateType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'NakladyJednotka'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AllowZeroLength', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'NakladyJednotka'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AppendOnly', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'NakladyJednotka'
SET @v = N'1'
EXECUTE sp_addextendedproperty N'Attributes', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'NakladyJednotka'
SET @v = N'1029'
EXECUTE sp_addextendedproperty N'CollatingOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'NakladyJednotka'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'ColumnHidden', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'NakladyJednotka'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ColumnOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'NakladyJednotka'
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'ColumnWidth', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'NakladyJednotka'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'CurrencyLCID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'NakladyJednotka'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'DataUpdatable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'NakladyJednotka'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'DefaultValue', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'NakladyJednotka'
SET @v = N'붫덙䉨䮹㊓泧푹'
EXECUTE sp_addextendedproperty N'GUID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'NakladyJednotka'
SET @v = N'Jednotkové náklady'
EXECUTE sp_addextendedproperty N'MS_Caption', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'NakladyJednotka'
SET @v = N'255'
EXECUTE sp_addextendedproperty N'MS_DecimalPlaces', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'NakladyJednotka'
SET @v = N'109'
EXECUTE sp_addextendedproperty N'MS_DisplayControl', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'NakladyJednotka'
SET @v = N'NakladyJednotka'
EXECUTE sp_addextendedproperty N'Name', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'NakladyJednotka'
SET @v = N'3'
EXECUTE sp_addextendedproperty N'OrdinalPosition', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'NakladyJednotka'
SET @v = N'True'
EXECUTE sp_addextendedproperty N'Required', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'NakladyJednotka'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ResultType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'NakladyJednotka'
SET @v = N'4'
EXECUTE sp_addextendedproperty N'Size', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'NakladyJednotka'
SET @v = N'NakladyJednotka'
EXECUTE sp_addextendedproperty N'SourceField', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'NakladyJednotka'
SET @v = N'Naklady'
EXECUTE sp_addextendedproperty N'SourceTable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'NakladyJednotka'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'TextAlign', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'NakladyJednotka'
SET @v = N'6'
EXECUTE sp_addextendedproperty N'Type', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'NakladyJednotka'
GO
DECLARE @v sql_variant 
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'AggregateType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mena'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AllowMultipleValues', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mena'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AllowValueListEdits', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mena'
SET @v = N'True'
EXECUTE sp_addextendedproperty N'AllowZeroLength', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mena'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AppendOnly', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mena'
SET @v = N'2'
EXECUTE sp_addextendedproperty N'Attributes', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mena'
SET @v = N'1029'
EXECUTE sp_addextendedproperty N'CollatingOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mena'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'ColumnHidden', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mena'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ColumnOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mena'
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'ColumnWidth', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mena'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'CurrencyLCID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mena'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'DataUpdatable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mena'
SET @v = N'ꔱ蚓듻䀗솱䉥됨鎅'
EXECUTE sp_addextendedproperty N'GUID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mena'
SET @v = N'1'
EXECUTE sp_addextendedproperty N'MS_BoundColumn', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mena'
SET @v = N'Měna'
EXECUTE sp_addextendedproperty N'MS_Caption', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mena'
SET @v = N'1'
EXECUTE sp_addextendedproperty N'MS_ColumnCount', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mena'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'MS_ColumnHeads', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mena'
SET @v = N'1134'
EXECUTE sp_addextendedproperty N'MS_ColumnWidths', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mena'
SET @v = N'111'
EXECUTE sp_addextendedproperty N'MS_DisplayControl', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mena'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'MS_IMEMode', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mena'
SET @v = N'3'
EXECUTE sp_addextendedproperty N'MS_IMESentMode', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mena'
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'MS_LimitToList', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mena'
SET @v = N'16'
EXECUTE sp_addextendedproperty N'MS_ListRows', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mena'
SET @v = N'0twip'
EXECUTE sp_addextendedproperty N'MS_ListWidth', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mena'
SET @v = N'"Kč";"USD";"EUR"'
EXECUTE sp_addextendedproperty N'MS_RowSource', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mena'
SET @v = N'Value List'
EXECUTE sp_addextendedproperty N'MS_RowSourceType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mena'
SET @v = N'Mena'
EXECUTE sp_addextendedproperty N'Name', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mena'
SET @v = N'4'
EXECUTE sp_addextendedproperty N'OrdinalPosition', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mena'
SET @v = N'True'
EXECUTE sp_addextendedproperty N'Required', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mena'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ResultType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mena'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'ShowOnlyRowSourceValues', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mena'
SET @v = N'10'
EXECUTE sp_addextendedproperty N'Size', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mena'
SET @v = N'Mena'
EXECUTE sp_addextendedproperty N'SourceField', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mena'
SET @v = N'Naklady'
EXECUTE sp_addextendedproperty N'SourceTable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mena'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'TextAlign', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mena'
SET @v = N'10'
EXECUTE sp_addextendedproperty N'Type', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mena'
SET @v = N'True'
EXECUTE sp_addextendedproperty N'UnicodeCompression', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mena'
GO
DECLARE @v sql_variant 
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'AggregateType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mnozstvi'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AllowZeroLength', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mnozstvi'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AppendOnly', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mnozstvi'
SET @v = N'1'
EXECUTE sp_addextendedproperty N'Attributes', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mnozstvi'
SET @v = N'1029'
EXECUTE sp_addextendedproperty N'CollatingOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mnozstvi'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'ColumnHidden', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mnozstvi'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ColumnOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mnozstvi'
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'ColumnWidth', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mnozstvi'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'CurrencyLCID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mnozstvi'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'DataUpdatable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mnozstvi'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'DefaultValue', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mnozstvi'
SET @v = N'჻ꢖ舗䯹廉㗧씛'
EXECUTE sp_addextendedproperty N'GUID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mnozstvi'
SET @v = N'Množství'
EXECUTE sp_addextendedproperty N'MS_Caption', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mnozstvi'
SET @v = N'255'
EXECUTE sp_addextendedproperty N'MS_DecimalPlaces', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mnozstvi'
SET @v = N'109'
EXECUTE sp_addextendedproperty N'MS_DisplayControl', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mnozstvi'
SET @v = N'Mnozstvi'
EXECUTE sp_addextendedproperty N'Name', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mnozstvi'
SET @v = N'5'
EXECUTE sp_addextendedproperty N'OrdinalPosition', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mnozstvi'
SET @v = N'True'
EXECUTE sp_addextendedproperty N'Required', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mnozstvi'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ResultType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mnozstvi'
SET @v = N'4'
EXECUTE sp_addextendedproperty N'Size', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mnozstvi'
SET @v = N'Mnozstvi'
EXECUTE sp_addextendedproperty N'SourceField', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mnozstvi'
SET @v = N'Naklady'
EXECUTE sp_addextendedproperty N'SourceTable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mnozstvi'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'TextAlign', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mnozstvi'
SET @v = N'6'
EXECUTE sp_addextendedproperty N'Type', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Mnozstvi'
GO
DECLARE @v sql_variant 
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'AggregateType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Preprava'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AllowMultipleValues', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Preprava'
SET @v = N'True'
EXECUTE sp_addextendedproperty N'AllowValueListEdits', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Preprava'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AllowZeroLength', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Preprava'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AppendOnly', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Preprava'
SET @v = N'1'
EXECUTE sp_addextendedproperty N'Attributes', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Preprava'
SET @v = N'1029'
EXECUTE sp_addextendedproperty N'CollatingOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Preprava'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'ColumnHidden', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Preprava'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ColumnOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Preprava'
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'ColumnWidth', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Preprava'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'CurrencyLCID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Preprava'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'DataUpdatable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Preprava'
SET @v = N'唂萔넆䭘䎂�蟪'
EXECUTE sp_addextendedproperty N'GUID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Preprava'
SET @v = N'1'
EXECUTE sp_addextendedproperty N'MS_BoundColumn', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Preprava'
SET @v = N'2'
EXECUTE sp_addextendedproperty N'MS_ColumnCount', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Preprava'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'MS_ColumnHeads', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Preprava'
SET @v = N'0;1440'
EXECUTE sp_addextendedproperty N'MS_ColumnWidths', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Preprava'
SET @v = N'255'
EXECUTE sp_addextendedproperty N'MS_DecimalPlaces', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Preprava'
SET @v = N'111'
EXECUTE sp_addextendedproperty N'MS_DisplayControl', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Preprava'
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'MS_LimitToList', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Preprava'
SET @v = N'16'
EXECUTE sp_addextendedproperty N'MS_ListRows', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Preprava'
SET @v = N'1440twip'
EXECUTE sp_addextendedproperty N'MS_ListWidth', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Preprava'
SET @v = N'SELECT Preprava.ID, Preprava.Cislo
FROM Preprava
ORDER BY Cislo'
EXECUTE sp_addextendedproperty N'MS_RowSource', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Preprava'
SET @v = N'Table/View/StoredProc'
EXECUTE sp_addextendedproperty N'MS_RowSourceType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Preprava'
SET @v = N'Preprava'
EXECUTE sp_addextendedproperty N'Name', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Preprava'
SET @v = N'7'
EXECUTE sp_addextendedproperty N'OrdinalPosition', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Preprava'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'Required', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Preprava'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ResultType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Preprava'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'ShowOnlyRowSourceValues', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Preprava'
SET @v = N'4'
EXECUTE sp_addextendedproperty N'Size', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Preprava'
SET @v = N'Preprava'
EXECUTE sp_addextendedproperty N'SourceField', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Preprava'
SET @v = N'Naklady'
EXECUTE sp_addextendedproperty N'SourceTable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Preprava'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'TextAlign', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Preprava'
SET @v = N'4'
EXECUTE sp_addextendedproperty N'Type', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'Preprava'
GO
DECLARE @v sql_variant 
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'AggregateType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'FakturaPrijata'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AllowZeroLength', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'FakturaPrijata'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AppendOnly', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'FakturaPrijata'
SET @v = N'1'
EXECUTE sp_addextendedproperty N'Attributes', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'FakturaPrijata'
SET @v = N'1029'
EXECUTE sp_addextendedproperty N'CollatingOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'FakturaPrijata'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'ColumnHidden', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'FakturaPrijata'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ColumnOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'FakturaPrijata'
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'ColumnWidth', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'FakturaPrijata'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'CurrencyLCID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'FakturaPrijata'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'DataUpdatable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'FakturaPrijata'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'DefaultValue', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'FakturaPrijata'
SET @v = N'村侸䶶릒㓋맭땞'
EXECUTE sp_addextendedproperty N'GUID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'FakturaPrijata'
SET @v = N'Faktura přijata'
EXECUTE sp_addextendedproperty N'MS_Caption', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'FakturaPrijata'
SET @v = N'106'
EXECUTE sp_addextendedproperty N'MS_DisplayControl', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'FakturaPrijata'
SET @v = N'True/False'
EXECUTE sp_addextendedproperty N'MS_Format', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'FakturaPrijata'
SET @v = N'FakturaPrijata'
EXECUTE sp_addextendedproperty N'Name', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'FakturaPrijata'
SET @v = N'8'
EXECUTE sp_addextendedproperty N'OrdinalPosition', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'FakturaPrijata'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'Required', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'FakturaPrijata'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ResultType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'FakturaPrijata'
SET @v = N'1'
EXECUTE sp_addextendedproperty N'Size', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'FakturaPrijata'
SET @v = N'FakturaPrijata'
EXECUTE sp_addextendedproperty N'SourceField', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'FakturaPrijata'
SET @v = N'Naklady'
EXECUTE sp_addextendedproperty N'SourceTable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'FakturaPrijata'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'TextAlign', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'FakturaPrijata'
SET @v = N'1'
EXECUTE sp_addextendedproperty N'Type', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_Naklady', N'COLUMN', N'FakturaPrijata'
GO
ALTER TABLE dbo.Tmp_Naklady ADD CONSTRAINT
	DF__Naklady__Naklady__66EA454A DEFAULT ((0)) FOR NakladyJednotka
GO
ALTER TABLE dbo.Tmp_Naklady ADD CONSTRAINT
	DF__Naklady__Mnozstv__67DE6983 DEFAULT ((0)) FOR Mnozstvi
GO
ALTER TABLE dbo.Tmp_Naklady ADD CONSTRAINT
	DF__Naklady__Faktura__68D28DBC DEFAULT ((0)) FOR FakturaPrijata
GO
SET IDENTITY_INSERT dbo.Tmp_Naklady ON
GO
IF EXISTS(SELECT * FROM dbo.Naklady)
	 EXEC('INSERT INTO dbo.Tmp_Naklady (ID, Dodavatel, Sluzba, NakladyJednotka, Mena, Mnozstvi, Preprava, FakturaPrijata)
		SELECT ID, Dodavatel, Sluzba, NakladyJednotka, Mena, Mnozstvi, Preprava, FakturaPrijata FROM dbo.Naklady WITH (HOLDLOCK TABLOCKX)')
GO
SET IDENTITY_INSERT dbo.Tmp_Naklady OFF
GO
DROP TABLE dbo.Naklady
GO
EXECUTE sp_rename N'dbo.Tmp_Naklady', N'Naklady', 'OBJECT' 
GO
ALTER TABLE dbo.Naklady ADD CONSTRAINT
	aaaaaNaklady_PK PRIMARY KEY NONCLUSTERED 
	(
	ID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
CREATE NONCLUSTERED INDEX [{24A5FD13-6285-40AA-BB76-41AC41E8643C}] ON dbo.Naklady
	(
	Dodavatel
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [{9969B7C0-B7D4-49A0-BD1E-D6BF631F5151}] ON dbo.Naklady
	(
	Sluzba
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [{EDB83551-8756-463A-B5B4-761FA6E74129}] ON dbo.Naklady
	(
	Preprava
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE dbo.Naklady WITH NOCHECK ADD CONSTRAINT
	Naklady_FK00 FOREIGN KEY
	(
	Dodavatel
	) REFERENCES dbo.Firma
	(
	ID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Naklady WITH NOCHECK ADD CONSTRAINT
	Naklady_FK01 FOREIGN KEY
	(
	Sluzba
	) REFERENCES dbo.Sluzba
	(
	ID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Naklady WITH NOCHECK ADD CONSTRAINT
	Naklady_FK02 FOREIGN KEY
	(
	Preprava
	) REFERENCES dbo.Preprava
	(
	ID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
DECLARE @v sql_variant 
SET @v = N'Tento záznam nelze kvůli omezením relace mezi tabulkami Preprava a Naklady přidat, změnit ani odstranit.'
EXECUTE sp_addextendedproperty N'MS_ConstraintText', @v, N'SCHEMA', N'dbo', N'TABLE', N'Naklady', N'CONSTRAINT', N'Naklady_FK02'
GO
COMMIT



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
ALTER TABLE dbo.NakladySil
	DROP CONSTRAINT NakladySil_FK02
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.NakladySil
	DROP CONSTRAINT NakladySil_FK01
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.NakladySil
	DROP CONSTRAINT NakladySil_FK00
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.NakladySil
	DROP CONSTRAINT DF__NakladySil__FakturaPrijata
GO
CREATE TABLE dbo.Tmp_NakladySil
	(
	ID int NOT NULL IDENTITY (1, 1),
	Dodavatel int NULL,
	Sluzba int NULL,
	NakladyJednotka real NOT NULL,
	Mena nvarchar(10) NULL,
	Mnozstvi real NOT NULL,
	Preprava int NOT NULL,
	FakturaPrijata bit NULL,
	upsize_ts timestamp NULL,
	Castka  AS (CONVERT([real],[NakladyJednotka]*[Mnozstvi],(0)))
	)  ON [PRIMARY]
GO
DECLARE @v sql_variant 
SET @v = N'95'
EXECUTE sp_addextendedproperty N'AlternateBackShade', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', NULL, NULL
SET @v = N'1'
EXECUTE sp_addextendedproperty N'AlternateBackThemeColorIndex', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', NULL, NULL
SET @v = N'100'
EXECUTE sp_addextendedproperty N'AlternateBackTint', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', NULL, NULL
SET @v = N'0'
EXECUTE sp_addextendedproperty N'Attributes', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', NULL, NULL
SET @v = N'100'
EXECUTE sp_addextendedproperty N'BackShade', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', NULL, NULL
SET @v = N'100'
EXECUTE sp_addextendedproperty N'BackTint', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', NULL, NULL
SET @v = N'0'
EXECUTE sp_addextendedproperty N'DatasheetForeThemeColorIndex', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', NULL, NULL
SET @v = N'3'
EXECUTE sp_addextendedproperty N'DatasheetGridlinesThemeColorIndex', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', NULL, NULL
SET @v = N'7.9.2011 8:04:31'
EXECUTE sp_addextendedproperty N'DateCreated', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', NULL, NULL
SET @v = N'1'
EXECUTE sp_addextendedproperty N'DisplayViewsOnSharePointSite', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', NULL, NULL
SET @v = N'14.0.0000.0000'
EXECUTE sp_addextendedproperty N'FCMinDesignVer', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', NULL, NULL
SET @v = N'14.0.0000.0000'
EXECUTE sp_addextendedproperty N'FCMinReadVer', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', NULL, NULL
SET @v = N'14.0.0000.0000'
EXECUTE sp_addextendedproperty N'FCMinWriteVer', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', NULL, NULL
SET @v = N'False'
EXECUTE sp_addextendedproperty N'FilterOnLoad', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', NULL, NULL
SET @v = N'False'
EXECUTE sp_addextendedproperty N'HideNewField', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', NULL, NULL
SET @v = N'25.10.2011 17:15:56'
EXECUTE sp_addextendedproperty N'LastUpdated', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', NULL, NULL
SET @v = N'2'
EXECUTE sp_addextendedproperty N'MS_DefaultView', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', NULL, NULL
SET @v = N'False'
EXECUTE sp_addextendedproperty N'MS_OrderByOn', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', NULL, NULL
SET @v = N'0'
EXECUTE sp_addextendedproperty N'MS_Orientation', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', NULL, NULL
SET @v = N'NakladySil'
EXECUTE sp_addextendedproperty N'Name', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', NULL, NULL
SET @v = N'True'
EXECUTE sp_addextendedproperty N'OrderByOnLoad', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', NULL, NULL
SET @v = N'1'
EXECUTE sp_addextendedproperty N'PublishToWeb', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', NULL, NULL
SET @v = N'False'
EXECUTE sp_addextendedproperty N'ReadOnlyWhenDisconnected', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', NULL, NULL
SET @v = N'507'
EXECUTE sp_addextendedproperty N'RecordCount', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', NULL, NULL
SET @v = N'1'
EXECUTE sp_addextendedproperty N'ThemeFontIndex', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', NULL, NULL
SET @v = N'False'
EXECUTE sp_addextendedproperty N'TotalsRow', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', NULL, NULL
SET @v = N'True'
EXECUTE sp_addextendedproperty N'Updatable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', NULL, NULL
GO
DECLARE @v sql_variant 
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'AggregateType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'ID'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AllowZeroLength', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'ID'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AppendOnly', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'ID'
SET @v = N'17'
EXECUTE sp_addextendedproperty N'Attributes', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'ID'
SET @v = N'1029'
EXECUTE sp_addextendedproperty N'CollatingOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'ID'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'ColumnHidden', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'ID'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ColumnOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'ID'
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'ColumnWidth', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'ID'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'CurrencyLCID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'ID'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'DataUpdatable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'ID'
SET @v = N'????????'
EXECUTE sp_addextendedproperty N'GUID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'ID'
SET @v = N'ID'
EXECUTE sp_addextendedproperty N'Name', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'ID'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'OrdinalPosition', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'ID'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'Required', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'ID'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ResultType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'ID'
SET @v = N'4'
EXECUTE sp_addextendedproperty N'Size', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'ID'
SET @v = N'ID'
EXECUTE sp_addextendedproperty N'SourceField', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'ID'
SET @v = N'NakladySil'
EXECUTE sp_addextendedproperty N'SourceTable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'ID'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'TextAlign', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'ID'
SET @v = N'4'
EXECUTE sp_addextendedproperty N'Type', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'ID'
GO
DECLARE @v sql_variant 
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'AggregateType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Dodavatel'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AllowMultipleValues', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Dodavatel'
SET @v = N'True'
EXECUTE sp_addextendedproperty N'AllowValueListEdits', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Dodavatel'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AllowZeroLength', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Dodavatel'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AppendOnly', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Dodavatel'
SET @v = N'1'
EXECUTE sp_addextendedproperty N'Attributes', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Dodavatel'
SET @v = N'1029'
EXECUTE sp_addextendedproperty N'CollatingOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Dodavatel'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'ColumnHidden', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Dodavatel'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ColumnOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Dodavatel'
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'ColumnWidth', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Dodavatel'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'CurrencyLCID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Dodavatel'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'DataUpdatable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Dodavatel'
SET @v = N'????????'
EXECUTE sp_addextendedproperty N'GUID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Dodavatel'
SET @v = N'1'
EXECUTE sp_addextendedproperty N'MS_BoundColumn', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Dodavatel'
SET @v = N'2'
EXECUTE sp_addextendedproperty N'MS_ColumnCount', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Dodavatel'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'MS_ColumnHeads', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Dodavatel'
SET @v = N'0;1440'
EXECUTE sp_addextendedproperty N'MS_ColumnWidths', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Dodavatel'
SET @v = N'255'
EXECUTE sp_addextendedproperty N'MS_DecimalPlaces', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Dodavatel'
SET @v = N'111'
EXECUTE sp_addextendedproperty N'MS_DisplayControl', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Dodavatel'
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'MS_LimitToList', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Dodavatel'
SET @v = N'16'
EXECUTE sp_addextendedproperty N'MS_ListRows', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Dodavatel'
SET @v = N'1440twip'
EXECUTE sp_addextendedproperty N'MS_ListWidth', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Dodavatel'
SET @v = N'SELECT Firma.ID, Firma.Firma
FROM Firma
ORDER BY Firma'
EXECUTE sp_addextendedproperty N'MS_RowSource', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Dodavatel'
SET @v = N'Table/View/StoredProc'
EXECUTE sp_addextendedproperty N'MS_RowSourceType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Dodavatel'
SET @v = N'Dodavatel'
EXECUTE sp_addextendedproperty N'Name', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Dodavatel'
SET @v = N'1'
EXECUTE sp_addextendedproperty N'OrdinalPosition', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Dodavatel'
SET @v = N'True'
EXECUTE sp_addextendedproperty N'Required', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Dodavatel'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ResultType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Dodavatel'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'ShowOnlyRowSourceValues', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Dodavatel'
SET @v = N'4'
EXECUTE sp_addextendedproperty N'Size', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Dodavatel'
SET @v = N'Dodavatel'
EXECUTE sp_addextendedproperty N'SourceField', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Dodavatel'
SET @v = N'NakladySil'
EXECUTE sp_addextendedproperty N'SourceTable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Dodavatel'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'TextAlign', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Dodavatel'
SET @v = N'4'
EXECUTE sp_addextendedproperty N'Type', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Dodavatel'
GO
DECLARE @v sql_variant 
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'AggregateType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Sluzba'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AllowMultipleValues', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Sluzba'
SET @v = N'True'
EXECUTE sp_addextendedproperty N'AllowValueListEdits', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Sluzba'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AllowZeroLength', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Sluzba'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AppendOnly', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Sluzba'
SET @v = N'1'
EXECUTE sp_addextendedproperty N'Attributes', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Sluzba'
SET @v = N'1029'
EXECUTE sp_addextendedproperty N'CollatingOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Sluzba'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'ColumnHidden', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Sluzba'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ColumnOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Sluzba'
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'ColumnWidth', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Sluzba'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'CurrencyLCID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Sluzba'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'DataUpdatable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Sluzba'
SET @v = N'????????'
EXECUTE sp_addextendedproperty N'GUID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Sluzba'
SET @v = N'1'
EXECUTE sp_addextendedproperty N'MS_BoundColumn', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Sluzba'
SET @v = N'Služba'
EXECUTE sp_addextendedproperty N'MS_Caption', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Sluzba'
SET @v = N'2'
EXECUTE sp_addextendedproperty N'MS_ColumnCount', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Sluzba'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'MS_ColumnHeads', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Sluzba'
SET @v = N'0;1440'
EXECUTE sp_addextendedproperty N'MS_ColumnWidths', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Sluzba'
SET @v = N'255'
EXECUTE sp_addextendedproperty N'MS_DecimalPlaces', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Sluzba'
SET @v = N'111'
EXECUTE sp_addextendedproperty N'MS_DisplayControl', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Sluzba'
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'MS_LimitToList', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Sluzba'
SET @v = N'16'
EXECUTE sp_addextendedproperty N'MS_ListRows', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Sluzba'
SET @v = N'1440twip'
EXECUTE sp_addextendedproperty N'MS_ListWidth', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Sluzba'
SET @v = N'SELECT Sluzba.ID, Sluzba.Sluzba
FROM Sluzba
ORDER BY Sluzba'
EXECUTE sp_addextendedproperty N'MS_RowSource', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Sluzba'
SET @v = N'Table/View/StoredProc'
EXECUTE sp_addextendedproperty N'MS_RowSourceType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Sluzba'
SET @v = N'Sluzba'
EXECUTE sp_addextendedproperty N'Name', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Sluzba'
SET @v = N'2'
EXECUTE sp_addextendedproperty N'OrdinalPosition', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Sluzba'
SET @v = N'True'
EXECUTE sp_addextendedproperty N'Required', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Sluzba'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ResultType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Sluzba'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'ShowOnlyRowSourceValues', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Sluzba'
SET @v = N'4'
EXECUTE sp_addextendedproperty N'Size', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Sluzba'
SET @v = N'Sluzba'
EXECUTE sp_addextendedproperty N'SourceField', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Sluzba'
SET @v = N'NakladySil'
EXECUTE sp_addextendedproperty N'SourceTable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Sluzba'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'TextAlign', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Sluzba'
SET @v = N'4'
EXECUTE sp_addextendedproperty N'Type', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Sluzba'
GO
DECLARE @v sql_variant 
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'AggregateType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'NakladyJednotka'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AllowZeroLength', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'NakladyJednotka'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AppendOnly', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'NakladyJednotka'
SET @v = N'1'
EXECUTE sp_addextendedproperty N'Attributes', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'NakladyJednotka'
SET @v = N'1029'
EXECUTE sp_addextendedproperty N'CollatingOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'NakladyJednotka'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'ColumnHidden', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'NakladyJednotka'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ColumnOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'NakladyJednotka'
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'ColumnWidth', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'NakladyJednotka'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'CurrencyLCID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'NakladyJednotka'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'DataUpdatable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'NakladyJednotka'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'DefaultValue', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'NakladyJednotka'
SET @v = N'????????'
EXECUTE sp_addextendedproperty N'GUID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'NakladyJednotka'
SET @v = N'Jednotkové náklady'
EXECUTE sp_addextendedproperty N'MS_Caption', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'NakladyJednotka'
SET @v = N'255'
EXECUTE sp_addextendedproperty N'MS_DecimalPlaces', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'NakladyJednotka'
SET @v = N'109'
EXECUTE sp_addextendedproperty N'MS_DisplayControl', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'NakladyJednotka'
SET @v = N'NakladyJednotka'
EXECUTE sp_addextendedproperty N'Name', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'NakladyJednotka'
SET @v = N'3'
EXECUTE sp_addextendedproperty N'OrdinalPosition', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'NakladyJednotka'
SET @v = N'True'
EXECUTE sp_addextendedproperty N'Required', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'NakladyJednotka'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ResultType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'NakladyJednotka'
SET @v = N'4'
EXECUTE sp_addextendedproperty N'Size', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'NakladyJednotka'
SET @v = N'NakladyJednotka'
EXECUTE sp_addextendedproperty N'SourceField', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'NakladyJednotka'
SET @v = N'NakladySil'
EXECUTE sp_addextendedproperty N'SourceTable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'NakladyJednotka'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'TextAlign', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'NakladyJednotka'
SET @v = N'6'
EXECUTE sp_addextendedproperty N'Type', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'NakladyJednotka'
GO
DECLARE @v sql_variant 
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'AggregateType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mena'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AllowMultipleValues', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mena'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AllowValueListEdits', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mena'
SET @v = N'True'
EXECUTE sp_addextendedproperty N'AllowZeroLength', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mena'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AppendOnly', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mena'
SET @v = N'2'
EXECUTE sp_addextendedproperty N'Attributes', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mena'
SET @v = N'1029'
EXECUTE sp_addextendedproperty N'CollatingOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mena'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'ColumnHidden', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mena'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ColumnOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mena'
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'ColumnWidth', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mena'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'CurrencyLCID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mena'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'DataUpdatable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mena'
SET @v = N'????????'
EXECUTE sp_addextendedproperty N'GUID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mena'
SET @v = N'1'
EXECUTE sp_addextendedproperty N'MS_BoundColumn', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mena'
SET @v = N'Měna'
EXECUTE sp_addextendedproperty N'MS_Caption', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mena'
SET @v = N'1'
EXECUTE sp_addextendedproperty N'MS_ColumnCount', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mena'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'MS_ColumnHeads', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mena'
SET @v = N'1134'
EXECUTE sp_addextendedproperty N'MS_ColumnWidths', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mena'
SET @v = N'111'
EXECUTE sp_addextendedproperty N'MS_DisplayControl', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mena'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'MS_IMEMode', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mena'
SET @v = N'3'
EXECUTE sp_addextendedproperty N'MS_IMESentMode', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mena'
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'MS_LimitToList', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mena'
SET @v = N'16'
EXECUTE sp_addextendedproperty N'MS_ListRows', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mena'
SET @v = N'0twip'
EXECUTE sp_addextendedproperty N'MS_ListWidth', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mena'
SET @v = N'"Kč";"USD";"EUR"'
EXECUTE sp_addextendedproperty N'MS_RowSource', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mena'
SET @v = N'Value List'
EXECUTE sp_addextendedproperty N'MS_RowSourceType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mena'
SET @v = N'Mena'
EXECUTE sp_addextendedproperty N'Name', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mena'
SET @v = N'4'
EXECUTE sp_addextendedproperty N'OrdinalPosition', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mena'
SET @v = N'True'
EXECUTE sp_addextendedproperty N'Required', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mena'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ResultType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mena'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'ShowOnlyRowSourceValues', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mena'
SET @v = N'10'
EXECUTE sp_addextendedproperty N'Size', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mena'
SET @v = N'Mena'
EXECUTE sp_addextendedproperty N'SourceField', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mena'
SET @v = N'NakladySil'
EXECUTE sp_addextendedproperty N'SourceTable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mena'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'TextAlign', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mena'
SET @v = N'10'
EXECUTE sp_addextendedproperty N'Type', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mena'
SET @v = N'True'
EXECUTE sp_addextendedproperty N'UnicodeCompression', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mena'
GO
DECLARE @v sql_variant 
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'AggregateType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mnozstvi'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AllowZeroLength', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mnozstvi'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AppendOnly', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mnozstvi'
SET @v = N'1'
EXECUTE sp_addextendedproperty N'Attributes', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mnozstvi'
SET @v = N'1029'
EXECUTE sp_addextendedproperty N'CollatingOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mnozstvi'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'ColumnHidden', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mnozstvi'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ColumnOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mnozstvi'
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'ColumnWidth', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mnozstvi'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'CurrencyLCID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mnozstvi'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'DataUpdatable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mnozstvi'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'DefaultValue', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mnozstvi'
SET @v = N'???????'
EXECUTE sp_addextendedproperty N'GUID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mnozstvi'
SET @v = N'Množství'
EXECUTE sp_addextendedproperty N'MS_Caption', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mnozstvi'
SET @v = N'255'
EXECUTE sp_addextendedproperty N'MS_DecimalPlaces', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mnozstvi'
SET @v = N'109'
EXECUTE sp_addextendedproperty N'MS_DisplayControl', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mnozstvi'
SET @v = N'Mnozstvi'
EXECUTE sp_addextendedproperty N'Name', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mnozstvi'
SET @v = N'5'
EXECUTE sp_addextendedproperty N'OrdinalPosition', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mnozstvi'
SET @v = N'True'
EXECUTE sp_addextendedproperty N'Required', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mnozstvi'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ResultType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mnozstvi'
SET @v = N'4'
EXECUTE sp_addextendedproperty N'Size', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mnozstvi'
SET @v = N'Mnozstvi'
EXECUTE sp_addextendedproperty N'SourceField', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mnozstvi'
SET @v = N'NakladySil'
EXECUTE sp_addextendedproperty N'SourceTable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mnozstvi'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'TextAlign', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mnozstvi'
SET @v = N'6'
EXECUTE sp_addextendedproperty N'Type', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Mnozstvi'
GO
DECLARE @v sql_variant 
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'AggregateType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Preprava'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AllowMultipleValues', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Preprava'
SET @v = N'True'
EXECUTE sp_addextendedproperty N'AllowValueListEdits', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Preprava'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AllowZeroLength', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Preprava'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AppendOnly', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Preprava'
SET @v = N'1'
EXECUTE sp_addextendedproperty N'Attributes', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Preprava'
SET @v = N'1029'
EXECUTE sp_addextendedproperty N'CollatingOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Preprava'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'ColumnHidden', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Preprava'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ColumnOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Preprava'
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'ColumnWidth', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Preprava'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'CurrencyLCID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Preprava'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'DataUpdatable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Preprava'
SET @v = N'????????'
EXECUTE sp_addextendedproperty N'GUID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Preprava'
SET @v = N'1'
EXECUTE sp_addextendedproperty N'MS_BoundColumn', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Preprava'
SET @v = N'2'
EXECUTE sp_addextendedproperty N'MS_ColumnCount', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Preprava'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'MS_ColumnHeads', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Preprava'
SET @v = N'0;1440'
EXECUTE sp_addextendedproperty N'MS_ColumnWidths', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Preprava'
SET @v = N'255'
EXECUTE sp_addextendedproperty N'MS_DecimalPlaces', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Preprava'
SET @v = N'111'
EXECUTE sp_addextendedproperty N'MS_DisplayControl', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Preprava'
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'MS_LimitToList', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Preprava'
SET @v = N'16'
EXECUTE sp_addextendedproperty N'MS_ListRows', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Preprava'
SET @v = N'1440twip'
EXECUTE sp_addextendedproperty N'MS_ListWidth', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Preprava'
SET @v = N'SELECT Preprava.ID, Preprava.Cislo
FROM Preprava
ORDER BY Cislo'
EXECUTE sp_addextendedproperty N'MS_RowSource', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Preprava'
SET @v = N'Table/View/StoredProc'
EXECUTE sp_addextendedproperty N'MS_RowSourceType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Preprava'
SET @v = N'Preprava'
EXECUTE sp_addextendedproperty N'Name', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Preprava'
SET @v = N'7'
EXECUTE sp_addextendedproperty N'OrdinalPosition', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Preprava'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'Required', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Preprava'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ResultType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Preprava'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'ShowOnlyRowSourceValues', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Preprava'
SET @v = N'4'
EXECUTE sp_addextendedproperty N'Size', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Preprava'
SET @v = N'Preprava'
EXECUTE sp_addextendedproperty N'SourceField', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Preprava'
SET @v = N'NakladySil'
EXECUTE sp_addextendedproperty N'SourceTable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Preprava'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'TextAlign', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Preprava'
SET @v = N'4'
EXECUTE sp_addextendedproperty N'Type', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'Preprava'
GO
DECLARE @v sql_variant 
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'AggregateType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'FakturaPrijata'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AllowZeroLength', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'FakturaPrijata'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'AppendOnly', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'FakturaPrijata'
SET @v = N'1'
EXECUTE sp_addextendedproperty N'Attributes', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'FakturaPrijata'
SET @v = N'1029'
EXECUTE sp_addextendedproperty N'CollatingOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'FakturaPrijata'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'ColumnHidden', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'FakturaPrijata'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ColumnOrder', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'FakturaPrijata'
SET @v = N'-1'
EXECUTE sp_addextendedproperty N'ColumnWidth', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'FakturaPrijata'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'CurrencyLCID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'FakturaPrijata'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'DataUpdatable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'FakturaPrijata'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'DefaultValue', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'FakturaPrijata'
SET @v = N'????????'
EXECUTE sp_addextendedproperty N'GUID', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'FakturaPrijata'
SET @v = N'Faktura přijata'
EXECUTE sp_addextendedproperty N'MS_Caption', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'FakturaPrijata'
SET @v = N'106'
EXECUTE sp_addextendedproperty N'MS_DisplayControl', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'FakturaPrijata'
SET @v = N'True/False'
EXECUTE sp_addextendedproperty N'MS_Format', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'FakturaPrijata'
SET @v = N'FakturaPrijata'
EXECUTE sp_addextendedproperty N'Name', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'FakturaPrijata'
SET @v = N'8'
EXECUTE sp_addextendedproperty N'OrdinalPosition', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'FakturaPrijata'
SET @v = N'False'
EXECUTE sp_addextendedproperty N'Required', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'FakturaPrijata'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'ResultType', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'FakturaPrijata'
SET @v = N'1'
EXECUTE sp_addextendedproperty N'Size', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'FakturaPrijata'
SET @v = N'FakturaPrijata'
EXECUTE sp_addextendedproperty N'SourceField', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'FakturaPrijata'
SET @v = N'NakladySil'
EXECUTE sp_addextendedproperty N'SourceTable', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'FakturaPrijata'
SET @v = N'0'
EXECUTE sp_addextendedproperty N'TextAlign', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'FakturaPrijata'
SET @v = N'1'
EXECUTE sp_addextendedproperty N'Type', @v, N'SCHEMA', N'dbo', N'TABLE', N'Tmp_NakladySil', N'COLUMN', N'FakturaPrijata'
GO
ALTER TABLE dbo.Tmp_NakladySil ADD CONSTRAINT
	DF__NakladySil__FakturaPrijata DEFAULT ((0)) FOR FakturaPrijata
GO
SET IDENTITY_INSERT dbo.Tmp_NakladySil ON
GO
IF EXISTS(SELECT * FROM dbo.NakladySil)
	 EXEC('INSERT INTO dbo.Tmp_NakladySil (ID, Dodavatel, Sluzba, NakladyJednotka, Mena, Mnozstvi, Preprava, FakturaPrijata)
		SELECT ID, Dodavatel, Sluzba, NakladyJednotka, Mena, Mnozstvi, Preprava, FakturaPrijata FROM dbo.NakladySil WITH (HOLDLOCK TABLOCKX)')
GO
SET IDENTITY_INSERT dbo.Tmp_NakladySil OFF
GO
DROP TABLE dbo.NakladySil
GO
EXECUTE sp_rename N'dbo.Tmp_NakladySil', N'NakladySil', 'OBJECT' 
GO
ALTER TABLE dbo.NakladySil ADD CONSTRAINT
	aaaaaNakladySil_PK PRIMARY KEY NONCLUSTERED 
	(
	ID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.NakladySil WITH NOCHECK ADD CONSTRAINT
	NakladySil_FK00 FOREIGN KEY
	(
	Dodavatel
	) REFERENCES dbo.Firma
	(
	ID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.NakladySil WITH NOCHECK ADD CONSTRAINT
	NakladySil_FK01 FOREIGN KEY
	(
	Sluzba
	) REFERENCES dbo.Sluzba
	(
	ID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.NakladySil WITH NOCHECK ADD CONSTRAINT
	NakladySil_FK02 FOREIGN KEY
	(
	Preprava
	) REFERENCES dbo.PrepravaSil
	(
	ID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
DECLARE @v sql_variant 
SET @v = N'Tento záznam nelze kvůli omezením relace mezi tabulkami Preprava a Naklady přidat, změnit ani odstranit.'
EXECUTE sp_addextendedproperty N'MS_ConstraintText', @v, N'SCHEMA', N'dbo', N'TABLE', N'NakladySil', N'CONSTRAINT', N'NakladySil_FK02'
GO
COMMIT






