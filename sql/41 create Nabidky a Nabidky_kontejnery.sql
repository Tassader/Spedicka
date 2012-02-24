BEGIN TRANSACTION
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'NabidkaKontejnery') AND type in (N'U'))
    DROP TABLE NabidkaKontejnery;
-- IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'NabidkaOnInsert') AND type in (N'TR'))
--    DROP TRIGGER NabidkaOnInsert;
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'Nabidka') AND type in (N'U'))
    DROP TABLE Nabidka;
GO

CREATE TABLE Nabidka (
    ID int IDENTITY(1,1) NOT NULL, -- NOT FOR REPLICATION, -- kvuli moznosti dvou SQL serveru budu nastavovat IDENTITY increment na 2 (seed se snadno zmeni, increment moc ne) -- ??
    Cislo char(11) NOT NULL,
    DruhPrepravy int NOT NULL,
    Smer char(6) NOT NULL,
    Firma int NOT NULL,
    Kontakt int NULL,
    Incoterms int NOT NULL,
    Carrier int NULL,
    Nacenil int NOT NULL,
    DatumVystaveni datetime NOT NULL,
    PlatnostNabidky datetime NOT NULL,
    Kurz decimal(9,4) NOT NULL,
    Poznamka nvarchar(255) NULL,
    -- Zasilka
    -- Pristav VIA ??
)
GO

ALTER TABLE Nabidka ADD CONSTRAINT PK_Nabidka 
    PRIMARY KEY CLUSTERED ( ID ) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY];

ALTER TABLE Nabidka WITH CHECK ADD CONSTRAINT FK_Nabidka_Firma
    FOREIGN KEY ( Firma ) REFERENCES Firma ( ID );
EXECUTE sp_addextendedproperty N'MS_ConstraintText', N'Tento záznam nelze kvůli omezením relace mezi tabulkami Nabídka(Zákazník) a Firma přidat, změnit ani odstranit.', N'SCHEMA', N'dbo', N'TABLE', N'Nabidka', N'CONSTRAINT', N'FK_Nabidka_Firma'

ALTER TABLE Nabidka WITH CHECK ADD CONSTRAINT FK_Nabidka_Kontakt
    FOREIGN KEY ( Kontakt ) REFERENCES Kontakt ( ID );
EXECUTE sp_addextendedproperty N'MS_ConstraintText', N'Tento záznam nelze kvůli omezením relace mezi tabulkami Nabídka a Kontakt přidat, změnit ani odstranit.', N'SCHEMA', N'dbo', N'TABLE', N'Nabidka', N'CONSTRAINT', N'FK_Nabidka_Kontakt'

ALTER TABLE [Nabidka]  WITH CHECK ADD CONSTRAINT [FK_Nabidka_Carrier] 
    FOREIGN KEY([Carrier]) REFERENCES [Firma] ([ID])
EXECUTE sp_addextendedproperty N'MS_ConstraintText', N'Tento záznam nelze kvůli omezením relace mezi tabulkami Nabídka(Carrier) a Firma přidat, změnit ani odstranit.', N'SCHEMA', N'dbo', N'TABLE', N'Nabidka', N'CONSTRAINT', N'FK_Nabidka_Carrier'

ALTER TABLE Nabidka WITH CHECK ADD CONSTRAINT FK_Nabidka_Incoterms
    FOREIGN KEY ( Incoterms ) REFERENCES Incoterms ( ID );
EXECUTE sp_addextendedproperty N'MS_ConstraintText', N'Tento záznam nelze kvůli omezením relace mezi tabulkami Nabídka a Incoterms přidat, změnit ani odstranit.', N'SCHEMA', N'dbo', N'TABLE', N'Nabidka', N'CONSTRAINT', N'FK_Nabidka_Incoterms'

ALTER TABLE Nabidka WITH CHECK ADD CONSTRAINT FK_Nabidka_Nacenil
    FOREIGN KEY ( Nacenil ) REFERENCES Obchodnik ( ID );
