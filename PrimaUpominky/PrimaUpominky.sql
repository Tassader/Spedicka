IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'UpominkyOdeslane') AND type in (N'U'))
    DROP TABLE UpominkyOdeslane;
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'UpominkyChyby') AND type in (N'U'))
    DROP TABLE UpominkyChyby;
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'UpominkyZpracovaneSoubory') AND type in (N'U'))
    DROP TABLE UpominkyZpracovaneSoubory;
GO


CREATE TABLE UpominkyOdeslane(
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[faktura] [varchar](50) NOT NULL,
	[datum] [datetime] NOT NULL,
	[upominka] [int] NOT NULL,
	[email] [varchar](50) NOT NULL,

    CONSTRAINT [UpominkyOdeslane_PK] PRIMARY KEY NONCLUSTERED ([ID] ASC)
) ON [PRIMARY]
GO

CREATE TABLE UpominkyChyby(
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[faktura] [varchar](50) NOT NULL,
	[datum] [datetime] NOT NULL,
--	[upominka] [int] NOT NULL,
	[popis] [varchar](255) NOT NULL,

    CONSTRAINT [UpominkyChyby_PK] PRIMARY KEY NONCLUSTERED ([ID] ASC)
) ON [PRIMARY]

CREATE TABLE UpominkyZpracovaneSoubory(
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[soubor] [varchar](150) NOT NULL,
	[datum] [datetime] NOT NULL,

    CONSTRAINT [UpominkyZpracovaneSoubory_PK] PRIMARY KEY NONCLUSTERED ([ID] ASC)
) ON [PRIMARY]

/*
-- test data
INSERT INTO UpominkyZpracovaneSoubory (soubor, datum) VALUES('xxx.xls', GETDATE());

*/