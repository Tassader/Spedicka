BEGIN TRAN

ALTER TABLE Preprava ADD KurzEUR real
ALTER TABLE Preprava ADD KurzUSD real

GO 

UPDATE	Preprava
SET		KurzEUR = ISNULL(EUR, 25)
		,KurzUSD = ISNULL(USD, 20)
FROM	Preprava
		LEFT JOIN Kurzy ON Kurzy.Rok = Preprava.Rok AND Kurzy.Tyden = Preprava.Tyden

GO

-- ALTER TABLE Preprava ALTER COLUMN KurzEUR real NOT NULL
-- ALTER TABLE Preprava ALTER COLUMN KurzUSD real NOT NULL
-- GO


ALTER TABLE PrepravaSil ADD KurzEUR real
ALTER TABLE PrepravaSil ADD KurzUSD real

GO 

UPDATE	PrepravaSil
SET		KurzEUR = ISNULL(EUR, 25)
		,KurzUSD = ISNULL(USD, 20)
FROM	PrepravaSil
		LEFT JOIN Kurzy ON Kurzy.Rok = PrepravaSil.Rok AND Kurzy.Tyden = PrepravaSil.Tyden

GO

-- ALTER TABLE PrepravaSil ALTER COLUMN KurzEUR real NOT NULL
-- ALTER TABLE PrepravaSil ALTER COLUMN KurzUSD real NOT NULL
GO
COMMIT
-- ROLLBACK
