-- zvetseni z 150 na 255 (maximum pro TEXT v accessu)
ALTER TABLE Kontejner ALTER COLUMN NakladkaPoznamka nvarchar(255) NULL;
ALTER TABLE Kontejner ALTER COLUMN VykladkaPoznamka nvarchar(255) NULL;

ALTER TABLE KontejnerSil ALTER COLUMN NakladkaPoznamka nvarchar(255) NULL;
ALTER TABLE KontejnerSil ALTER COLUMN VykladkaPoznamka nvarchar(255) NULL;

ALTER TABLE KontejnerAT ALTER COLUMN NakladkaPoznamka nvarchar(255) NULL;
ALTER TABLE KontejnerAT ALTER COLUMN VykladkaPoznamka nvarchar(255) NULL;
