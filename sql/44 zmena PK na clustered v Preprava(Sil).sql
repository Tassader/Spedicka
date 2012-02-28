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
ALTER TABLE Kontejner DROP CONSTRAINT Kontejner_FK05
ALTER TABLE Vynosy DROP CONSTRAINT Vynosy_FK00
ALTER TABLE Naklady DROP CONSTRAINT FK_Naklady_Preprava
ALTER TABLE Preprava DROP CONSTRAINT aaaaaPreprava_PK

ALTER TABLE Preprava ADD CONSTRAINT
	PK_Preprava PRIMARY KEY CLUSTERED 
	(
	ID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

-- ALTER TABLE Preprava SET (LOCK_ESCALATION = TABLE)
-- GO
COMMIT

BEGIN TRANSACTION
ALTER TABLE Naklady ADD CONSTRAINT
	FK_Naklady_Preprava FOREIGN KEY ( Preprava ) 
    REFERENCES Preprava ( ID ) ON UPDATE  NO ACTION ON DELETE  NO ACTION 
	
-- ALTER TABLE Naklady SET (LOCK_ESCALATION = TABLE)
-- GO
COMMIT

BEGIN TRANSACTION
ALTER TABLE Vynosy ADD CONSTRAINT Vynosy_FK00 FOREIGN KEY ( Preprava ) 
    REFERENCES Preprava ( ID ) ON UPDATE  NO ACTION ON DELETE  NO ACTION 

DECLARE @v sql_variant 
SET @v = N'Tento záznam nelze kvůli omezením relace mezi tabulkami Preprava a Vynosy přidat, změnit ani odstranit.'
EXECUTE sp_addextendedproperty N'MS_ConstraintText', @v, N'SCHEMA', N'dbo', N'TABLE', N'Vynosy', N'CONSTRAINT', N'Vynosy_FK00'
-- ALTER TABLE Vynosy SET (LOCK_ESCALATION = TABLE)
-- GO
COMMIT

BEGIN TRANSACTION
ALTER TABLE Kontejner ADD CONSTRAINT Kontejner_FK05 FOREIGN KEY ( Preprava ) 
    REFERENCES Preprava ( ID ) ON UPDATE  NO ACTION ON DELETE  NO ACTION 
-- ALTER TABLE Kontejner SET (LOCK_ESCALATION = TABLE)
-- GO
COMMIT


-- PrepravaSil ----------------------------------------------------------------------------------------------------------------
/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT

*/
BEGIN TRANSACTION
ALTER TABLE VynosySil DROP CONSTRAINT VynosySil_FK00
ALTER TABLE KontejnerSil DROP CONSTRAINT KontejnerSil_FK05
ALTER TABLE NakladySil DROP CONSTRAINT FK_NakladySil_Preprava
ALTER TABLE PrepravaSil DROP CONSTRAINT aaaaaPrepravaSil_PK
ALTER TABLE PrepravaSil ADD CONSTRAINT
	PK_PrepravaSil PRIMARY KEY CLUSTERED 
	(
	ID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

-- ALTER TABLE PrepravaSil SET (LOCK_ESCALATION = TABLE)
-- GO
COMMIT
BEGIN TRANSACTION
ALTER TABLE NakladySil ADD CONSTRAINT
	FK_NakladySil_Preprava FOREIGN KEY
	(
	Preprava
	) REFERENCES PrepravaSil
	(
	ID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
-- ALTER TABLE NakladySil SET (LOCK_ESCALATION = TABLE)
-- GO
COMMIT

BEGIN TRANSACTION
ALTER TABLE KontejnerSil ADD CONSTRAINT
	KontejnerSil_FK05 FOREIGN KEY
	(
	Preprava
	) REFERENCES PrepravaSil
	(
	ID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
-- ALTER TABLE KontejnerSil SET (LOCK_ESCALATION = TABLE)
-- GO
COMMIT

BEGIN TRANSACTION
ALTER TABLE VynosySil ADD CONSTRAINT
	VynosySil_FK00 FOREIGN KEY
	(
	Preprava
	) REFERENCES PrepravaSil
	(
	ID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
-- DECLARE @v sql_variant 
SET @v = N'Tento záznam nelze kvůli omezením relace mezi tabulkami Preprava a Vynosy přidat, změnit ani odstranit.'
EXECUTE sp_addextendedproperty N'MS_ConstraintText', @v, N'SCHEMA', N'dbo', N'TABLE', N'VynosySil', N'CONSTRAINT', N'VynosySil_FK00'
-- ALTER TABLE VynosySil SET (LOCK_ESCALATION = TABLE)
-- GO
COMMIT


-- ALTER INDEX ALL ON Preprava REBUILD;
-- ALTER INDEX ALL ON PrepravaSil REBUILD;