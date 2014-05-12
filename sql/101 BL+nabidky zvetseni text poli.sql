--Nabidka nvarchar(4000)-> nvarchar(MAX) - je to html a znacky zabiraj hodne :-/
ALTER TABLE Nabidka ALTER COLUMN NakupniCena nvarchar(MAX) NULL;

-- BL nvarchar 255->nvarchar(4000)
ALTER TABLE BL ALTER COLUMN Description nvarchar(4000) NULL;
ALTER TABLE BL ALTER COLUMN DescriptionH1 nvarchar(4000) NULL;
ALTER TABLE BL ALTER COLUMN DescriptionH2 nvarchar(4000) NULL;
ALTER TABLE BL ALTER COLUMN DescriptionH3 nvarchar(4000) NULL;

-- BLKontejner 255->4000
ALTER TABLE BLKontejner ALTER COLUMN Popis nvarchar(4000) NULL;
