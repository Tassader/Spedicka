IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'OdvetviFirem') AND type in (N'U'))
    DROP TABLE OdvetviFirem;

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'SpecializaceFirem') AND type in (N'U'))
    DROP TABLE SpecializaceFirem;
    
-- create table OdvetviFirem
CREATE TABLE OdvetviFirem (
    ID smallint IDENTITY (1,1) NOT NULL,
    Odvetvi nvarchar(255) NOT NULL,

    CONSTRAINT PK_OdvetviFirem PRIMARY KEY CLUSTERED ( ID ) ON [PRIMARY]
)
GO

SET IDENTITY_INSERT OdvetviFirem ON;
-- INSERT INTO OdvetviFirem(ID, Odvetvi) VALUES (1,'Sport');
SET IDENTITY_INSERT OdvetviFirem OFF;


-- create table SpecializaceFirem
CREATE TABLE SpecializaceFirem (
    ID smallint IDENTITY (1,1) NOT NULL,
    Odvetvi smallint NOT NULL,
    Specializace nvarchar(255) NOT NULL,

    CONSTRAINT PK_SpecializaceFirem PRIMARY KEY CLUSTERED ( ID ) ON [PRIMARY]
)
GO

ALTER TABLE SpecializaceFirem  WITH CHECK ADD CONSTRAINT [FK_Odvetvi] FOREIGN KEY([Odvetvi])
    REFERENCES [OdvetviFirem] ([ID]);


SET IDENTITY_INSERT SpecializaceFirem ON;
-- INSERT INTO SpecializaceFirem(ID, Odvetvi, Specializace) VALUES (1,1,'Outdoor');
SET IDENTITY_INSERT SpecializaceFirem OFF;



-- alter table Firma


ALTER TABLE Firma ADD Odvetvi smallint;  --WITH ROLLBACK AFTER 20;
ALTER TABLE Firma  WITH CHECK ADD CONSTRAINT [FK_Firma_Odvetvi] FOREIGN KEY([Odvetvi])
    REFERENCES [OdvetviFirem] ([ID]);

ALTER TABLE Firma ADD Specializace smallint;  --WITH ROLLBACK AFTER 20;
ALTER TABLE Firma  WITH CHECK ADD CONSTRAINT [FK_Firma_Specializace] FOREIGN KEY([Specializace])
    REFERENCES [SpecializaceFirem] ([ID]);

ALTER TABLE Firma ADD Znacka nvarchar(255);  --WITH ROLLBACK AFTER 20;


-- + prava

GRANT                                     UPDATE ON Firma (Odvetvi,Specializace,Znacka) TO prima_spolecne;

GRANT SELECT, REFERENCES, DELETE, INSERT         ON OdvetviFirem TO prima_spolecne; -- ciselnik => nedovolit menit obyc uzivatelum
GRANT SELECT, REFERENCES, DELETE, INSERT         ON SpecializaceFirem TO prima_spolecne; -- ciselnik => nedovolit menit obyc uzivatelum

/*
GRANT UPDATE ON OdvetviFirem TO prima_ucto;
GRANT UPDATE ON SpecializaceFirem TO prima_ucto;
*/