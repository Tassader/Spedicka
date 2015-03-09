IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'WHUpominkyOdeslane') AND type in (N'U'))
    DROP TABLE WHUpominkyOdeslane;
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'WHUpominkyChyby') AND type in (N'U'))
    DROP TABLE WHUpominkyChyby;
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'WHUpominkyZpracovaneSoubory') AND type in (N'U'))
    DROP TABLE WHUpominkyZpracovaneSoubory;
GO


CREATE TABLE WHUpominkyOdeslane(
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[faktura] [varchar](50) NOT NULL,
	[datum] [datetime] NOT NULL,
	[upominka] [int] NOT NULL,
	[email] [varchar](255) NOT NULL,

    CONSTRAINT [WHUpominkyOdeslane_PK] PRIMARY KEY NONCLUSTERED ([ID] ASC)
) ON [PRIMARY]
GO

CREATE TABLE WHUpominkyChyby(
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[faktura] [varchar](50) NOT NULL,
	[datum] [datetime] NOT NULL,
--	[upominka] [int] NOT NULL,
	[popis] [varchar](255) NOT NULL,

    CONSTRAINT [WHUpominkyChyby_PK] PRIMARY KEY NONCLUSTERED ([ID] ASC)
) ON [PRIMARY]

CREATE TABLE WHUpominkyZpracovaneSoubory(
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[soubor] [varchar](150) NOT NULL,
	[datum] [datetime] NOT NULL,

    CONSTRAINT [WHUpominkyZpracovaneSoubory_PK] PRIMARY KEY NONCLUSTERED ([ID] ASC)
) ON [PRIMARY]

/*
-- test data
INSERT INTO UpominkyZpracovaneSoubory (soubor, datum) VALUES('xxx.xls', GETDATE());

*/