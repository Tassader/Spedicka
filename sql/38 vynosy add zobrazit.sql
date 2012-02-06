ALTER TABLE Vynosy ADD Zobrazit bit NOT NULL CONSTRAINT DF_Vynosy_Zobrazit DEFAULT 1;

ALTER TABLE VynosySil ADD Zobrazit bit NOT NULL CONSTRAINT DF_VynosySil_Zobrazit DEFAULT 1;