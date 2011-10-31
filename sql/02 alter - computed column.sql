ALTER TABLE [Kontakt] DROP COLUMN Jmeno
GO
ALTER TABLE [Kontakt] ADD Jmeno AS Krestni + ' ' + Prijmeni
GO


ALTER TABLE [Naklady] DROP COLUMN Castka
GO
ALTER TABLE [Naklady] ADD Castka AS NakladyJednotka*Mnozstvi
GO


ALTER TABLE [Obchodnik] DROP COLUMN Jmeno
GO
ALTER TABLE [Obchodnik] ADD Jmeno AS Krestni + ' ' + Prijmeni
GO


ALTER TABLE [Vynosy] DROP COLUMN Castka
GO
ALTER TABLE [Vynosy] ADD Castka AS VynosyJednotka*Mnozstvi
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER PrepravaNastaveniCisla 
   ON  Preprava 
   --INSTEAD OF INSERT
   FOR INSERT
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here

	-- UPDATE inserted SET Cislo=[Rok] + '-' + Right('000' + [ID],3);

	-- BEGIN TRAN
	-- INSERT INTO Preprava WITH (updlock) SELECT * FROM inserted
	-- COMMIT
	UPDATE Preprava SET Cislo=[Rok] + '-' + Right('000' + [ID],3) WHERE ID =(SELECT ID FROM inserted);

END
GO
