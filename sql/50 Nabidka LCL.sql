-- NabidkaLCL
CREATE TABLE NabidkaLCL (
    ID int IDENTITY(1,1) NOT NULL, -- NOT FOR REPLICATION, -- kvuli moznosti dvou SQL serveru budu nastavovat IDENTITY increment na 2 (seed se snadno zmeni, increment moc ne) -- ??
    Nabidka int NOT NULL, 
    Nakladka int NOT NULL,
    Vykladka int NOT NULL,
    Namorne decimal(9,3) NULL,
    Dokumentace decimal(9,3) NULL,
    CelniOdbaveni decimal(9,3) NULL,
    RozvozSvoz decimal(9,3) NULL,
    DobaPrepravy int NULL,
    Mena nvarchar(10) NOT NULL
)
GO

ALTER TABLE NabidkaLCL ADD CONSTRAINT PK_NabidkaLCL 
    PRIMARY KEY CLUSTERED ( ID ) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY];

ALTER TABLE NabidkaLCL WITH CHECK ADD CONSTRAINT FK_NabidkaLCL_Nabidka
    FOREIGN KEY ( Nabidka ) REFERENCES Nabidka ( ID ) ON DELETE CASCADE;

ALTER TABLE NabidkaLCL WITH CHECK ADD CONSTRAINT FK_NabidkaLCL_Nakladka
    FOREIGN KEY ( Nakladka ) REFERENCES Misto ( ID );

ALTER TABLE NabidkaLCL WITH CHECK ADD CONSTRAINT FK_NabidkaLCL_Vykladka
    FOREIGN KEY ( Vykladka ) REFERENCES Misto ( ID );
GO
-- COMMIT
