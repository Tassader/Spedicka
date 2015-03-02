-- NabidkaLCL
CREATE TABLE NabidkaAgent (
    ID int IDENTITY(1,1) NOT NULL, -- NOT FOR REPLICATION
    Nabidka int NOT NULL, 
    Text1 nvarchar(255) NULL,
    Cena decimal(9,3) NULL,
    Mena nvarchar(10) NOT NULL,
    Jednotka nvarchar(255) NULL,
    Poznamka nvarchar(255) NULL,
)
GO

ALTER TABLE NabidkaAgent ADD CONSTRAINT PK_NabidkaAgent
    PRIMARY KEY CLUSTERED ( ID ) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY];

ALTER TABLE NabidkaAgent WITH CHECK ADD CONSTRAINT FK_NabidkaAgent_Nabidka
    FOREIGN KEY ( Nabidka ) REFERENCES Nabidka ( ID ) ON DELETE CASCADE;

GO
