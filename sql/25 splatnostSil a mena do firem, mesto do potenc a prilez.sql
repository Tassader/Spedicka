ALTER TABLE Firma ADD SplatnostFakturSil smallint;
ALTER TABLE Firma ADD Mena nvarchar(10);
ALTER TABLE Firma ADD MenaSil nvarchar(10);
GO
ALTER TABLE Potencial ADD NakladkaMesto nvarchar(150);
ALTER TABLE Potencial ADD DestinaceMesto nvarchar(150);

ALTER TABLE Prilezitosti ADD NakladkaMesto nvarchar(150);
ALTER TABLE Prilezitosti ADD DestinaceMesto nvarchar(150);
GO

/*
-- Prava
use [PrimaSpedicka]
GO

DENY UPDATE ON [Firma] ([SplatnostFaktur]) TO [SERVER\Hradec]
DENY UPDATE ON [Firma] ([SplatnostFakturSil]) TO [SERVER\Hradec]
DENY UPDATE ON [Firma] ([Mena]) TO [SERVER\Hradec]
DENY UPDATE ON [Firma] ([MenaSil]) TO [SERVER\Hradec]

DENY UPDATE ON [Firma] ([SplatnostFaktur]) TO [SERVER\Praha]
DENY UPDATE ON [Firma] ([SplatnostFakturSil]) TO [SERVER\Praha]
DENY UPDATE ON [Firma] ([Mena]) TO [SERVER\Praha]
DENY UPDATE ON [Firma] ([MenaSil]) TO [SERVER\Praha]
GO

*/