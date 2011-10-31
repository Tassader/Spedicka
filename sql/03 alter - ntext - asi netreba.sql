ALTER TABLE Preprava ALTER COLUMN ObchodniFaktury [nvarchar](255) NULL -- From ntext
GO

ALTER TABLE Preprava ALTER COLUMN MBL [nvarchar](255) NULL -- From ntext
GO

ALTER TABLE Preprava ALTER COLUMN HBL [nvarchar](255) NULL -- From ntext
GO

ALTER TABLE Preprava ALTER COLUMN CelniDokumenty [nvarchar](255) NULL -- From ntext
GO

ALTER TABLE Preprava ALTER COLUMN NakladoveFaktury [nvarchar](255) NULL -- From ntext
GO

ALTER TABLE Preprava ALTER COLUMN VynosoveFaktury [nvarchar](255) NULL -- From ntext
GO



ALTER TABLE Firma ALTER COLUMN Ulice [nvarchar](255) NULL -- From ntext
GO

ALTER TABLE Firma ALTER COLUMN Web [nvarchar](255) NULL -- From ntext
GO

ALTER TABLE Firma ALTER COLUMN Poznamky [nvarchar](255) NULL -- From ntext
GO

ALTER TABLE Firma ALTER COLUMN Prilohy [nvarchar](255) NULL -- From ntext
GO