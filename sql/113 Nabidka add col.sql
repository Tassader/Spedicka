ALTER TABLE Nabidka ADD FCL1 nvarchar(50) SPARSE NULL;
ALTER TABLE Nabidka ADD FCL2 nvarchar(50) SPARSE NULL;
ALTER TABLE Nabidka ADD FCL3 nvarchar(50) SPARSE NULL;
ALTER TABLE Nabidka ADD FCL4 nvarchar(50) SPARSE NULL;
ALTER TABLE Nabidka ADD Agent1 nvarchar(50) SPARSE NULL;
ALTER TABLE Nabidka ADD Zasilka nvarchar(50) SPARSE NULL;
GO

CREATE TABLE [TypKontejneruNabidky](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[Typ] [nvarchar](255) NOT NULL,
 CONSTRAINT [TypKontejneruNabidky_PK] PRIMARY KEY NONCLUSTERED ([ID] ASC)
)
GO

INSERT INTO TypKontejneruNabidky (/*ID, */Typ) VALUES ('20''DC<14t');
INSERT INTO TypKontejneruNabidky (/*ID, */Typ) VALUES ('20''DC<25t');
INSERT INTO TypKontejneruNabidky (/*ID, */Typ) VALUES ('40''DC<27t');
INSERT INTO TypKontejneruNabidky (/*ID, */Typ) VALUES ('40''HC<27t');
