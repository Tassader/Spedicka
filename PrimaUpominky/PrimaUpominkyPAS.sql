IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'PASUpominkyOdeslane') AND type in (N'U'))
    DROP TABLE PASUpominkyOdeslane;
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'PASUpominkyChyby') AND type in (N'U'))
    DROP TABLE PASUpominkyChyby;
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'PASUpominkyZpracovaneSoubory') AND type in (N'U'))
    DROP TABLE PASUpominkyZpracovaneSoubory;
GO


CREATE TABLE PASUpominkyOdeslane(
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[faktura] [varchar](50) NOT NULL,
	[datum] [datetime] NOT NULL,
	[upominka] [int] NOT NULL,
	[email] [varchar](255) NOT NULL,

    CONSTRAINT [PASUpominkyOdeslane_PK] PRIMARY KEY NONCLUSTERED ([ID] ASC)
) ON [PRIMARY]
GO

CREATE TABLE PASUpominkyChyby(
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[faktura] [varchar](50) NOT NULL,
	[datum] [datetime] NOT NULL,
--	[upominka] [int] NOT NULL,
	[popis] [varchar](255) NOT NULL,

    CONSTRAINT [PASUpominkyChyby_PK] PRIMARY KEY NONCLUSTERED ([ID] ASC)
) ON [PRIMARY]

CREATE TABLE PASUpominkyZpracovaneSoubory(
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[soubor] [varchar](150) NOT NULL,
	[datum] [datetime] NOT NULL,

    CONSTRAINT [PASUpominkyZpracovaneSoubory_PK] PRIMARY KEY NONCLUSTERED ([ID] ASC)
) ON [PRIMARY]

/*
-- test data
INSERT INTO UpominkyZpracovaneSoubory (soubor, datum) VALUES('xxx.xls', GETDATE());


+ prava !!
*/