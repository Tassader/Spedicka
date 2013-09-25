-- nejdriv jen nahrat u sebe a sesynchronizovat a nekdy pozdeji pak na server
ALTER TABLE Firma DROP COLUMN Telefon;
ALTER TABLE Firma DROP COLUMN Mobil;
ALTER TABLE Firma DROP COLUMN Fax;
ALTER TABLE Firma DROP COLUMN Email;
