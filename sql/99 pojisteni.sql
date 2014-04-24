-- IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'PojisteniOnInsert') AND type in (N'TR'))
--    DROP TRIGGER PojisteniOnInsert;
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'Pojisteni') AND type in (N'U'))
    DROP TABLE Pojisteni;
GO

CREATE TABLE Pojisteni(
    ID int IDENTITY(1,1) NOT NULL CONSTRAINT PK_Pojisteni PRIMARY KEY CLUSTERED, 
    -- NOT FOR REPLICATION, -- kvuli moznosti dvou SQL serveru budu nastavovat IDENTITY increment na 2 (seed se snadno zmeni, increment moc ne) -- ??
    Preprava int NOT NULL CONSTRAINT FK_Pojisteni_Preprava REFERENCES Preprava (ID),
    Cislo char(11),
    Pojisteny int NOT NULL CONSTRAINT FK_Pojisteni_Pojisteny REFERENCES Firma (ID),
    Nakladka int CONSTRAINT FK_Pojisteni_Nakladka REFERENCES Misto (ID),
    Via int CONSTRAINT FK_Pojisteni_Via REFERENCES Misto (ID),
    Vykladka int CONSTRAINT FK_Pojisteni_Vykladka REFERENCES Misto (ID),
    DatumNakladky date NOT NULL,
    Castka decimal(9,2) NOT NULL,
    Castka110 decimal(9,2),
    Dopravne decimal(9,2),
    Mena nchar(3),
    Kurz decimal(9,3) NOT NULL,
    Sazba decimal(9,4) NOT NULL,
    Poznamka nvarchar(255)    
)    
GO

CREATE TRIGGER PojisteniOnInsert 
   ON  Pojisteni
   FOR INSERT
   NOT FOR REPLICATION
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE Pojisteni SET 
        Cislo='POJ'+CAST(YEAR(GETDATE()) AS VARCHAR) + '-' + 
            RIGHT('00' +
                CAST((SELECT ISNULL(MAX(CAST(RIGHT(P.Cislo, 3)AS smallint)),0)+1 FROM Pojisteni P WHERE RIGHT(LEFT(P.Cislo, 7),4) like YEAR(GETDATE())) AS VARCHAR),3)
    FROM inserted
    WHERE Pojisteni.ID=inserted.ID;
END
GO
-------------------
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'PojisteniSil') AND type in (N'U'))
    DROP TABLE PojisteniSil;
GO

CREATE TABLE PojisteniSil(
    ID int IDENTITY(1,1) NOT NULL CONSTRAINT PK_PojisteniSil PRIMARY KEY CLUSTERED,
    -- NOT FOR REPLICATION, -- kvuli moznosti dvou SQL serveru budu nastavovat IDENTITY increment na 2 (seed se snadno zmeni, increment moc ne) -- ??
    Preprava int NOT NULL CONSTRAINT FK_PojisteniSil_PrepravaSil REFERENCES PrepravaSil (ID),
    Cislo char(13),
    Pojisteny int NOT NULL CONSTRAINT FK_PojisteniSil_Pojisteny REFERENCES Firma (ID),
    Nakladka int CONSTRAINT FK_PojisteniSil_Nakladka REFERENCES Misto (ID),
    Via int CONSTRAINT FK_PojisteniSil_Via REFERENCES Misto (ID),
    Vykladka int CONSTRAINT FK_PojisteniSil_Vykladka REFERENCES Misto (ID),
    DatumNakladky date NOT NULL,
    Castka decimal(9,2) NOT NULL,
    Castka110 decimal(9,2),
    Dopravne decimal(9,2),
    Mena nchar(3),
    Kurz decimal(9,3) NOT NULL,
    Sazba decimal(9,4) NOT NULL,
    Poznamka nvarchar(255)
)
GO

CREATE TRIGGER PojisteniSilOnInsert
   ON  PojisteniSil
   FOR INSERT
   NOT FOR REPLICATION
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE PojisteniSil SET
        Cislo='POJ'+CAST(YEAR(GETDATE()) AS VARCHAR) + '-HK' +
            RIGHT('00' +
                CAST((SELECT ISNULL(MAX(CAST(RIGHT(P.Cislo, 3)AS smallint)),0)+1 FROM PojisteniSil P WHERE RIGHT(LEFT(P.Cislo, 7),4) like YEAR(GETDATE())) AS VARCHAR),3)
    FROM inserted
    WHERE PojisteniSil.ID=inserted.ID;
END
GO