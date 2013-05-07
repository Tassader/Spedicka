ALTER VIEW [AgregovaneNakladyAT]
AS
SELECT Preprava,
    SUM(CastkaKC) AS CastkaKC
--    ,SUM(n.CastkaUSD) AS NakladyUSD
--    ,SUM(n.CastkaEUR) AS NakladyEUR
FROM NakladyKCAT -- bylo tu bez AT
GROUP BY Preprava
GO
