BEGIN TRAN
ALTER TABLE Preprava ADD Oncarriageby int;

-- GO

-- Klice
ALTER TABLE Preprava WITH CHECK ADD CONSTRAINT FK_Preprava_Oncarriageby
    FOREIGN KEY ( Oncarriageby ) REFERENCES Firma ( ID );
COMMIT
-- ROLLBACK
-- GO

-- dtto Silnicni
BEGIN TRAN
ALTER TABLE PrepravaSil ADD Oncarriageby int;
-- GO

-- Klice
ALTER TABLE PrepravaSil WITH CHECK ADD CONSTRAINT FK_PrepravaSil_Oncarriageby
    FOREIGN KEY ( Oncarriageby ) REFERENCES Firma ( ID );
COMMIT
-- ROLLBACK
-- GO

-- indexy snad nebudou potreba ...  