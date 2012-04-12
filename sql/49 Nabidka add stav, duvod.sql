-- ALTER TABLE Nabidka ADD blabla1 bit;
-- ALTER TABLE Nabidka ADD blabla2 bit;
ALTER TABLE Nabidka ADD Stav int NOT NULL CONSTRAINT DF_Nabidka_Stav DEFAULT 1;
ALTER TABLE Nabidka ADD Duvod nvarchar(255) NULL;
GO

ALTER TABLE Nabidka DROP CONSTRAINT DF_Nabidka_Stav; -- bude nastaveno jako default ve frontendu


ALTER TABLE Nabidka WITH CHECK ADD CONSTRAINT FK_Nabidka_Stav
    FOREIGN KEY ( Stav ) REFERENCES StavPrilezitosti ( ID )
    ON DELETE  NO ACTION;
