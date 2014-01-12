IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[PrepravaFull_D]'))
    DROP TRIGGER [PrepravaFull_D];
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[PrepravaFullSil_D]'))
    DROP TRIGGER [PrepravaFullSil_D];
IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[PrepravaFullAT_D]'))
    DROP TRIGGER [PrepravaFullAT_D];
GO

CREATE TRIGGER PrepravaFull_D ON PrepravaFull
INSTEAD OF DELETE
AS
set nocount on
    DELETE FROM Preprava WHERE ID IN (SELECT ID FROM DELETED);
GO

CREATE TRIGGER PrepravaSil_D ON PrepravaFullSil
INSTEAD OF DELETE
AS
set nocount on
    DELETE FROM PrepravaFullSil WHERE ID IN (SELECT ID FROM DELETED);
GO

CREATE TRIGGER PrepravaFullAT_D ON PrepravaFullAT
INSTEAD OF DELETE
AS
set nocount on
    DELETE FROM PrepravaAT WHERE ID IN (SELECT ID FROM DELETED);
GO
