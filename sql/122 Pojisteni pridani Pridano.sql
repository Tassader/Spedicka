
ALTER TABLE Pojisteni ADD Pridano date NULL CONSTRAINT DF_Pojisteni_Pridano DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE PojisteniSil ADD Pridano date NULL CONSTRAINT DF_PojisteniSil_Pridano DEFAULT CURRENT_TIMESTAMP;
