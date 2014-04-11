-- IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'PojisteniOnInsert') AND type in (N'TR'))
--    DROP TRIGGER PojisteniOnInsert;
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'Skody') AND type in (N'U'))
    DROP TABLE Skody;
GO

CREATE TABLE Skody(
    ID int IDENTITY(1,1) NOT NULL CONSTRAINT PK_Skody PRIMARY KEY CLUSTERED, 
    -- NOT FOR REPLICATION, -- kvuli moznosti dvou SQL serveru budu nastavovat IDENTITY increment na 2 (seed se snadno zmeni, increment moc ne) -- ??
    Preprava int NOT NULL CONSTRAINT FK_Skody_Preprava REFERENCES Preprava (ID),
    Cislo char(10),
    DatumSkody date,
    Pojisteno bit,
    Resitel int,
    VycislenaSkoda nvarchar (255),
    VyplacenaSkoda decimal(9,2),
    Dodavatel int CONSTRAINT FK_Skody_Dodavatel REFERENCES Firma (ID),
    DatumUkonceni date,
    DatumVyplaceni date,
    Poznamka nvarchar(255)
)    
GO

CREATE TRIGGER SkodyOnInsert 
   ON  Skody
   FOR INSERT
   NOT FOR REPLICATION
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE Skody SET 
        Cislo='SK'+CAST(YEAR(GETDATE()) AS VARCHAR) + '-' + 
            Right('00' + 
                CAST((SELECT ISNULL(MAX(CAST(RIGHT(P.Cislo, LEN(P.Cislo)-7)AS smallint)),0)+1 FROM Skody P WHERE RIGHT(LEFT(P.Cislo, 6),4) like YEAR(GETDATE())) AS VARCHAR),3)
    FROM inserted
    WHERE Skody.ID=inserted.ID;
END
GO