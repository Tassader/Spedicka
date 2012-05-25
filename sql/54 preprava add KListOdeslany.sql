ALTER TABLE Preprava ADD KListOdeslany bit NOT NULL CONSTRAINT DF_Preprava_KListOdeslany DEFAULT 0;
GO
ALTER TABLE PrepravaSil ADD KListOdeslany bit NOT NULL CONSTRAINT DF_PrepravaSil_KListOdeslany DEFAULT 0;
GO