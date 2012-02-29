ALTER TABLE Kontejner ADD Zobrazit bit NOT NULL CONSTRAINT DF_Kontejner_Zobrazit DEFAULT 1;

ALTER TABLE KontejnerSil ADD Zobrazit bit NOT NULL CONSTRAINT DF_KontejnerSil_Zobrazit DEFAULT 1;

ALTER TABLE Misto ADD Region nvarchar(100) NULL;