
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Historie]') AND type in (N'U'))
    DROP TABLE [Historie]
GO

CREATE TABLE Historie (
--  ID int IDENTITY(1,1) NOT NULL,
  ID int NOT NULL,
  Datum datetime2(2) NOT NULL CONSTRAINT DF_Historie_Datum DEFAULT getdate(),
  Uzivatel nvarchar(255) CONSTRAINT DF_Historie_Uzivatel DEFAULT stuff(suser_sname(), 1, charindex('\', suser_sname()), ''),
  Tabulka nvarchar(255),
  Sloupec nvarchar(255),
  Radek int,
  Stare nvarchar(2000),
  Nove nvarchar(2000),
CONSTRAINT PK_Historie PRIMARY KEY CLUSTERED (ID ASC)
)
GO

---------------------------------------------------
--ALTER TABLE Historie DROP CONSTRAINT DF_Historie_Uzivatel
--ALTER TABLE Historie ADD CONSTRAINT DF_Historie_Uzivatel DEFAULT stuff(suser_sname(), 1, charindex('\', suser_sname()), '') FOR Uzivatel
---------------------------------------------------
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[FirmaOnInsert_Historie]'))
    DROP TRIGGER [FirmaOnInsert_Historie]
GO
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[FirmaOnUpdate_Historie]'))
    DROP TRIGGER [FirmaOnUpdate_Historie]
GO
CREATE TRIGGER [FirmaOnInsert_Historie]
   ON  [Firma]
   AFTER INSERT
   NOT FOR REPLICATION
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
	SET NOCOUNT ON;

  INSERT INTO Historie (Tabulka, Radek, Nove, ID)
  SELECT 'Firma', i.ID, i.Kategorie, (SELECT MAX(ID) FROM Historie) + ROW_NUMBER() OVER (ORDER BY (select 1))
  FROM Inserted AS i
/*
  IF UPDATE(Kategorie)
  begin
    INSERT INTO Historie (Tabulka, Sloupec, Radek, Stare, Nove, ID)
    SELECT 'Firma', 'Kategorie', i.ID, '<neexistujici firma>', i.Kategorie, (SELECT MAX(ID)+1 FROM Historie)
    FROM Inserted AS i
  end
*/
END
GO

CREATE TRIGGER [FirmaOnUpdate_Historie]
   ON  [Firma]
   AFTER UPDATE
   NOT FOR REPLICATION
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
	SET NOCOUNT ON;

  IF UPDATE(Kategorie)
  begin
    INSERT INTO Historie (Tabulka, Sloupec, Radek, Stare, Nove, ID)
    SELECT 'Firma', 'Kategorie', i.ID/*ISNULL(i.ID,d.ID)*/, d.Kategorie, i.Kategorie, (SELECT MAX(ID) FROM Historie) + ROW_NUMBER() OVER (ORDER BY (select 1))
    FROM
    ( SELECT ID,Kategorie FROM Inserted
      EXCEPT
      SELECT ID,Kategorie FROM Deleted) AS i
    LEFT JOIN Deleted d ON i.ID=d.ID
  end

  IF UPDATE(KategorieCRM)
  begin
    INSERT INTO Historie (Tabulka, Sloupec, Radek, Stare, Nove, Uzivatel, ID)
    SELECT 'Firma', 'KategorieCRM', i.ID/*ISNULL(i.ID,d.ID)*/, cd.KategorieCRM, ci.KategorieCRM,
    stuff(suser_sname(), 1, charindex('\', suser_sname()), '')+CASE WHEN trigger_nestlevel()>1 THEN ' (automaticky)' ELSE '' END
    , (SELECT MAX(ID) FROM Historie) + ROW_NUMBER() OVER (ORDER BY (select 1))
    FROM
    ( SELECT ID,KategorieCRM FROM Inserted
      EXCEPT
      SELECT ID,KategorieCRM FROM Deleted) AS i
    LEFT JOIN Deleted d ON i.ID=d.ID
    LEFT JOIN KategorieCRM ci ON ci.ID=i.KategorieCRM
    LEFT JOIN KategorieCRM cd ON cd.ID=d.KategorieCRM
  end

  IF UPDATE(Prodejce)
  begin
    INSERT INTO Historie (Tabulka, Sloupec, Radek, Stare, Nove, ID)
    SELECT 'Firma', 'Prodejce', i.ID, od.Prijmeni, oi.Prijmeni, (SELECT MAX(ID) FROM Historie) + ROW_NUMBER() OVER (ORDER BY (select 1))
    FROM
    ( SELECT ID,Prodejce FROM Inserted
      EXCEPT
      SELECT ID,Prodejce FROM Deleted) AS i
    LEFT JOIN Deleted d ON i.ID=d.ID
    LEFT JOIN Obchodnik oi ON oi.ID=i.Prodejce
    LEFT JOIN Obchodnik od ON od.ID=d.Prodejce
  end

  IF UPDATE(Disponent)
  begin
    INSERT INTO Historie (Tabulka, Sloupec, Radek, Stare, Nove, ID)
    SELECT 'Firma', 'Disponent', i.ID, od.Prijmeni, oi.Prijmeni, (SELECT MAX(ID) FROM Historie) + ROW_NUMBER() OVER (ORDER BY (select 1))
    FROM
    ( SELECT ID,Disponent FROM Inserted
      EXCEPT
      SELECT ID,Disponent FROM Deleted) AS i
    LEFT JOIN Deleted d ON i.ID=d.ID
    LEFT JOIN Obchodnik oi ON oi.ID=i.Disponent
    LEFT JOIN Obchodnik od ON od.ID=d.Disponent
  end

  IF UPDATE(Priorita)
  begin
    INSERT INTO Historie (Tabulka, Sloupec, Radek, Stare, Nove, ID)
    SELECT 'Firma', 'Priorita', i.ID, d.Priorita, i.Priorita, (SELECT MAX(ID) FROM Historie) + ROW_NUMBER() OVER (ORDER BY (select 1))
    FROM
    ( SELECT ID,Priorita FROM Inserted
      EXCEPT
      SELECT ID,Priorita FROM Deleted) AS i
    LEFT JOIN Deleted d ON i.ID=d.ID
  end

END
GO
---------------------------------------------------

/*
INSERT INTO Historie (Tabulka, Radek, Uzivatel, Datum, Stare, Nove)
SELECT 'Firma', ID, stuff(Zalozil, 1, charindex('\', Zalozil), ''), ZalozilCas, '<neexistujici firma>', Kategorie
FROM Firma WHERE zalozil IS NOT NULL
*/

UPDATE Historie SET Uzivatel=stuff(Uzivatel, 1, charindex('\', Uzivatel), '');

----- v budoucnu ...
-- nejdriv jen nahrat u sebe a sesynchronizovat a nekdy pozdeji pak na server
--ALTER TABLE Firma DROP COLUMN ZalozilCas;
--ALTER TABLE Firma DROP COLUMN Zalozil;
BEGIN TRAN
  DELETE FROM Historie WHERE stare='<neexistujici firma>' --AND Sloupec<>'Kategorie';
  SELECT * FROM Historie;
ROLLBACK

BEGIN TRAN
update Historie set 
Stare=Prijmeni
from Historie h join Obchodnik o ON o.ID=h.Stare
where Sloupec in ('Prodejce', 'Disponent')

update Historie set 
Nove=Prijmeni
from Historie h join Obchodnik o ON o.ID=h.Nove
where Sloupec in ('Prodejce', 'Disponent')

SELECT * FROM Historie;
ROLLBACK
