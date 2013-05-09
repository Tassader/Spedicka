-- upravit max delku kategorie na rekneme 100
ALTER TABLE Firma ALTER COLUMN Kategorie NVARCHAR(50) NULL
GO

CREATE NONCLUSTERED INDEX [IX_Firma_Kategorie] ON [Firma] 
(
	[Kategorie] ASC
)
INCLUDE ( [Firma]) -- kvuli razeni, include vyjde nastejno jako kdyby to bylo primo v indexu bo to stejne radi az dodatecne; ID je includovano vzdy
ON [PRIMARY]
GO
