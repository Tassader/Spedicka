IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'TypMnozstvi') AND type in (N'U'))
    DROP TABLE TypMnozstvi;

BEGIN TRANSACTION
GO
/* Ciselnik Pravidelnost sluzby*/
CREATE TABLE TypMnozstvi
    (
    ID smallint NOT NULL IDENTITY (1, 1),
    TypMnozstvi nvarchar(50) NOT NULL
    )  ON [PRIMARY]
GO
ALTER TABLE TypMnozstvi ADD CONSTRAINT
    PK_TypMnozstvi PRIMARY KEY CLUSTERED
    (
    ID
    ) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
COMMIT

/* tutok naplnit nejakymi daty asi */
INSERT INTO TypMnozstvi (/*ID, */TypMnozstvi) VALUES ('Návìs 13,6');
INSERT INTO TypMnozstvi (/*ID, */TypMnozstvi) VALUES ('Souprava 120 cbm');
INSERT INTO TypMnozstvi (/*ID, */TypMnozstvi) VALUES ('Souprava 100 cbm');
INSERT INTO TypMnozstvi (/*ID, */TypMnozstvi) VALUES ('Solo 8t');
INSERT INTO TypMnozstvi (/*ID, */TypMnozstvi) VALUES ('Solo 6t');
INSERT INTO TypMnozstvi (/*ID, */TypMnozstvi) VALUES ('Iveco 3,5t');
INSERT INTO TypMnozstvi (/*ID, */TypMnozstvi) VALUES ('Iveco 3,5t + vlek');
INSERT INTO TypMnozstvi (/*ID, */TypMnozstvi) VALUES ('Transit 1,5t');
INSERT INTO TypMnozstvi (/*ID, */TypMnozstvi) VALUES ('Dokládka');
INSERT INTO TypMnozstvi (/*ID, */TypMnozstvi) VALUES ('cbm');
INSERT INTO TypMnozstvi (/*ID, */TypMnozstvi) VALUES ('kg');
INSERT INTO TypMnozstvi (/*ID, */TypMnozstvi) VALUES ('TEU');

BEGIN TRAN

ALTER TABLE Potencial ADD Nakladka int

ALTER TABLE Potencial ADD TypMnozstvi smallint

ALTER TABLE Potencial ADD CONSTRAINT FK_Potencial_TypMnozstvi
    FOREIGN KEY ( TypMnozstvi ) REFERENCES TypMnozstvi ( ID )
    ON DELETE  SET NULL;
GO
COMMIT

BEGIN TRAN

ALTER TABLE Prilezitosti ADD Nakladka int

ALTER TABLE Prilezitosti ADD TypMnozstvi smallint

ALTER TABLE Prilezitosti ADD CONSTRAINT FK_Prilezitosti_TypMnozstvi
    FOREIGN KEY ( TypMnozstvi ) REFERENCES TypMnozstvi ( ID )
    ON DELETE  SET NULL;
GO
COMMIT
-- ROLLBACK