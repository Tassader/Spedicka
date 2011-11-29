BEGIN TRAN
UPDATE Firma SET Stat=203 WHERE Stat LIKE 'Èeská republika' OR Stat LIKE 'CZECH REPUBLIC' OR Stat LIKE 'CZ'; -- jine tam neni
UPDATE Firma SET Stat=NULL WHERE Stat <> '203';

ALTER TABLE Firma ALTER COLUMN Stat smallint NULL 
GO

ALTER TABLE Firma ADD CONSTRAINT FK_Firma_Stat
    FOREIGN KEY ( Stat ) REFERENCES Stat ( N3 )
    ON UPDATE CASCADE  ON DELETE SET NULL;

ALTER TABLE Misto ADD Stat smallint NULL 
GO

ALTER TABLE Misto ADD CONSTRAINT FK_Misto_Stat
    FOREIGN KEY ( Stat ) REFERENCES Stat ( N3 )
    ON UPDATE CASCADE  ON DELETE SET NULL;
COMMIT
-- ROLLBACK -- pokud transakce selze, nerollbackne se automaticky