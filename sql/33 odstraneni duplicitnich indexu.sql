-- -- duplicitni indexy
-- preprava
DROP INDEX [{D8FDF3CC-40DA-405E-A397-746E4DADFF8E}] ON Preprava -- shodny s DruhPrepravyID
GO
DROP INDEX [{A7CC9E1F-271D-4D45-A83D-4057139405E5}] ON Preprava -- shodny s ObchodnikID
GO
DROP INDEX [{90860C54-1DC5-4A6D-8162-F5221A0AC1B4}] ON Preprava -- shodny s StavprepravyID
GO
DROP INDEX [{8BD991AC-FEA9-4FCC-8027-D037F56E135D}] ON Preprava -- shodny s PrijemceID
GO
DROP INDEX [{28AD5B94-4A1E-45A3-B43E-08D6CF059953}] ON Preprava -- shodny s OdesilatelID
GO

-- kontakt
DROP INDEX ID ON Kontakt -- shodny s aaaaaKontakt_PK
GO

-- jeste odstranit neuzitecne indexy (u sloupcu kde se malo meni hodnota, napr. Preprava-StavPrepravy, DruhPrepravy)
-- pridat indexy (hlavne PrepravaSil, KontejnerSil, NakladySil, Vynosy, VynosySil; dale firma.firma)

-- PK u kontejneru, nakladu, vynosu a firem by mozna mel byt clustered? Anebo u firmy mozna clustered Firma a u prepravy Cislo?