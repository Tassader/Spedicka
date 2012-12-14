ALTER TABLE NabidkaAIR2 ADD Mena nchar(3) NOT NULL CONSTRAINT DF_NabidkaAIR2_Mena DEFAULT 'Kč';

ALTER TABLE NabidkaAIR2Specifikace ADD CBM decimal(9,2) NULL;
GO
UPDATE NabidkaAIR2Specifikace SET CBM=PocetKusu*Delka*Sirka*Vyska/1000000;
ALTER TABLE NabidkaAIR2Specifikace ALTER COLUMN CBM decimal(9,2) NOT NULL;

-- Misto techto veci je mozno vyplnit i jen CBM
ALTER TABLE NabidkaAIR2Specifikace ALTER COLUMN PocetKusu decimal(9,2) NULL;
ALTER TABLE NabidkaAIR2Specifikace ALTER COLUMN Delka decimal(9,2) NULL;
ALTER TABLE NabidkaAIR2Specifikace ALTER COLUMN Sirka decimal(9,2) NULL;
ALTER TABLE NabidkaAIR2Specifikace ALTER COLUMN Vyska decimal(9,2) NULL;


/*
-- dát později

ALTER TABLE NabidkaAIR2 DROP COLUMN LeteckaPrepravaMena;
ALTER TABLE NabidkaAIR2 DROP COLUMN FSCMena;
ALTER TABLE NabidkaAIR2 DROP COLUMN SCCMena;
*/
