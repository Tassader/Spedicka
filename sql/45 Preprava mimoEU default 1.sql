ALTER TABLE Preprava DROP CONSTRAINT DF_Preprava_MimoEU
GO
ALTER TABLE Preprava ADD CONSTRAINT DF_Preprava_MimoEU DEFAULT ((1)) FOR MimoEU
GO