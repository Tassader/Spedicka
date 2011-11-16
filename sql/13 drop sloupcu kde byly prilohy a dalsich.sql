-- firma.prilohy, Preprava.ObchodniFaktury, MBL, HBL, CelniDokumenty, NakladoveFaktury, VynosoveFaktury 
ALTER TABLE Firma DROP COLUMN Prilohy;

ALTER TABLE Preprava DROP COLUMN ObchodniFaktury;
ALTER TABLE Preprava DROP COLUMN MBL;
ALTER TABLE Preprava DROP COLUMN HBL;
ALTER TABLE Preprava DROP COLUMN CelniDokumenty;
ALTER TABLE Preprava DROP COLUMN NakladoveFaktury;
ALTER TABLE Preprava DROP COLUMN VynosoveFaktury;

ALTER TABLE PrepravaSil DROP COLUMN ObchodniFaktury;
ALTER TABLE PrepravaSil DROP COLUMN MBL;
ALTER TABLE PrepravaSil DROP COLUMN HBL;
ALTER TABLE PrepravaSil DROP COLUMN CelniDokumenty;
ALTER TABLE PrepravaSil DROP COLUMN NakladoveFaktury;
ALTER TABLE PrepravaSil DROP COLUMN VynosoveFaktury;
GO

ALTER TABLE Preprava DROP COLUMN KontaktMail;
ALTER TABLE PrepravaSil DROP COLUMN KontaktMail;
GO