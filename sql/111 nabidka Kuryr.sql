-- NabidkaLCL
CREATE TABLE NabidkaKuryr (
    ID int IDENTITY(1,1) NOT NULL, -- NOT FOR REPLICATION
    Nabidka int NOT NULL,
    Nakladka int NOT NULL,
    Vykladka int NOT NULL,
    Cena decimal(9,3) NULL,
    DobaPrepravy int NULL,
    Mena nvarchar(10) NOT NULL
)
GO

ALTER TABLE NabidkaKuryr ADD CONSTRAINT PK_NabidkaKuryr
    PRIMARY KEY CLUSTERED ( ID ) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY];

ALTER TABLE NabidkaKuryr WITH CHECK ADD CONSTRAINT FK_NabidkaKuryr_Nabidka
    FOREIGN KEY ( Nabidka ) REFERENCES Nabidka ( ID ) ON DELETE CASCADE;

ALTER TABLE NabidkaKuryr WITH CHECK ADD CONSTRAINT FK_NabidkaKuryr_Nakladka
    FOREIGN KEY ( Nakladka ) REFERENCES Misto ( ID );

ALTER TABLE NabidkaKuryr WITH CHECK ADD CONSTRAINT FK_NabidkaKuryr_Vykladka
    FOREIGN KEY ( Vykladka ) REFERENCES Misto ( ID );
GO
