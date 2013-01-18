ALTER TABLE Kontakt ADD ZasilatUpominky bit NOT NULL CONSTRAINT DF_Kontakt_ZasilatUpominky DEFAULT 0;
ALTER TABLE Kontakt ADD Titul nvarchar(100) NULL;
