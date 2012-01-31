BEGIN TRANSACTION
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'CelniUrad') AND type in (N'U'))
    DROP TABLE CelniUrad;
GO
CREATE TABLE CelniUrad (
    ID smallint IDENTITY(1,1) NOT NULL,
    Nazev nvarchar(255) NOT NULL,
    Cislo char(8) NOT NULL,
    Ulice nvarchar(255) NOT NULL,
    Mesto nvarchar(150) NOT NULL,
    PSC int NOT NULL,
    Tel varchar(150) NULL,
    Fax varchar(150) NULL,
    Email nvarchar(255) NULL
)
GO

ALTER TABLE CelniUrad ADD CONSTRAINT PK_CelniUrad 
    PRIMARY KEY CLUSTERED ( ID ) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
COMMIT

/* Indexy*/
CREATE NONCLUSTERED INDEX IX_CelniUrad_Mesto ON CelniUrad
	(
	Mesto
    ) ON [PRIMARY]
GO