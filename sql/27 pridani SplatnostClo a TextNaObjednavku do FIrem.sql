ALTER TABLE Firma ADD SplatnostClo varchar(50);
ALTER TABLE Firma ADD TextNaObjednavku nvarchar(255);
GO
/*
-- Prava
-- use [PrimaSpedicka]
*/
DENY UPDATE ON [Firma] ([SplatnostClo]) TO [SERVER\Hradec]
DENY UPDATE ON [Firma] ([TextNaObjednavku]) TO [SERVER\Praha]
GO

-- UPDATE Nastaveni SET VALUE='Prima Spedièka 8.1' WHERE NAME='Version';