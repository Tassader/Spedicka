-- jeste nenahrano

-- dropne spoooooustu FK, dropne PK firma (ID), vytvori clustered PK (s lepsim nazvem), vytvori znovu FK (ty FK00 apod. budou mit lepsi nazev
-- vse v jednom batchi

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT

BEGIN TRANSACTION
ALTER TABLE Preprava
	DROP CONSTRAINT Preprava_FK00
ALTER TABLE Preprava
	DROP CONSTRAINT Preprava_FK01
ALTER TABLE Preprava
	DROP CONSTRAINT Preprava_FK05
ALTER TABLE Preprava
	DROP CONSTRAINT Preprava_FK_Dopravce
ALTER TABLE PrepravaSil
	DROP CONSTRAINT PrepravaSil_FK00
ALTER TABLE PrepravaSil
	DROP CONSTRAINT PrepravaSil_FK01
ALTER TABLE PrepravaSil
	DROP CONSTRAINT PrepravaSil_FK05
ALTER TABLE PrepravaSil
	DROP CONSTRAINT PrepravaSil_FK_Dopravce
ALTER TABLE KontejnerSil
	DROP CONSTRAINT KontejnerSil_FK01
ALTER TABLE KontejnerSil
	DROP CONSTRAINT KontejnerSil_FK02
ALTER TABLE Kontejner
	DROP CONSTRAINT Kontejner_FK01
ALTER TABLE Kontejner
	DROP CONSTRAINT Kontejner_FK02
ALTER TABLE Potencial
	DROP CONSTRAINT FK_Potencial_Firma
ALTER TABLE Nabidka
	DROP CONSTRAINT FK_Nabidka_Firma
ALTER TABLE Nabidka
	DROP CONSTRAINT FK_Nabidka_Carrier
ALTER TABLE Vynosy
	DROP CONSTRAINT FK_Vynosy_Odberatel
ALTER TABLE VynosySil
	DROP CONSTRAINT FK_VynosySil_Odberatel
ALTER TABLE Preprava
	DROP CONSTRAINT FK_Preprava_Carrier
ALTER TABLE Preprava
	DROP CONSTRAINT FK_Preprava_Dopravce
ALTER TABLE NakladySil
	DROP CONSTRAINT FK_NakladySil_Dodatavel
ALTER TABLE PrepravaSil
	DROP CONSTRAINT FK_PrepravaSil_Carrier
ALTER TABLE PrepravaSil
	DROP CONSTRAINT FK_PrepravaSil_Dopravce
ALTER TABLE Prilezitosti
	DROP CONSTRAINT FK_Prilezitosti_Firma
ALTER TABLE Kontakt
	DROP CONSTRAINT FK_Kontakt_Firma
ALTER TABLE Naklady
	DROP CONSTRAINT FK_Naklady_Dodavatel
ALTER TABLE Aktivity
	DROP CONSTRAINT FK_Aktivity_Firma
ALTER TABLE Preprava
	DROP CONSTRAINT FK_Preprava_CelniOdbaveni
ALTER TABLE PrepravaSil
	DROP CONSTRAINT FK_PrepravaSil_CelniOdbaveni
ALTER TABLE Preprava
	DROP CONSTRAINT FK_Preprava_Oncarriageby
ALTER TABLE PrepravaSil
	DROP CONSTRAINT FK_PrepravaSil_Oncarriageby
ALTER TABLE Firma
	DROP CONSTRAINT aaaaaFirma_PK
-- GO

ALTER TABLE Firma ADD CONSTRAINT
	PK_Firma PRIMARY KEY CLUSTERED
	(
	ID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

-- ALTER TABLE Firma SET (LOCK_ESCALATION = TABLE)
-- GO
ALTER TABLE Aktivity ADD CONSTRAINT
	FK_Aktivity_Firma FOREIGN KEY
	(
	Firma
	) REFERENCES Firma
	(
	ID
	) ON UPDATE  NO ACTION
	 ON DELETE  NO ACTION

-- ALTER TABLE Aktivity SET (LOCK_ESCALATION = TABLE)
-- GO

ALTER TABLE Naklady ADD CONSTRAINT
	FK_Naklady_Dodavatel FOREIGN KEY
	(
	Dodavatel
	) REFERENCES Firma
	(
	ID
	) ON UPDATE  NO ACTION
	 ON DELETE  NO ACTION

-- ALTER TABLE Naklady SET (LOCK_ESCALATION = TABLE)
-- GO
ALTER TABLE Kontakt ADD CONSTRAINT
	FK_Kontakt_Firma FOREIGN KEY
	(
	Firma
	) REFERENCES Firma
	(
	ID
	) ON UPDATE  NO ACTION
	 ON DELETE  NO ACTION

-- ALTER TABLE Kontakt SET (LOCK_ESCALATION = TABLE)
-- GO

ALTER TABLE Prilezitosti ADD CONSTRAINT
	FK_Prilezitosti_Firma FOREIGN KEY
	(
	Firma
	) REFERENCES Firma
	(
	ID
	) ON UPDATE  NO ACTION
	 ON DELETE  NO ACTION

-- ALTER TABLE Prilezitosti SET (LOCK_ESCALATION = TABLE)
-- GO

ALTER TABLE NakladySil ADD CONSTRAINT
	FK_NakladySil_Dodatavel FOREIGN KEY
	(
	Dodavatel
	) REFERENCES Firma
	(
	ID
	) ON UPDATE  NO ACTION
	 ON DELETE  NO ACTION

-- ALTER TABLE NakladySil SET (LOCK_ESCALATION = TABLE)
-- GO

ALTER TABLE VynosySil ADD CONSTRAINT
	FK_VynosySil_Odberatel FOREIGN KEY
	(
	Odberatel
	) REFERENCES Firma
	(
	ID
	) ON UPDATE  NO ACTION
	 ON DELETE  NO ACTION

-- ALTER TABLE VynosySil SET (LOCK_ESCALATION = TABLE)
-- GO

ALTER TABLE Vynosy ADD CONSTRAINT
	FK_Vynosy_Odberatel FOREIGN KEY
	(
	Odberatel
	) REFERENCES Firma
	(
	ID
	) ON UPDATE  NO ACTION
	 ON DELETE  NO ACTION

-- ALTER TABLE Vynosy SET (LOCK_ESCALATION = TABLE)
-- GO

ALTER TABLE Nabidka ADD CONSTRAINT
	FK_Nabidka_Firma FOREIGN KEY
	(
	Firma
	) REFERENCES Firma
	(
	ID
	) ON UPDATE  NO ACTION
	 ON DELETE  NO ACTION

-- GO
-- DECLARE @v sql_variant
-- SET @v = N'Tento záznam nelze kvůli omezením relace mezi tabulkami Nabídka(Zákazník) a Firma přidat, změnit ani odstranit.'
-- EXECUTE sp_addextendedproperty N'MS_ConstraintText', @v, N'SCHEMA', N'dbo', N'TABLE', N'Nabidka', N'CONSTRAINT', N'FK_Nabidka_Firma'
-- GO
ALTER TABLE Nabidka ADD CONSTRAINT
	FK_Nabidka_Carrier FOREIGN KEY
	(
	Carrier
	) REFERENCES Firma
	(
	ID
	) ON UPDATE  NO ACTION
	 ON DELETE  NO ACTION

-- GO
-- DECLARE @v sql_variant
-- SET @v = N'Tento záznam nelze kvůli omezením relace mezi tabulkami Nabídka(Carrier) a Firma přidat, změnit ani odstranit.'
-- EXECUTE sp_addextendedproperty N'MS_ConstraintText', @v, N'SCHEMA', N'dbo', N'TABLE', N'Nabidka', N'CONSTRAINT', N'FK_Nabidka_Carrier'
-- GO
-- ALTER TABLE Nabidka SET (LOCK_ESCALATION = TABLE)
-- GO

ALTER TABLE Potencial ADD CONSTRAINT
	FK_Potencial_Firma FOREIGN KEY
	(
	Firma
	) REFERENCES Firma
	(
	ID
	) ON UPDATE  NO ACTION
	 ON DELETE  NO ACTION

-- ALTER TABLE Potencial SET (LOCK_ESCALATION = TABLE)
-- GO

ALTER TABLE Kontejner ADD CONSTRAINT
	FK_Kontejner_Vykladka FOREIGN KEY
	(
	Vykladka
	) REFERENCES Firma
	(
	ID
	) ON UPDATE  NO ACTION
	 ON DELETE  NO ACTION

ALTER TABLE Kontejner ADD CONSTRAINT
	FK_Kontejner_AdresaNakladky FOREIGN KEY
	(
	AdresaNakladky
	) REFERENCES Firma
	(
	ID
	) ON UPDATE  NO ACTION
	 ON DELETE  NO ACTION

-- ALTER TABLE Kontejner SET (LOCK_ESCALATION = TABLE)
-- GO

ALTER TABLE KontejnerSil ADD CONSTRAINT
	FK_KontejnerSil_Vykladka FOREIGN KEY
	(
	Vykladka
	) REFERENCES Firma
	(
	ID
	) ON UPDATE  NO ACTION
	 ON DELETE  NO ACTION

ALTER TABLE KontejnerSil ADD CONSTRAINT
	FK_KontejnerSil_AdresaNakladky FOREIGN KEY
	(
	AdresaNakladky
	) REFERENCES Firma
	(
	ID
	) ON UPDATE  NO ACTION
	 ON DELETE  NO ACTION

-- ALTER TABLE KontejnerSil SET (LOCK_ESCALATION = TABLE)
-- GO

ALTER TABLE PrepravaSil ADD CONSTRAINT
	FK_PrepravaSil_Odesilatel FOREIGN KEY
	(
	Odesilatel
	) REFERENCES Firma
	(
	ID
	) ON UPDATE  NO ACTION
	 ON DELETE  NO ACTION

ALTER TABLE PrepravaSil ADD CONSTRAINT
	FK_PrepravaSil_Prijemce FOREIGN KEY
	(
	Prijemce
	) REFERENCES Firma
	(
	ID
	) ON UPDATE  NO ACTION
	 ON DELETE  NO ACTION

ALTER TABLE PrepravaSil ADD CONSTRAINT
	FK_PrepravaSil_Zakaznik FOREIGN KEY
	(
	Zakaznik
	) REFERENCES Firma
	(
	ID
	) ON UPDATE  NO ACTION
	 ON DELETE  NO ACTION

ALTER TABLE PrepravaSil ADD CONSTRAINT
	PrepravaSil_FK_Dopravce FOREIGN KEY
	(
	Dopravce
	) REFERENCES Firma
	(
	ID
	) ON UPDATE  NO ACTION
	 ON DELETE  NO ACTION

ALTER TABLE PrepravaSil ADD CONSTRAINT
	FK_PrepravaSil_Carrier FOREIGN KEY
	(
	Carrier
	) REFERENCES Firma
	(
	ID
	) ON UPDATE  NO ACTION
	 ON DELETE  NO ACTION

ALTER TABLE PrepravaSil ADD CONSTRAINT
	FK_PrepravaSil_Dopravce FOREIGN KEY
	(
	Agent
	) REFERENCES Firma
	(
	ID
	) ON UPDATE  NO ACTION
	 ON DELETE  NO ACTION

ALTER TABLE PrepravaSil ADD CONSTRAINT
	FK_PrepravaSil_CelniOdbaveni FOREIGN KEY
	(
	CelniOdbaveni
	) REFERENCES Firma
	(
	ID
	) ON UPDATE  NO ACTION
	 ON DELETE  NO ACTION

ALTER TABLE PrepravaSil ADD CONSTRAINT
	FK_PrepravaSil_Oncarriageby FOREIGN KEY
	(
	Oncarriageby
	) REFERENCES Firma
	(
	ID
	) ON UPDATE  NO ACTION
	 ON DELETE  NO ACTION

-- ALTER TABLE PrepravaSil SET (LOCK_ESCALATION = TABLE)
-- GO

ALTER TABLE Preprava ADD CONSTRAINT
	FK_Preprava_Odesilatel FOREIGN KEY
	(
	Odesilatel
	) REFERENCES Firma
	(
	ID
	) ON UPDATE  NO ACTION
	 ON DELETE  NO ACTION

ALTER TABLE Preprava ADD CONSTRAINT
	FK_Preprava_Prijemce FOREIGN KEY
	(
	Prijemce
	) REFERENCES Firma
	(
	ID
	) ON UPDATE  NO ACTION
	 ON DELETE  NO ACTION

ALTER TABLE Preprava ADD CONSTRAINT
	FK_Preprava_Zakaznik FOREIGN KEY
	(
	Zakaznik
	) REFERENCES Firma
	(
	ID
	) ON UPDATE  NO ACTION
	 ON DELETE  NO ACTION

ALTER TABLE Preprava ADD CONSTRAINT
	Preprava_FK_Dopravce FOREIGN KEY
	(
	Dopravce
	) REFERENCES Firma
	(
	ID
	) ON UPDATE  NO ACTION
	 ON DELETE  NO ACTION

ALTER TABLE Preprava ADD CONSTRAINT
	FK_Preprava_Carrier FOREIGN KEY
	(
	Carrier
	) REFERENCES Firma
	(
	ID
	) ON UPDATE  NO ACTION
	 ON DELETE  NO ACTION

ALTER TABLE Preprava ADD CONSTRAINT
	FK_Preprava_Dopravce FOREIGN KEY
	(
	Agent
	) REFERENCES Firma
	(
	ID
	) ON UPDATE  NO ACTION
	 ON DELETE  NO ACTION

ALTER TABLE Preprava ADD CONSTRAINT
	FK_Preprava_CelniOdbaveni FOREIGN KEY
	(
	CelniOdbaveni
	) REFERENCES Firma
	(
	ID
	) ON UPDATE  NO ACTION
	 ON DELETE  NO ACTION

ALTER TABLE Preprava ADD CONSTRAINT
	FK_Preprava_Oncarriageby FOREIGN KEY
	(
	Oncarriageby
	) REFERENCES Firma
	(
	ID
	) ON UPDATE  NO ACTION
	 ON DELETE  NO ACTION

-- ALTER TABLE Preprava SET (LOCK_ESCALATION = TABLE)
-- GO
COMMIT