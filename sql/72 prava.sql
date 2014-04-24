-- dropovani roli fakt neni jednoduche :-/

-- DECLARE @RoleName sysname
-- set @RoleName = N'prima_overseas'
IF OBJECT_ID('tempdb..#droprole') IS NOT NULL
	DROP proc #droprole
GO
CREATE PROC #droprole
    @RoleName sysname
AS
begin
  IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = @RoleName AND type = 'R')
  Begin
  	DECLARE @RoleMemberName sysname
  	DECLARE Member_Cursor CURSOR FOR
  	select [name]
  	from sys.database_principals 
  	where principal_id in ( 
  		select member_principal_id 
  		from sys.database_role_members 
  		where role_principal_id in (
  			select principal_id
  			FROM sys.database_principals where [name] = @RoleName  AND type = 'R' ))
  
  	OPEN Member_Cursor;
  
  	FETCH NEXT FROM Member_Cursor
  	into @RoleMemberName
  
  	WHILE @@FETCH_STATUS = 0
  	BEGIN
  
  		exec sp_droprolemember @rolename=@RoleName, @membername= @RoleMemberName
  
  		FETCH NEXT FROM Member_Cursor
  		into @RoleMemberName
  	END;
  
  	CLOSE Member_Cursor;
  	DEALLOCATE Member_Cursor;
    exec sp_droprole @RoleName;
  End
End
GO

exec #droprole prima_spolecne;
exec #droprole prima_overseas;
exec #droprole prima_road;
exec #droprole prima_AT;
GO
CREATE ROLE prima_spolecne;
CREATE ROLE prima_overseas;
CREATE ROLE prima_road;
CREATE ROLE prima_AT;
-- ucto a man budou asi zatim i nadale mit datareader+datawriter :)
-- CREATE ROLE prima_ucto;
GO
-- ALTER ROLE prima_spolecne ADD MEMBER SERVER\Praha;
exec sp_addrolemember 'prima_spolecne', 'SERVER\Praha';
exec sp_addrolemember 'prima_spolecne', 'SERVER\Hradec';
exec sp_addrolemember 'prima_spolecne', 'SERVER\AMTrucking';

exec sp_addrolemember 'prima_overseas', 'SERVER\Praha';

exec sp_addrolemember 'prima_road', 'SERVER\Hradec';

exec sp_addrolemember 'prima_AT', 'SERVER\AMTrucking';

--
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON Aktivity TO prima_spolecne;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON CelniUrad TO prima_spolecne;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON DruhKusu TO prima_spolecne;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON DruhPrepravy TO prima_spolecne;
GRANT SELECT, REFERENCES, DELETE, INSERT         ON Firma TO prima_spolecne; -- pak nejde dát revoke na sloupec
GRANT                                     UPDATE ON Firma (ID,Firma,ICO,Priorita,Prodejce,Kategorie,KategorieCRM,Ulice,Mesto,PSC,Stat,Web,Poznamky,upsize_ts,TextNaObjednavku,DorucovaciAdresa,Zalozil,ZalozilCas,Disponent) TO prima_spolecne;
-- GRANT SELECT, REFERENCES, DELETE, INSERT         ON Firma (SplatnostFaktur,SplatnostFakturSil,Mena,MenaSil,SplatnostClo) TO prima_spolecne;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON FirmaSOP TO prima_spolecne;
GRANT SELECT, REFERENCES                         ON Historie TO prima_spolecne;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON Incoterms TO prima_spolecne;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON Kontakt TO prima_spolecne;
GRANT SELECT, REFERENCES                         ON Kurzy TO prima_spolecne;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON Misto TO prima_spolecne;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON Nabidka TO prima_spolecne;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON NabidkaAIR TO prima_spolecne;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON NabidkaAIR2 TO prima_spolecne;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON NabidkaAIR2Specifikace TO prima_spolecne;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON NabidkaKontejnery TO prima_spolecne;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON NabidkaLCL TO prima_spolecne;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON Nastaveni TO prima_spolecne;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON Obchodnik TO prima_spolecne;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON Potencial TO prima_spolecne;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON PravidelnostPotencialu TO prima_spolecne;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON Prilezitosti TO prima_spolecne;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON RatingPrilezitosti TO prima_spolecne;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON Sluzba TO prima_spolecne;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON Stat TO prima_spolecne;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON StavPrepravy TO prima_spolecne;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON StavPrilezitosti TO prima_spolecne;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON Terminal TO prima_spolecne;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON TypAktivity TO prima_spolecne;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON TypKontejneru TO prima_spolecne;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON TypMnozstvi TO prima_spolecne;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON UpominkyChyby TO prima_spolecne;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON UpominkyOdeslane TO prima_spolecne;
-- views:
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON ZiskPreprava TO prima_spolecne;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON AgregovanyZiskPreprava TO prima_spolecne;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON ZiskPrepravaRozdily TO prima_spolecne;
-- toto pouze ucto a mozna MAN
/*
REVOKE UPDATE ON [Firma] ([SplatnostFaktur]) TO prima_spolecne;
REVOKE UPDATE ON [Firma] ([SplatnostFakturSil]) TO prima_spolecne;
REVOKE UPDATE ON [Firma] ([SplatnostClo]) TO prima_spolecne;
REVOKE UPDATE ON [Firma] ([Mena]) TO prima_spolecne;
REVOKE UPDATE ON [Firma] ([MenaSil]) TO prima_spolecne;

REVOKE DELETE, INSERT, UPDATE ON Kurzy TO prima_spolecne;
*/
GO

