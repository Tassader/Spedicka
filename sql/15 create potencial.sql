-- drop selze, pokud budou foreign keys (ale na tuto tabulku zadne nejsou)
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'Potencial') AND type in (N'U'))
    DROP TABLE Potencial;
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'PravidelnostPotencialu') AND type in (N'U'))
    DROP TABLE PravidelnostPotencialu;

BEGIN TRANSACTION
GO
/* Ciselnik Pravidelnost sluzby*/
CREATE TABLE PravidelnostPotencialu
    (
    ID int NOT NULL IDENTITY (1, 1),
    PravidelnostPotencialu nvarchar(50) NOT NULL
    )  ON [PRIMARY]
GO
ALTER TABLE PravidelnostPotencialu ADD CONSTRAINT
    PK_PravidelnostPotencialu PRIMARY KEY CLUSTERED
    (
    ID
    ) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
COMMIT

/* tutok naplnit nejakymi daty asi */
INSERT INTO PravidelnostPotencialu (/*ID, */PravidelnostPotencialu) VALUES ('Dennì');
INSERT INTO PravidelnostPotencialu (/*ID, */PravidelnostPotencialu) VALUES ('Týdnì');
INSERT INTO PravidelnostPotencialu (/*ID, */PravidelnostPotencialu) VALUES ('2x Mìsíènì');
INSERT INTO PravidelnostPotencialu (/*ID, */PravidelnostPotencialu) VALUES ('Mìsíènì');
INSERT INTO PravidelnostPotencialu (/*ID, */PravidelnostPotencialu) VALUES ('Ètvrtletnì');
INSERT INTO PravidelnostPotencialu (/*ID, */PravidelnostPotencialu) VALUES ('Nárazovì');

BEGIN TRANSACTION
CREATE TABLE Potencial
    (
    ID int NOT NULL IDENTITY (1, 1),
    Firma int NOT NULL,
    DruhPrepravy int NOT NULL,
    Smer varchar(50) NULL,/*import, export, ?vnitro? - melo by spis byt ciselnik, je to vyuzivane i v prepravach (tam je to taky textove*/
    Incoterms int NULL,
    IncotermsMisto varchar(255) NULL,
    Destinace int NULL,
    Pravidelnost int NULL,
    Mnozstvi varchar(50) NULL,
    DatumZaznamu datetime NOT NULL
    )  ON [PRIMARY]
GO
/* default hodnoty*/
ALTER TABLE Potencial ADD CONSTRAINT DF_Potencial_DatumZaznamu DEFAULT getdate() FOR DatumZaznamu;

/* Primarni klic*/
ALTER TABLE Potencial ADD CONSTRAINT
    PK_Potencial PRIMARY KEY CLUSTERED
    (
    ID
    ) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY];

/*Vzdalene klice*/
ALTER TABLE Potencial ADD CONSTRAINT FK_Potencial_Firma
    FOREIGN KEY ( Firma ) REFERENCES Firma ( ID )
    ON DELETE  NO ACTION;

ALTER TABLE Potencial ADD CONSTRAINT FK_Potencial_DruhPrepravy
    FOREIGN KEY ( DruhPrepravy ) REFERENCES DruhPrepravy ( ID )
    ON DELETE  NO ACTION;

ALTER TABLE Potencial ADD CONSTRAINT FK_Potencial_Misto
    FOREIGN KEY ( Destinace ) REFERENCES Misto ( ID )
    ON DELETE  SET NULL;

ALTER TABLE Potencial ADD CONSTRAINT FK_Potencial_PravidelnostPotencialu
    FOREIGN KEY ( Pravidelnost ) REFERENCES PravidelnostPotencialu ( ID )
    ON DELETE  SET NULL;

ALTER TABLE Potencial ADD CONSTRAINT FK_Potencial_Incoterms
    FOREIGN KEY ( Incoterms ) REFERENCES Incoterms ( ID )
    ON DELETE  SET NULL;
GO

/* Èeské popisky - doufal jsem, že je Access využije ale houbelec*/
EXECUTE sp_addextendedproperty N'MS_Description', N'Druh pøepravy', N'SCHEMA', N'dbo', N'TABLE', N'Potencial', N'COLUMN', N'DruhPrepravy';
EXECUTE sp_addextendedproperty N'MS_Description', N'Smìr', N'SCHEMA', N'dbo', N'TABLE', N'Potencial', N'COLUMN', N'Smer';
EXECUTE sp_addextendedproperty N'MS_Description', N'Datum Záznamu', N'SCHEMA', N'dbo', N'TABLE', N'Potencial', N'COLUMN', N'DatumZaznamu';

COMMIT