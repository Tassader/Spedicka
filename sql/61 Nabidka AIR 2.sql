IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'NabidkaAIR2Specifikace') AND type in (N'U'))
    DROP TABLE NabidkaAIR2Specifikace;
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'NabidkaAIR2') AND type in (N'U'))
    DROP TABLE NabidkaAIR2;
GO

-- NabidkaLCL
CREATE TABLE NabidkaAIR2 (
    -- ID int IDENTITY(1,1) NOT NULL, -- netreba, primarni klic bude Nabidka bo relace 1:1
    Nabidka int NOT NULL, 
    Nakladka int NULL, -- misto nakladky
    LetisteOdeslani int NOT NULL, --
    LetisteDodani int NOT NULL, --
    Vykladka int NULL, --misto dodani

    KurzUSD decimal(9,4) NOT NULL,

-- ceny:
    Svoz decimal(9,3) NULL,
    CelniOdbaveni decimal(9,3) NULL,
    THC decimal(9,3) NULL,
    LeteckaPrepravaZaKg decimal(9,3) NULL,
    LeteckaPrepravaMena nvarchar(10) NOT NULL,
    FSCZaKg decimal(9,3) NULL,
    FSCMena nvarchar(10) NOT NULL,
    SCCZaKg decimal(9,3) NULL,
    SCCMena nvarchar(10) NOT NULL,
    Dokumentace decimal(9,3) NULL,
    Doruceni decimal(9,3) NULL,
    Ostatni decimal(9,3) NULL,
    DobaPrepravy varchar(50) NULL,
--    Mena nvarchar(10) NOT NULL

    Celkem decimal(9,3) NULL,

    CONSTRAINT PK_NabidkaAIR2 PRIMARY KEY CLUSTERED ( Nabidka ) ON [PRIMARY]
)
GO

ALTER TABLE NabidkaAIR2 WITH CHECK ADD CONSTRAINT NabidkaAIR2_Nabidka
    FOREIGN KEY ( Nabidka ) REFERENCES Nabidka ( ID ) ON DELETE CASCADE;

ALTER TABLE NabidkaAIR2 WITH CHECK ADD CONSTRAINT FK_NabidkaAIR2_Nakladka
    FOREIGN KEY ( Nakladka ) REFERENCES Misto ( ID );

ALTER TABLE NabidkaAIR2 WITH CHECK ADD CONSTRAINT FK_NabidkaAIR2_LetisteOdeslani
    FOREIGN KEY ( LetisteOdeslani ) REFERENCES Misto ( ID );

ALTER TABLE NabidkaAIR2 WITH CHECK ADD CONSTRAINT FK_NabidkaAIR2_LetisteDodani
    FOREIGN KEY ( LetisteDodani ) REFERENCES Misto ( ID );

ALTER TABLE NabidkaAIR2 WITH CHECK ADD CONSTRAINT FK_NabidkaAIR2_Vykladka
    FOREIGN KEY ( Vykladka ) REFERENCES Misto ( ID );
GO

CREATE TABLE NabidkaAIR2Specifikace (
    ID int IDENTITY(1,1) NOT NULL, -- NOT FOR REPLICATION, -- kvuli moznosti dvou SQL serveru budu nastavovat IDENTITY increment na 2 (seed se snadno zmeni, increment moc ne) -- ??

    Nabidka int NOT NULL, -- FK

    PocetKusu int NOT NULL, 
    Delka decimal(9,2) NOT NULL, 
    Sirka decimal(9,2) NOT NULL, 
    Vyska decimal(9,2) NOT NULL, 
    GrossWeight decimal(9,2) NOT NULL,
    -- CBM -- vypocita se
    -- VolumeWeight -- vypocita se
    CONSTRAINT PK_NabidkaAIR2Specifikace PRIMARY KEY NONCLUSTERED ( ID ) ON [PRIMARY]
)
GO

ALTER TABLE NabidkaAIR2Specifikace WITH CHECK ADD CONSTRAINT FK_NabidkaAIR2Specifikace_Nabidka
    FOREIGN KEY ( Nabidka ) REFERENCES Nabidka ( ID ) ON DELETE CASCADE;

CREATE CLUSTERED INDEX [IX_NabidkaAIR2Specifikace_Nabidka] ON [NabidkaAIR2Specifikace] 
( [Nabidka] ASC ) ON [PRIMARY]