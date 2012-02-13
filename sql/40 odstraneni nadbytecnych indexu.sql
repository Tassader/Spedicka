-- ALTER DATABASE PrimaSpedicka SET SINGLE_USER WITH ROLLBACK AFTER 30 SECONDS;

DROP INDEX 
 [ObchodnikFirma] ON Firma,
 [ZIP/Postal Code] ON Firma,
 [TypKontejneruKontejner] ON Kontejner,
 [DruhPrepravyID] ON Preprava,
 [IncotermsPreprava] ON Preprava, -- mozna nechat?
 [ObchodnikID] ON Preprava, -- mozna nechat?
 [ObchodnikPreprava] ON Preprava, -- mozna nechat?
 [StavPrepravyID] ON Preprava;
GO
-- /*
-- prejmenovani
-- **********************************************************************
-- Index {24A5FD13-6285-40AA-BB76-41AC41E8643C} on table Naklady
-- **********************************************************************
DROP INDEX [{24A5FD13-6285-40AA-BB76-41AC41E8643C}] ON Naklady;
CREATE INDEX [IX_Naklady_Dodavatel] ON [Naklady] ( [Dodavatel] ASC ) 
GO

-- **********************************************************************
-- Index {9969B7C0-B7D4-49A0-BD1E-D6BF631F5151} on table Naklady
-- **********************************************************************
DROP INDEX [{9969B7C0-B7D4-49A0-BD1E-D6BF631F5151}] ON Naklady;
CREATE INDEX [IX_Naklady_Sluzba] ON [Naklady] ( [Sluzba] ASC ) 
GO

-- **********************************************************************
-- Index {EDB83551-8756-463A-B5B4-761FA6E74129} on table Naklady
-- **********************************************************************
DROP INDEX [{EDB83551-8756-463A-B5B4-761FA6E74129}] ON Naklady;
CREATE INDEX [IX_Naklady_Preprava] ON [Naklady] ( [Preprava] ASC ) 
GO

-- **********************************************************************
-- Index {F6DC2E4D-C258-4582-A7E4-9CE4FF962174} on table Vynosy
-- **********************************************************************
DROP INDEX [{F6DC2E4D-C258-4582-A7E4-9CE4FF962174}] ON Vynosy;
CREATE INDEX [IX_Vynosy_Preprava] ON [Vynosy] ( [Preprava] ASC ) 
GO
-- */

-- ALTER DATABASE PrimaSpedicka SET MULTI_USER;
