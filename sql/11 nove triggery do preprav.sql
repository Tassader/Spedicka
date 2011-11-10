-- uprava triggeru k prepravam aby se nacetly kurzy
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[PrepravaNastaveniCisla]'))
DROP TRIGGER [PrepravaNastaveniCisla]
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[PrepravaOnInsert]'))
DROP TRIGGER [PrepravaOnInsert]
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER PrepravaOnInsert 
   ON  Preprava 
   --INSTEAD OF INSERT
   FOR INSERT
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here

	-- BEGIN TRAN
	-- INSERT INTO Preprava WITH (updlock) SELECT * FROM inserted
	-- COMMIT
	UPDATE Preprava SET 
        Cislo=CAST(Preprava.Rok AS VARCHAR) + '-' + Right('000' + CAST(Preprava.ID AS VARCHAR),3) 
   		,KurzEUR = ISNULL(EUR, 25)
		,KurzUSD = ISNULL(USD, 20)
    FROM inserted
        LEFT JOIN Kurzy ON Kurzy.Rok = inserted.Rok AND Kurzy.Tyden = inserted.Tyden
    WHERE Preprava.ID=inserted.ID;


END
GO







IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[PrepravaSilNastaveniCisla]'))
DROP TRIGGER [PrepravaSilNastaveniCisla]
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[PrepravaSilOnInsert]'))
DROP TRIGGER [PrepravaSilOnInsert]
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER PrepravaSilOnInsert 
   ON  PrepravaSil
   --INSTEAD OF INSERT
   FOR INSERT
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here

	-- BEGIN TRAN
	-- INSERT INTO Preprava WITH (updlock) SELECT * FROM inserted
	-- COMMIT
	UPDATE PrepravaSil SET 
        Cislo=CAST(PrepravaSil.Rok AS VARCHAR) + '-HK' + Right('000' + CAST(PrepravaSil.ID AS VARCHAR),3) 
   		,KurzEUR = ISNULL(EUR, 25)
		,KurzUSD = ISNULL(USD, 20)
    FROM inserted
        LEFT JOIN Kurzy ON Kurzy.Rok = inserted.Rok AND Kurzy.Tyden = inserted.Tyden
    WHERE PrepravaSil.ID=inserted.ID;
END
GO

