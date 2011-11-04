BEGIN TRAN
DECLARE @oldID int = 156;
DECLARE @newID int = 160;
SET IDENTITY_INSERT [Preprava] ON;

INSERT [Preprava]
           ([ID]
           ,[Cislo]
           ,[Rok]
           ,[Mesic]
           ,[Tyden]
           ,[Zakaznik]
           ,[ZakaznickaRef]
           ,[Obchodnik]
           ,[Disponent]
           ,[StavPrepravy]
           ,[Fakturovano]
           ,[Poznamka]
           ,[Odesilatel]
           ,[Prijemce]
           ,[Smer]
           ,[Incoterms]
           ,[IncotermsMisto]
           ,[DruhPrepravy]
           ,[Zasilka]
           ,[POL]
           ,[ETS]
           ,[POD]
           ,[ETA]
           ,[MBLt]
           ,[MAWB]
           ,[Kontakt]
           ,[KontaktMail]
           ,[ObchodniFaktury]
           ,[MBL]
           ,[HBL]
           ,[CelniDokumenty]
           ,[NakladoveFaktury]
           ,[VynosoveFaktury])
SELECT
            @newID
           ,CAST([Rok] AS VARCHAR) + '-' + Right('000' + CAST(@newID AS VARCHAR),3)
           ,[Rok]
           ,[Mesic]
           ,[Tyden]
           ,[Zakaznik]
           ,[ZakaznickaRef]
           ,[Obchodnik]
           ,[Disponent]
           ,[StavPrepravy]
           ,[Fakturovano]
           ,[Poznamka]
           ,[Odesilatel]
           ,[Prijemce]
           ,[Smer]
           ,[Incoterms]
           ,[IncotermsMisto]
           ,[DruhPrepravy]
           ,[Zasilka]
           ,[POL]
           ,[ETS]
           ,[POD]
           ,[ETA]
           ,[MBLt]
           ,[MAWB]
           ,[Kontakt]
           ,[KontaktMail]
           ,[ObchodniFaktury]
           ,[MBL]
           ,[HBL]
           ,[CelniDokumenty]
           ,[NakladoveFaktury]
           ,[VynosoveFaktury]
FROM [Preprava] WHERE [ID]=@OldID;
SET IDENTITY_INSERT [Preprava] OFF;






UPDATE Naklady SET Preprava=@newID WHERE Preprava=@oldID;
UPDATE Vynosy SET Preprava=@newID WHERE Preprava=@oldID;
UPDATE Kontejner SET Preprava=@newID WHERE Preprava=@oldID;
DELETE [Preprava] WHERE [ID]=@OldID;

DBCC CHECKIDENT ('Preprava');
COMMIT TRAN;

IF @@TRANCOUNT > 0 
   ROLLBACK TRAN --RollBack in case of Error 
