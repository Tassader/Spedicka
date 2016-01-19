ALTER TABLE Pojisteni ADD RozsahPojisteni nvarchar(255) NULL;
ALTER TABLE Pojisteni ADD PojistnyCertifikat bit NOT NULL DEFAULT 0;
ALTER TABLE Pojisteni ADD PocetOriginalu tinyint NULL;
ALTER TABLE Pojisteni ADD PocetKopii tinyint NULL;

ALTER TABLE PojisteniSil ADD RozsahPojisteni nvarchar(255) NULL;
ALTER TABLE PojisteniSil ADD PojistnyCertifikat bit NOT NULL DEFAULT 0;
ALTER TABLE PojisteniSil ADD PocetOriginalu tinyint NULL;
ALTER TABLE PojisteniSil ADD PocetKopii tinyint NULL;

-- ?? bool HasBeenSent