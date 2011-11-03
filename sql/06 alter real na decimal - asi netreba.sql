-- ty drop constraint mozna nepudou pac se jmenujou asi nahodne :-/

-- ALTER TABLE NOCHECK CONSTRAINT ALL
-- GO
-- ALTER TABLE [Kurzy] DROP CONSTRAINT [DF__Kurzy__USD__239E4DCF]
-- ALTER TABLE [Kurzy] DROP CONSTRAINT [DF__Kurzy__EUR__24927208]

ALTER TABLE Kurzy ALTER COLUMN USD real NOT NULL
GO

ALTER TABLE Kurzy ALTER COLUMN EUR real NOT NULL
GO

-- ALTER TABLE CHECK CONSTRAINT ALL -- jde o default (0) pro vyse uvedene - lepe dat treba 1 + jim dat nejake inteligentni jmeno
-- GO


-- ALTER TABLE [Naklady] DROP CONSTRAINT [DF__Naklady__Naklady__1920BF5C]
-- ALTER TABLE [Naklady] DROP CONSTRAINT [DF__Naklady__Mnozstv__1A14E395]

ALTER TABLE [Naklady] DROP COLUMN Castka
GO

ALTER TABLE Naklady ALTER COLUMN Mnozstvi real NOT NULL
GO

ALTER TABLE Naklady ALTER COLUMN NakladyJednotka real NOT NULL
GO

ALTER TABLE [Naklady] ADD Castka AS CAST(NakladyJednotka*Mnozstvi AS real)
GO

--ALTER TABLE Naklady ADD  DEFAULT ((0)) FOR [FakturaPrijata]
--GO

/*
DECLARE @sql nvarchar(255)
WHILE EXISTS(SELECT name FROM sys.objects
         WHERE name LIKE '%Vynosy%' 
            AND type = 'D')
BEGIN
    select    @sql = 'DROP DEAFULT ' + name 
    exec    sp_executesql @sql
END*/

-- ALTER TABLE [Vynosy] DROP CONSTRAINT [DF__Vynosy__VynosyJe__7C8480AE]
-- ALTER TABLE [Vynosy] DROP CONSTRAINT [DF__Vynosy__Mnozstvi__7D78A4E7]

ALTER TABLE [Vynosy] DROP COLUMN Castka
GO

ALTER TABLE Vynosy ALTER COLUMN Mnozstvi real NOT NULL
GO

ALTER TABLE Vynosy ALTER COLUMN VynosyJednotka real NOT NULL
GO

ALTER TABLE [Vynosy] ADD Castka AS CAST(VynosyJednotka*Mnozstvi AS real)
GO

--  ALTER TABLE [Vynosy] ADD CONSTRAINT [jmeno] DEFAULT 0 FOR [sloupec] 