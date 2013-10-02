CREATE TRIGGER [PrepravaOnInsert_Zakaznik]
   ON  [Preprava]
   AFTER INSERT
   NOT FOR REPLICATION
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
	SET NOCOUNT ON;

  IF UPDATE(Zakaznik)
  begin
    UPDATE f SET f.Kategorie='Nový zákazník'
    FROM
    Firma f JOIN
    inserted AS i
    ON f.ID=i.Zakaznik
    WHERE f.Kategorie<>'Zákazník' OR f.Kategorie IS NULL
  end
END
GO

CREATE TRIGGER [PrepravaSilOnInsert_Zakaznik]
   ON  [PrepravaSil]
   AFTER INSERT
   NOT FOR REPLICATION
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
	SET NOCOUNT ON;

  IF UPDATE(Zakaznik)
  begin
    UPDATE f SET f.Kategorie='Nový zákazník'
    FROM
    Firma f JOIN
    inserted AS i
    ON f.ID=i.Zakaznik
    WHERE f.Kategorie<>'Zákazník' OR f.Kategorie IS NULL
  end
END
GO

CREATE TRIGGER [PrepravaATOnInsert_Zakaznik]
   ON  [PrepravaAT]
   AFTER INSERT
   NOT FOR REPLICATION
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
	SET NOCOUNT ON;

  IF UPDATE(Zakaznik)
  begin
    UPDATE f SET f.Kategorie='Nový zákazník'
    FROM
    Firma f JOIN
    inserted AS i
    ON f.ID=i.Zakaznik
    WHERE f.Kategorie<>'Zákazník' OR f.Kategorie IS NULL
  end
END
GO