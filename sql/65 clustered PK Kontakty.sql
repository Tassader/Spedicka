-- smazání FK
BEGIN TRANSACTION
ALTER TABLE KontejnerAT DROP CONSTRAINT FK_KontejnerAT_KontaktNakl
ALTER TABLE KontejnerAT DROP CONSTRAINT FK_KontejnerAT_KontaktVykl
ALTER TABLE PrepravaAT DROP CONSTRAINT FK_PrepravaAT_CelniOdbaveniKontakt
ALTER TABLE Nabidka DROP CONSTRAINT FK_Nabidka_Kontakt
ALTER TABLE Kontejner DROP CONSTRAINT FK_Kontejner_KontaktVykl
ALTER TABLE Kontejner DROP CONSTRAINT FK_Kontejner_KontaktNakl
ALTER TABLE KontejnerSil DROP CONSTRAINT FK_KontejnerSil_KontaktVykl
ALTER TABLE KontejnerSil DROP CONSTRAINT FK_KontejnerSil_KontaktNakl
ALTER TABLE Preprava DROP CONSTRAINT FK_Preprava_CelniOdbaveniKontakt
ALTER TABLE Aktivity DROP CONSTRAINT FK_Aktivity_Kontakt
ALTER TABLE PrepravaSil DROP CONSTRAINT FK_PrepravaSil_CelniOdbaveniKontakt
GO

-- tady je to hlavní
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Kontakt]') AND name = N'aaaaaKontakt_PK')
    ALTER TABLE Kontakt DROP CONSTRAINT aaaaaKontakt_PK
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Kontakt]') AND name = N'PK_Kontakt')
    ALTER TABLE Kontakt DROP CONSTRAINT PK_Kontakt
GO

ALTER TABLE Kontakt ADD CONSTRAINT PK_Kontakt PRIMARY KEY CLUSTERED (ID ASC) ON [PRIMARY]
GO

-- znovuvytvoøení FK
ALTER TABLE PrepravaSil ADD CONSTRAINT FK_PrepravaSil_CelniOdbaveniKontakt
    FOREIGN KEY ( CelniOdbaveniKontakt ) REFERENCES Kontakt ( ID ) ON UPDATE CASCADE

ALTER TABLE Aktivity ADD CONSTRAINT FK_Aktivity_Kontakt
    FOREIGN KEY ( Kontakt ) REFERENCES Kontakt ( ID ) /*ON DELETE SET NULL*/ ON UPDATE CASCADE

ALTER TABLE Preprava ADD CONSTRAINT FK_Preprava_CelniOdbaveniKontakt
    FOREIGN KEY ( CelniOdbaveniKontakt ) REFERENCES Kontakt ( ID ) ON UPDATE CASCADE

ALTER TABLE KontejnerSil ADD CONSTRAINT FK_KontejnerSil_KontaktVykl
    FOREIGN KEY ( KontaktVykl ) REFERENCES Kontakt ( ID ) -- ON UPDATE CASCADE

ALTER TABLE KontejnerSil ADD CONSTRAINT FK_KontejnerSil_KontaktNakl
    FOREIGN KEY ( KontaktNakl ) REFERENCES Kontakt ( ID ) -- ON UPDATE CASCADE

ALTER TABLE Kontejner ADD CONSTRAINT FK_Kontejner_KontaktVykl
    FOREIGN KEY ( KontaktVykl ) REFERENCES Kontakt ( ID ) -- ON UPDATE CASCADE

ALTER TABLE Kontejner ADD CONSTRAINT FK_Kontejner_KontaktNakl
    FOREIGN KEY ( KontaktNakl ) REFERENCES Kontakt ( ID ) -- ON UPDATE CASCADE

ALTER TABLE Nabidka ADD CONSTRAINT FK_Nabidka_Kontakt
    FOREIGN KEY ( Kontakt ) REFERENCES Kontakt ( ID ) ON UPDATE CASCADE

ALTER TABLE PrepravaAT ADD CONSTRAINT FK_PrepravaAT_CelniOdbaveniKontakt
    FOREIGN KEY ( CelniOdbaveniKontakt ) REFERENCES Kontakt ( ID ) ON UPDATE CASCADE

ALTER TABLE KontejnerAT ADD CONSTRAINT FK_KontejnerAT_KontaktNakl
    FOREIGN KEY ( KontaktNakl ) REFERENCES Kontakt ( ID ) -- ON UPDATE CASCADE

ALTER TABLE KontejnerAT ADD CONSTRAINT FK_KontejnerAT_KontaktVykl
    FOREIGN KEY ( KontaktVykl ) REFERENCES Kontakt ( ID ) -- ON UPDATE CASCADE

GO
-- extendedproperty - je to na nic
DECLARE @v sql_variant
SET @v = N'Tento záznam nelze odstranit kvùli omezením relace mezi tabulkami Nabídka a Kontakt.'
EXECUTE sp_addextendedproperty N'MS_ConstraintText', @v, N'SCHEMA', N'dbo', N'TABLE', N'Nabidka', N'CONSTRAINT', N'FK_Nabidka_Kontakt'
COMMIT