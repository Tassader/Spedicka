-- NabidkaLCL
CREATE TABLE Odvetvi (
    ID int IDENTITY(1,1) NOT NULL, -- NOT FOR REPLICATION
    Firma int NOT NULL, 
    Odvetvi smallint,
    Specializace smallint,
    Znacka nvarchar(255),

    CONSTRAINT PK_Odvetvi PRIMARY KEY CLUSTERED ( ID ) ON [PRIMARY]
)

ALTER TABLE Odvetvi  WITH CHECK ADD CONSTRAINT [FK_Odvetvi_Firma] FOREIGN KEY([Firma])
    REFERENCES [Firma] ([ID]);

ALTER TABLE Odvetvi  WITH CHECK ADD CONSTRAINT [FK_Odvetvi_Odvetvi] FOREIGN KEY([Odvetvi])
    REFERENCES [OdvetviFirem] ([ID]);

ALTER TABLE Odvetvi  WITH CHECK ADD CONSTRAINT [FK_Odvetvi_Specializace] FOREIGN KEY([Specializace])
    REFERENCES [SpecializaceFirem] ([ID]);

GO
GRANT SELECT, REFERENCES, DELETE, INSERT, UPDATE         ON Odvetvi TO prima_spolecne;

------------
/*
ALTER TABLE Firma DROP CONSTRAINT FK_Firma_Odvetvi;
ALTER TABLE Firma DROP CONSTRAINT FK_Firma_Specializace;

ALTER TABLE Firma DROP COLUMN Odvetvi;
ALTER TABLE Firma DROP COLUMN Specializace;
ALTER TABLE Firma DROP COLUMN Znacka;
*/