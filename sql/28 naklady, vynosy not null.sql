-- zmeni se v designeru pac je potreba dropnout indexy a klice a znovu zalozit ... :-/
DELETE FROM Vynosy WHERE Preprava IS NULL;
DELETE FROM VynosySil WHERE Preprava IS NULL;

-- dulezite
ALTER TABLE NakladySil ALTER Column FakturaPrijata bit NOT NULL;
ALTER TABLE Vynosy ALTER Column Preprava int NOT NULL;
ALTER TABLE VynosySil ALTER Column Preprava int NOT NULL;
GO
/*
-- mene dulezite
ALTER TABLE Naklady ALTER Column upsize_ts timestamp NOT NULL;

ALTER TABLE NakladySil ALTER Column Dodavatel int NOT NULL;
ALTER TABLE NakladySil ALTER Column Sluzba int NOT NULL;
ALTER TABLE NakladySil ALTER Column Mena nvarchar(10) NOT NULL;
ALTER TABLE NakladySil ALTER Column upsize_ts timestamp NOT NULL;

ALTER TABLE Vynosy ALTER Column upsize_ts timestamp NOT NULL;

ALTER TABLE VynosySil ALTER Column Odberatel int NOT NULL;
ALTER TABLE VynosySil ALTER Column Sluzba int NOT NULL;
ALTER TABLE VynosySil ALTER Column Mena nvarchar(10) NOT NULL;
ALTER TABLE VynosySil ALTER Column upsize_ts timestamp NOT NULL;
GO
*/

-- preprava, prepravasil - obchodnik, druhprepravy, zakaznik 