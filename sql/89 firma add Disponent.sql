ALTER TABLE Firma ADD Disponent int NULL;
GO
ALTER TABLE Firma  WITH CHECK ADD  CONSTRAINT FK_Firma_Disponent FOREIGN KEY(Disponent)
REFERENCES Obchodnik (ID)