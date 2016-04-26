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
