ALTER TABLE Preprava ALTER COLUMN Mesic int NULL -- bylo NOT NULL
GO
ALTER TABLE Preprava DROP CONSTRAINT DF__Preprava__Mesic__108B795B -- to cislo je nahodne takze v jine kopii db muze byt jine :-/
GO
-- ALTER TABLE [Preprava] ADD  CONSTRAINT [DF__Preprava__Mesic] DEFAULT (datepart(month,CONVERT([datetime],CONVERT([varchar],getdate(),(1)),(1)))) FOR [Mesic]
