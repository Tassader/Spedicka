-- nejprve nutno dropnout aktivity (anebo FK v nich)
--IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'Aktivity') AND type in (N'U'))
--    DROP TABLE Aktivity;
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'Prilezitosti') AND type in (N'U'))
    DROP TABLE Prilezitosti;
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'StavPrilezitosti') AND type in (N'U'))
    DROP TABLE StavPrilezitosti;
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'RatingPrilezitosti') AND type in (N'U'))
    DROP TABLE RatingPrilezitosti;
/*  P��le�itosti - vyzaduje tab. firma, obchodnik, sluzba(asi druhyprepravy), rating(nove), stav(nove) */

BEGIN TRANSACTION
GO
/* Ciselnik pro Rating p��le�itosti*/
CREATE TABLE RatingPrilezitosti
    (
    ID int NOT NULL IDENTITY (1, 1),
    RatingPrilezitosti nvarchar(50) NOT NULL
    )  ON [PRIMARY]
GO
ALTER TABLE RatingPrilezitosti ADD CONSTRAINT
    PK_RatingPrilezitosti PRIMARY KEY CLUSTERED
    (
    ID
    ) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO

/* naplnit vyse uvedeny ciselnik (?) */
-- TRUNCATE ;
INSERT INTO RatingPrilezitosti(/*ID, */RatingPrilezitosti) VALUES ('N�zk�');
INSERT INTO RatingPrilezitosti(/*ID, */RatingPrilezitosti) VALUES ('St�edn�');
INSERT INTO RatingPrilezitosti(/*ID, */RatingPrilezitosti) VALUES ('Vysok�');

COMMIT

BEGIN TRANSACTION
GO
/* Ciselnik pro stav p��le�itosti*/
CREATE TABLE StavPrilezitosti
    (
    ID int NOT NULL IDENTITY (1, 1),
    StavPrilezitosti nvarchar(50) NOT NULL
    )  ON [PRIMARY]
GO
ALTER TABLE StavPrilezitosti ADD CONSTRAINT
    PK_StavPrilezitosti PRIMARY KEY CLUSTERED
    (
    ID
    ) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO

/* naplnit vyse uvedeny ciselnik (?) */
-- TRUNCATE ;
INSERT INTO StavPrilezitosti(/*ID, */StavPrilezitosti) VALUES ('Nov�');
INSERT INTO StavPrilezitosti(/*ID, */StavPrilezitosti) VALUES ('Prodan�');
INSERT INTO StavPrilezitosti(/*ID, */StavPrilezitosti) VALUES ('Neprodan�');

COMMIT

BEGIN TRANSACTION
GO
CREATE TABLE Prilezitosti
    (
    ID int NOT NULL IDENTITY (1, 1),
    Firma int NOT NULL,
    Jmeno nvarchar(255) NOT NULL,
    Prodejce int NOT NULL,
    DruhPrepravy int NULL,
    Rating int NULL,
    Otevreno datetime NOT NULL,
    OdhadUzavreni datetime NULL,
    OdhadTrzby decimal(18,3) NOT NULL,
    Pravdepodobnost decimal(4,3) NOT NULL,
    -- OdhadHodnota  AS OdhadTrzby*Pravdepodobnost,  -- imo zbyte�n� sloupec
    Stav int NOT NULL,
    Duvod nvarchar(255) NULL,
    Popis nvarchar(4000) NULL,

    Incoterms int NULL,
    IncotermsMisto varchar(255) NULL,
    Destinace int NULL,
    Pravidelnost int NULL,
    Smer varchar(50) NULL,/*import, export, ?vnitro? - melo by spis byt ciselnik, je to vyuzivane i v prepravach (tam je to taky textove*/
    Mnozstvi varchar(50) NULL,
    Konkurence varchar(50) NULL,
    )  ON [PRIMARY]
GO

/* default hodnoty*/
ALTER TABLE Prilezitosti ADD CONSTRAINT DF_Prilezitosti_Otevreno DEFAULT getdate() FOR Otevreno;
ALTER TABLE Prilezitosti ADD CONSTRAINT DF_Prilezitosti_Stav DEFAULT 1 FOR Stav; -- 1 bude 'Nov�'

/* Primarni klic*/
ALTER TABLE Prilezitosti ADD CONSTRAINT
    PK_Prilezitosti PRIMARY KEY CLUSTERED
    (
    ID
    ) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY];


/* Indexy - je�t� p�ibydou dal�� asi*/
CREATE UNIQUE NONCLUSTERED INDEX IX_Prilezitosti_Firma_Jmeno ON Prilezitosti
	(
	Firma,
	Jmeno
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

/*Vzdalene klice*/
ALTER TABLE Prilezitosti ADD CONSTRAINT FK_Prilezitosti_Firma
    FOREIGN KEY ( Firma ) REFERENCES Firma ( ID )
    ON DELETE  NO ACTION;

ALTER TABLE Prilezitosti ADD CONSTRAINT FK_Prilezitosti_Prodejce
    FOREIGN KEY ( Prodejce ) REFERENCES Obchodnik ( ID )
    ON DELETE  NO ACTION;

ALTER TABLE Prilezitosti ADD CONSTRAINT FK_Prilezitosti_DruhPrepravy
    FOREIGN KEY ( DruhPrepravy ) REFERENCES DruhPrepravy ( ID )
    ON DELETE  SET NULL;

ALTER TABLE Prilezitosti ADD CONSTRAINT FK_Prilezitosti_Rating
    FOREIGN KEY ( Rating ) REFERENCES RatingPrilezitosti ( ID )
    ON DELETE  SET NULL;

ALTER TABLE Prilezitosti ADD CONSTRAINT FK_Prilezitosti_Stav
    FOREIGN KEY ( Stav ) REFERENCES StavPrilezitosti ( ID )
    ON DELETE  NO ACTION;

GO
/* extended properties - Description*/
EXECUTE sp_addextendedproperty N'MS_Description', N'Jm�no', N'SCHEMA', N'dbo', N'TABLE', N'Prilezitosti', N'COLUMN', N'Jmeno';
EXECUTE sp_addextendedproperty N'MS_Description', N'Druh p�epravy', N'SCHEMA', N'dbo', N'TABLE', N'Prilezitosti', N'COLUMN', N'DruhPrepravy';
EXECUTE sp_addextendedproperty N'MS_Description', N'Otev�eno', N'SCHEMA', N'dbo', N'TABLE', N'Prilezitosti', N'COLUMN', N'Otevreno';
EXECUTE sp_addextendedproperty N'MS_Description', N'Odhad uzav�en�', N'SCHEMA', N'dbo', N'TABLE', N'Prilezitosti', N'COLUMN', N'OdhadUzavreni';
EXECUTE sp_addextendedproperty N'MS_Description', N'Odhad tr�by', N'SCHEMA', N'dbo', N'TABLE', N'Prilezitosti', N'COLUMN', N'OdhadTrzby';
EXECUTE sp_addextendedproperty N'MS_Description', N'Pravd�podobnost', N'SCHEMA', N'dbo', N'TABLE', N'Prilezitosti', N'COLUMN', N'Pravdepodobnost';
-- EXECUTE sp_addextendedproperty N'MS_Description', N'Odhadovan� hodnota', N'SCHEMA', N'dbo', N'TABLE', N'Prilezitosti', N'COLUMN', N'OdhadHodnota';
GO
COMMIT