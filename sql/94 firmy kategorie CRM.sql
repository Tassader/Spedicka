IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'KategorieCRM') AND type in (N'U'))
    DROP TABLE KategorieCRM;
    
CREATE TABLE KategorieCRM (
    ID tinyint IDENTITY (1,1) NOT NULL,
    KategorieCRM nvarchar(255) NOT NULL,

    CONSTRAINT PK_KategorieCRM PRIMARY KEY CLUSTERED ( ID ) ON [PRIMARY]
)
GO


ALTER TABLE Firma ADD KategorieCRM tinyint;  --WITH ROLLBACK AFTER 20;

ALTER TABLE Firma  WITH CHECK ADD CONSTRAINT [FK_KategorieCRM] FOREIGN KEY([KategorieCRM])
    REFERENCES [KategorieCRM] ([ID]);
GO

SET IDENTITY_INSERT KategorieCRM ON;

INSERT INTO KategorieCRM(ID, KategorieCRM) VALUES (1,'Telesales');
INSERT INTO KategorieCRM(ID, KategorieCRM) VALUES (2,'Target');
INSERT INTO KategorieCRM(ID, KategorieCRM) VALUES (3,'Nový zákazník');
INSERT INTO KategorieCRM(ID, KategorieCRM) VALUES (4,'Zákazník');
INSERT INTO KategorieCRM(ID, KategorieCRM) VALUES (5,'Ztracený zákazník');
INSERT INTO KategorieCRM(ID, KategorieCRM) VALUES (6,'Potenciál');

SET IDENTITY_INSERT KategorieCRM OFF;

UPDATE Firma SET KategorieCRM='1' WHERE Kategorie LIKE 'Telesales';
UPDATE Firma SET KategorieCRM='2' WHERE Kategorie LIKE 'Target';
UPDATE Firma SET KategorieCRM='3' WHERE Kategorie LIKE 'Nový zákazník';
UPDATE Firma SET KategorieCRM='4' WHERE Kategorie LIKE 'Zákazník';
UPDATE Firma SET KategorieCRM='5' WHERE Kategorie LIKE 'Ztracený zákazník';
UPDATE Firma SET KategorieCRM='6' WHERE Kategorie LIKE 'Potenciál';

--UPDATE Firma SET KategorieC=NULL WHERE Kategorie IN ('Telesales','Target','Nový zákazník','Zákazník','Ztracený zákazník','Potenciál');
set rowcount 1
while exists (select * from Firma where Kategorie IN ('Telesales','Target','Nový zákazník','Zákazník','Ztracený zákazník','Potenciál'))
  UPDATE Firma SET Kategorie=NULL WHERE Kategorie IN ('Telesales','Target','Nový zákazník','Zákazník','Ztracený zákazník','Potenciál');
set rowcount 0
-- TODO upravit trigger při založení přepravy
-- TODO upravit "IDENTITY" u historie - nefunguje při operacích s více řádky => dát trigger INSTEAD OF??


--
ALTER TRIGGER [PrepravaOnInsert_Zakaznik]
   ON  [Preprava]
   AFTER INSERT
   NOT FOR REPLICATION
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
	SET NOCOUNT ON;

  IF UPDATE(Zakaznik)
  begin
    UPDATE f SET f.KategorieCRM=3
    FROM
    Firma f JOIN
    inserted AS i
    ON f.ID=i.Zakaznik
    WHERE f.KategorieCRM<>4 OR f.KategorieCRM IS NULL
  end
END
GO

ALTER TRIGGER [PrepravaSilOnInsert_Zakaznik]
   ON  [PrepravaSil]
   AFTER INSERT
   NOT FOR REPLICATION
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
	SET NOCOUNT ON;

  IF UPDATE(Zakaznik)
  begin
    UPDATE f SET f.KategorieCRM=3
    FROM
    Firma f JOIN
    inserted AS i
    ON f.ID=i.Zakaznik
    WHERE f.KategorieCRM<>4 OR f.KategorieCRM IS NULL
  end
END
GO

ALTER TRIGGER [PrepravaATOnInsert_Zakaznik]
   ON  [PrepravaAT]
   AFTER INSERT
   NOT FOR REPLICATION
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
	SET NOCOUNT ON;

  IF UPDATE(Zakaznik)
  begin
    UPDATE f SET f.KategorieCRM=3
    FROM
    Firma f JOIN
    inserted AS i
    ON f.ID=i.Zakaznik
    WHERE f.KategorieCRM<>4 OR f.KategorieCRM IS NULL
  end
END
GO