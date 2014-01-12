IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[StatistikaSmeru]'))
    DROP VIEW [StatistikaSmeru]
GO

CREATE VIEW StatistikaSmeru --WITH SCHEMABINDING
AS
select count(*) AS Pocet, p.mesic, p.rok, substring(PSCNakl,0,4) AS PSCNakl3, substring(PSCNakl,0,3) AS PSCNakl2, substring(PSCNakl,0,2) AS PSCNakl1, substring(PSCVykl,0,4) AS PSCVykl3, substring(PSCVykl,0,3) AS PSCVykl2, substring(PSCVykl,0,2) AS PSCVykl1, MestoNakl, MestoVykl, f.Firma AS Zakaznik, f.Kategorie, sn.A2 AS StatNakl, sv.A2 AS StatVykl, DatumCasNakladky AS DatumNakladky,
SUM(ISNULL(CastkaKC,0)) AS Vynos
from
dbo.PrepravaSil p join dbo.kontejnersil k on k.preprava=p.id
join dbo.Firma f on f.ID=p.zakaznik

join dbo.Firma n on n.ID=k.adresanakladky
join dbo.Firma v on v.ID=k.Vykladka

left join dbo.Stat sn on sn.N3=n.stat
left join dbo.Stat sv on sv.N3=v.stat

left join dbo.VynosyKCSil vn on vn.preprava=p.id

GROUP BY p.mesic, p.rok, PSCNakl, PSCVykl, MestoNakl, MestoVykl, f.Firma, sn.A2, sv.A2, f.Kategorie, DatumCasNakladky

-- GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON StatistikaSmeru TO prima_road;