BEGIN TRANSACTION
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'Terminal') AND type in (N'U'))
    DROP TABLE Terminal;
GO
CREATE TABLE Terminal (
    ID smallint IDENTITY(1,1) NOT NULL,
    Misto int NOT NULL,
    NazevTerminalu nvarchar(127) NOT NULL
)
GO

ALTER TABLE Terminal ADD CONSTRAINT PK_Terminal 
    PRIMARY KEY CLUSTERED ( ID ) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY];

ALTER TABLE Terminal WITH CHECK ADD CONSTRAINT FK_Terminal_Misto
    FOREIGN KEY ( Misto ) REFERENCES Misto ( ID );
GO

COMMIT
