-- drop selze, pokud budou foreign keys, ale do aktivit by zadne byt nemely
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'Aktivity') AND type in (N'U'))
    DROP TABLE Aktivity;
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'TypAktivity') AND type in (N'U'))
    DROP TABLE TypAktivity;

/*  aktivity - vyzaduje tab. firma, TypAktivity(nove), Kontakt, Obchodnik, Prilezitozt */
BEGIN TRANSACTION
GO
/* Ciselnik Typ aktivity*/
CREATE TABLE TypAktivity
    (
    ID int NOT NULL IDENTITY (1, 1),
    TypAktivity nvarchar(50) NOT NULL
    )  ON [PRIMARY]
GO
ALTER TABLE TypAktivity ADD CONSTRAINT
    PK_TypAktivity PRIMARY KEY CLUSTERED
    (
    ID
    ) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
COMMIT

/* tutok naplnit nejakymi daty asi */
INSERT INTO TypAktivity (/*ID, */TypAktivity) VALUES ('1. kontakt');
INSERT INTO TypAktivity (/*ID, */TypAktivity) VALUES ('Presentace');
INSERT INTO TypAktivity (/*ID, */TypAktivity) VALUES ('Poptávka');
INSERT INTO TypAktivity (/*ID, */TypAktivity) VALUES ('ePoptávka');
INSERT INTO TypAktivity (/*ID, */TypAktivity) VALUES ('Výbìrové øízení');
INSERT INTO TypAktivity (/*ID, */TypAktivity) VALUES ('Nabídka');
INSERT INTO TypAktivity (/*ID, */TypAktivity) VALUES ('Telefonát');
INSERT INTO TypAktivity (/*ID, */TypAktivity) VALUES ('Schùzka');
INSERT INTO TypAktivity (/*ID, */TypAktivity) VALUES ('Urgence??');
INSERT INTO TypAktivity (/*ID, */TypAktivity) VALUES ('Urgence platby??');

BEGIN TRANSACTION
CREATE TABLE Aktivity
    (
    ID int NOT NULL IDENTITY (1, 1),
    Firma int NOT NULL,
    Datum datetime NOT NULL,
    Typ int NOT NULL,
    Kontakt int NULL,
    Obchodnik int NULL,
    Popis nvarchar(50) NULL,
    Prilezitost int NULL,
    Splneno bit NOT NULL
    )  ON [PRIMARY]
GO

/* default hodnoty*/
ALTER TABLE Aktivity ADD CONSTRAINT
    DF_Aktivity_Splneno DEFAULT 0 FOR Splneno;

/* Primarni klic*/
ALTER TABLE Aktivity ADD CONSTRAINT
    PK_Aktivity PRIMARY KEY CLUSTERED
    (
    ID
    ) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY];

/*Vzdalene klice*/
ALTER TABLE Aktivity ADD CONSTRAINT FK_Aktivity_Firma
    FOREIGN KEY ( Firma ) REFERENCES Firma ( ID )
    ON DELETE  NO ACTION;

ALTER TABLE Aktivity ADD CONSTRAINT FK_Aktivity_TypAktivity
    FOREIGN KEY ( Typ ) REFERENCES TypAktivity ( ID )
    ON DELETE  NO ACTION

ALTER TABLE Aktivity ADD CONSTRAINT FK_Aktivity_Kontakt
    FOREIGN KEY ( Kontakt ) REFERENCES Kontakt ( ID )
    ON DELETE  SET NULL

ALTER TABLE Aktivity ADD CONSTRAINT FK_Aktivity_Obchodnik
    FOREIGN KEY ( Obchodnik ) REFERENCES Obchodnik ( ID )
    ON DELETE  SET NULL

ALTER TABLE Aktivity ADD CONSTRAINT FK_Aktivity_Prilezitost
    FOREIGN KEY ( Prilezitost ) REFERENCES Prilezitosti ( ID )
    ON DELETE  SET NULL

GO
COMMIT