BEGIN TRANSACTION
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'Stat') AND type in (N'U'))
    DROP TABLE Stat;
GO
CREATE TABLE Stat (
[N3] smallint NOT NULL,
[A2] char(2) NOT NULL,
[A3] char(3) NOT NULL,
[PlnyNazevC] nvarchar(255) NOT NULL,
[ZkracenyNazevC] nvarchar(255) NOT NULL,
[PlnyNazevA] nvarchar(255) NOT NULL,
[ZkracenyNazevA] nvarchar(255) NOT NULL
)
GO

ALTER TABLE Stat ADD CONSTRAINT
	PK_Stat PRIMARY KEY CLUSTERED 
	(
	N3
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
COMMIT