EXECUTE sp_addextendedproperty N'MS_ConstraintText', N'Tento záznam nelze kvůli omezením relace mezi tabulkami Nabídka(Nacenil) a Obchodník přidat, změnit ani odstranit.', N'SCHEMA', N'dbo', N'TABLE', N'Nabidka', N'CONSTRAINT', N'FK_Nabidka_Nacenil'
GO


CREATE TRIGGER NabidkaOnInsert 
   ON  Nabidka
   FOR INSERT
   NOT FOR REPLICATION
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE Nabidka SET 
        Cislo='CN'+CAST(YEAR(GETDATE()) AS VARCHAR) + '-' + 
            Right('000' + 
                CAST((SELECT ISNULL(MAX(CAST(RIGHT(P.Cislo, LEN(P.Cislo)-7)AS smallint)),0)+1 FROM Nabidka P WHERE RIGHT(LEFT(P.Cislo, 6),4) like YEAR(GETDATE())) AS VARCHAR),4)
    FROM inserted
    WHERE Nabidka.ID=inserted.ID;
END
GO


-- Nabidky_Kontejnery
CREATE TABLE NabidkaKontejnery (
    ID int IDENTITY(1,1) NOT NULL, -- NOT FOR REPLICATION, -- kvuli moznosti dvou SQL serveru budu nastavovat IDENTITY increment na 2 (seed se snadno zmeni, increment moc ne) -- ??
    Nabidka int NOT NULL, -- ciselnik bude lokalni
    Nakladka int NOT NULL,
    Vykladka int NOT NULL,
    Cena20DC14 decimal(9,3) NULL,
    Cena20DC25 decimal(9,3) NULL,
    Cena40DC27 decimal(9,3) NULL,
    Cena40HC27 decimal(9,3) NULL,
    DobaPrepravy int NULL,
    Mena nvarchar(10) NOT NULL
)
GO

ALTER TABLE NabidkaKontejnery ADD CONSTRAINT PK_NabidkaKontejnery 
    PRIMARY KEY CLUSTERED ( ID ) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY];

ALTER TABLE NabidkaKontejnery WITH CHECK ADD CONSTRAINT FK_NabidkaKontejnery_Nabidka
    FOREIGN KEY ( Nabidka ) REFERENCES Nabidka ( ID ) ON DELETE CASCADE;
EXECUTE sp_addextendedproperty N'MS_ConstraintText', N'Tento záznam nelze kvůli omezením relace mezi tabulkami Nabídka a nabídkaFCLpřidat, změnit ani odstranit.', N'SCHEMA', N'dbo', N'TABLE', N'NabidkaKontejnery', N'CONSTRAINT', N'FK_NabidkaKontejnery_Nabidka'

ALTER TABLE NabidkaKontejnery WITH CHECK ADD CONSTRAINT FK_NabidkaKontejnery_Nakladka
    FOREIGN KEY ( Nakladka ) REFERENCES Misto ( ID );
EXECUTE sp_addextendedproperty N'MS_ConstraintText', N'Tento záznam nelze kvůli omezením relace mezi tabulkami NabídkaFCL(Nakladka) a Přístavy přidat, změnit ani odstranit.', N'SCHEMA', N'dbo', N'TABLE', N'NabidkaKontejnery', N'CONSTRAINT', N'FK_NabidkaKontejnery_Nakladka'

ALTER TABLE NabidkaKontejnery WITH CHECK ADD CONSTRAINT FK_NabidkaKontejnery_Vykladka
    FOREIGN KEY ( Vykladka ) REFERENCES Misto ( ID );
EXECUTE sp_addextendedproperty N'MS_ConstraintText', N'Tento záznam nelze kvůli omezením relace mezi tabulkami NabídkaFCL(Vykladka) a Přístavy přidat, změnit ani odstranit.', N'SCHEMA', N'dbo', N'TABLE', N'NabidkaKontejnery', N'CONSTRAINT', N'FK_NabidkaKontejnery_Vykladka'
GO

COMMIT