-- Overseas
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON Kontejner TO prima_overseas;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON Naklady TO prima_overseas;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON Preprava TO prima_overseas;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON Vynosy TO prima_overseas;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON Pojisteni TO prima_overseas;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON Skody TO prima_overseas;
-- views:
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON AgregovaneKontejnery TO prima_overseas;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON AgregovaneNaklady TO prima_overseas;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON AgregovaneVynosy TO prima_overseas;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON BL TO prima_overseas;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON BLKontejner TO prima_overseas;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON NakladyKC TO prima_overseas;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON PrepravaFull TO prima_overseas;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON VynosyKC TO prima_overseas;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON ZiskPreprava_Overseas TO prima_overseas;

-- Road
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON KontejnerSil TO prima_road;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON NakladySil TO prima_road;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON PrepravaSil TO prima_road;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON VynosySil TO prima_road;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON PojisteniSil TO prima_road;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON SkodySil TO prima_road;
-- views:
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON AgregovaneKontejnerySil TO prima_road;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON AgregovaneNakladySil TO prima_road;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON AgregovaneVynosySil TO prima_road;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON NakladyKCSil TO prima_road;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON PrepravaFullSil TO prima_road;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON StatistikaSmeru TO prima_road;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON VynosyKCSil TO prima_road;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON ZiskPreprava_Road TO prima_road;

-- AT
-- agregovanekontejneryat jsem asi nedelal
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON KontejnerAT TO prima_AT;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON NakladyAT TO prima_AT;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON PrepravaAT TO prima_AT;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON VynosyAT TO prima_AT;
-- views:
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON AgregovaneNakladyAT TO prima_AT;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON AgregovaneVynosyAT TO prima_AT;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON NakladyKCAT TO prima_AT;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON PrepravaFullAT TO prima_AT;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON VynosyKCAT TO prima_AT;
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON ZiskPreprava_AT TO prima_AT;


/*
-- ucto:
GRANT UPDATE ON [Firma] ([SplatnostFaktur]) TO prima_ucto
GRANT UPDATE ON [Firma] ([SplatnostFakturSil]) TO prima_ucto
GRANT UPDATE ON [Firma] ([SplatnostClo]) TO prima_ucto
GRANT UPDATE ON [Firma] ([Mena]) TO prima_ucto
GRANT UPDATE ON [Firma] ([MenaSil]) TO prima_ucto
GRANT UPDATE ON [Firma] ([SplatnostFaktur]) TO prima_ucto
GRANT UPDATE ON [Firma] ([SplatnostFakturSil]) TO prima_ucto
GRANT UPDATE ON [Firma] ([Mena]) TO prima_ucto
GRANT UPDATE ON [Firma] ([MenaSil]) TO prima_ucto
GRANT UPDATE ON [Firma] ([SplatnostClo]) TO prima_ucto
GRANT DELETE, INSERT, UPDATE ON Kurzy TO prima_ucto;
-- asi nepotrebne
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON Svatky TO spolecne; -- nepotrebne
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE ON UpominkyZpracovaneSoubory TO spolecne;
*/


--------------------------------

