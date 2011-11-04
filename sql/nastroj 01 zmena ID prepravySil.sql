BEGIN TRAN
DECLARE @oldID int = 156;
DECLARE @newID int = 160;
SET IDENTITY_INSERT [PrepravaSil] ON;

INSERT [PrepravaSil]
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
           ,CAST([Rok] AS VARCHAR) + '-HK' + Right('000' + CAST(@newID AS VARCHAR),3)
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
FROM [PrepravaSil] WHERE [ID]=@OldID;
SET IDENTITY_INSERT [PrepravaSil] OFF;






UPDATE NakladySil SET Preprava=@newID WHERE Preprava=@oldID;
UPDATE VynosySil SET Preprava=@newID WHERE Preprava=@oldID;
UPDATE KontejnerSil SET Preprava=@newID WHERE Preprava=@oldID;
DELETE [PrepravaSil] WHERE [ID]=@OldID;

DBCC CHECKIDENT ('PrepravaSil');
COMMIT TRAN;

IF @@TRANCOUNT > 0 
   ROLLBACK TRAN --RollBack in case of Error 
