-- u pøepravy zmìnit na NOT NULL
-- Rok (výchozí je rok), Mesic(výchozí je mìsíc), Tyden,  Zákazník, Obchodnik, StavPrepravy (vychozi 1), Odesilatel, Prijemce, Smer, DruhPrepravy

-- indexy s GUID dropnout rucne pac se mozna budou lisit

ALTER TABLE Preprava ALTER COLUMN Rok int NOT NULL
GO

ALTER TABLE Preprava ALTER COLUMN Mesic int NOT NULL
GO

ALTER TABLE Preprava ALTER COLUMN Tyden smallint NOT NULL
GO

ALTER TABLE Preprava ALTER COLUMN Smer nvarchar(10) NOT NULL
GO

/****** Object:  Index [FirmaPreprava]    Script Date: 11/03/2011 14:05:52 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Preprava]') AND name = N'FirmaPreprava')
DROP INDEX [FirmaPreprava] ON [Preprava] WITH ( ONLINE = OFF )
GO
ALTER TABLE Preprava ALTER COLUMN Zakaznik int NOT NULL -- nejde (index FirmaPreprava)
GO
/****** Object:  Index [FirmaPreprava]    Script Date: 11/03/2011 14:05:52 ******/
CREATE NONCLUSTERED INDEX [FirmaPreprava] ON [Preprava] 
(
	[Zakaznik] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

/****** Object:  Index [ObchodnikID]    Script Date: 11/03/2011 14:06:10 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Preprava]') AND name = N'ObchodnikID')
DROP INDEX [ObchodnikID] ON [Preprava] WITH ( ONLINE = OFF )
GO
ALTER TABLE Preprava ALTER COLUMN Obchodnik int NOT NULL -- nejde ({A7CC9E1F-271D-4D45-A83D-4057139405E5}, ObchodnikID)
GO
/****** Object:  Index [ObchodnikID]    Script Date: 11/03/2011 14:06:10 ******/
CREATE NONCLUSTERED INDEX [ObchodnikID] ON [Preprava] 
(
	[Obchodnik] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

/****** Object:  Index [StavPrepravyID]    Script Date: 11/03/2011 14:06:26 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Preprava]') AND name = N'StavPrepravyID')
DROP INDEX [StavPrepravyID] ON [Preprava] WITH ( ONLINE = OFF )
GO
ALTER TABLE Preprava ALTER COLUMN StavPrepravy int NOT NULL -- nejde ({90860C54-1DC5-4A6D-8162-F5221A0AC1B4}, StavPrepravyID)
GO
/****** Object:  Index [StavPrepravyID]    Script Date: 11/03/2011 14:06:27 ******/
CREATE NONCLUSTERED INDEX [StavPrepravyID] ON [Preprava] 
(
	[StavPrepravy] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

/****** Object:  Index [OdesilatelID]    Script Date: 11/03/2011 14:06:53 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Preprava]') AND name = N'OdesilatelID')
DROP INDEX [OdesilatelID] ON [Preprava] WITH ( ONLINE = OFF )
GO
ALTER TABLE Preprava ALTER COLUMN Odesilatel int NOT NULL -- nejde ({28AD5B94-4A1E-45A3-B43E-08D6CF059953}, OdesilatelID)
GO
/****** Object:  Index [OdesilatelID]    Script Date: 11/03/2011 14:06:53 ******/
CREATE NONCLUSTERED INDEX [OdesilatelID] ON [Preprava] 
(
	[Odesilatel] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

/****** Object:  Index [PrijemceID]    Script Date: 11/03/2011 14:07:03 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Preprava]') AND name = N'PrijemceID')
DROP INDEX [PrijemceID] ON [Preprava] WITH ( ONLINE = OFF )
GO
ALTER TABLE Preprava ALTER COLUMN Prijemce int NOT NULL -- nejde ({8BD991AC-FEA9-4FCC-8027-D037F56E135D}, PrijemceID)
GO
/****** Object:  Index [PrijemceID]    Script Date: 11/03/2011 14:07:03 ******/
CREATE NONCLUSTERED INDEX [PrijemceID] ON [Preprava] 
(
	[Prijemce] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO

/****** Object:  Index [DruhPrepravyID]    Script Date: 11/03/2011 14:07:14 ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Preprava]') AND name = N'DruhPrepravyID')
DROP INDEX [DruhPrepravyID] ON [Preprava] WITH ( ONLINE = OFF )
GO
ALTER TABLE Preprava ALTER COLUMN DruhPrepravy int NOT NULL -- nejde ({D8FDF3CC-40DA-405E-A397-746E4DADFF8E}, DruhPrepravyID)
GO
/****** Object:  Index [DruhPrepravyID]    Script Date: 11/03/2011 14:07:15 ******/
CREATE NONCLUSTERED INDEX [DruhPrepravyID] ON [Preprava] 
(
	[DruhPrepravy] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO




/*
ALTER TABLE Preprava ALTER COLUMN Rok int NOT NULL
GO

ALTER TABLE Preprava ALTER COLUMN Mesic int NOT NULL
GO

ALTER TABLE Preprava ALTER COLUMN Tyden smallint NOT NULL
GO

ALTER TABLE Preprava ALTER COLUMN Smer nvarchar(10) NOT NULL
GO

ALTER TABLE Preprava DROP CONSTRAINT Preprava_FK05
GO
ALTER TABLE Preprava ALTER COLUMN Zakaznik int NOT NULL -- nejde (FK05)
GO
ALTER TABLE Preprava ADD CONSTRAINT Preprava_FK05 FOREIGN KEY (Zakaznik) 
    REFERENCES Firma (ID)
GO

ALTER TABLE Preprava DROP CONSTRAINT Preprava_FK03
GO
ALTER TABLE Preprava ALTER COLUMN Obchodnik int NOT NULL -- nejde (FK03)
GO
ALTER TABLE Preprava ADD CONSTRAINT Preprava_FK03 FOREIGN KEY (Obchodnik) 
    REFERENCES Obchodnik (ID)
GO

ALTER TABLE Preprava DROP CONSTRAINT Preprava_FK02
GO
ALTER TABLE Preprava ALTER COLUMN StavPrepravy int NOT NULL -- nejde (FK02)
GO
ALTER TABLE Preprava ADD CONSTRAINT Preprava_FK02 FOREIGN KEY (StavPrepravy) 
    REFERENCES StavPrepravy (ID)
GO

ALTER TABLE Preprava DROP CONSTRAINT Preprava_FK00
GO
ALTER TABLE Preprava ALTER COLUMN Odesilatel int NOT NULL -- nejde (FK00)
GO
ALTER TABLE Preprava ADD CONSTRAINT Preprava_FK00 FOREIGN KEY (Odesilatel) 
    REFERENCES Firma (ID)
GO

ALTER TABLE Preprava DROP CONSTRAINT Preprava_FK01
GO
ALTER TABLE Preprava ALTER COLUMN Prijemce int NOT NULL -- nejde (FK01)
GO
ALTER TABLE Preprava ADD CONSTRAINT Preprava_FK01 FOREIGN KEY (Prijemce) 
    REFERENCES Firma (ID)
GO

ALTER TABLE Preprava DROP CONSTRAINT Preprava_FK04
GO
ALTER TABLE Preprava ALTER COLUMN DruhPrepravy int NOT NULL -- nejde (FK04)
GO
ALTER TABLE Preprava ADD CONSTRAINT Preprava_FK04 FOREIGN KEY (DruhPrepravy) 
    REFERENCES DruhPrepravy(ID)
GO

*/