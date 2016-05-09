ALTER TABLE Firma ADD DisponentSil int NULL;
GO
ALTER TABLE Firma  WITH CHECK ADD  CONSTRAINT FK_Firma_DisponentSil FOREIGN KEY(DisponentSil)
REFERENCES Obchodnik (ID)

ALTER TABLE Firma ADD ProdejceSil int NULL;
GO
ALTER TABLE Firma  WITH CHECK ADD  CONSTRAINT FK_Firma_ProdejceSil FOREIGN KEY(ProdejceSil)
REFERENCES Obchodnik (ID)

GO
UPDATE Firma set DisponentSil=Disponent;
UPDATE Firma set ProdejceSil=Prodejce;
--
UPDATE Firma SET Prodejce = NULL WHERE Prodejce IN (5,6,7,8,13,16,31,35,36,38,39) AND Prodejce = ProdejceSil;
UPDATE Firma SET Disponent = NULL WHERE Disponent IN (5,6,7,8,13,16,31,35,36,38,39) AND Disponent = DisponentSil;

UPDATE Firma SET ProdejceSil = NULL WHERE ProdejceSil IN (1,2,3,4,9,10,12,17,18,20,24,25,26,27,28,30,33,34,37) AND Prodejce = ProdejceSil;
UPDATE Firma SET DisponentSil = NULL WHERE DisponentSil IN (1,2,3,4,9,10,12,17,18,20,24,25,26,27,28,30,33,34,37) AND Disponent = DisponentSil;