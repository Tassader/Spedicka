-- pridani sloupcu do kontejneru (kvuli silnicni, ale dam do obou at maji stejnou strukturu)

ALTER TABLE KontejnerSil ADD NakladkaPoznamka nvarchar(150) NULL;
ALTER TABLE KontejnerSil ADD VykladkaPoznamka nvarchar(150) NULL;
ALTER TABLE Kontejner ADD NakladkaPoznamka nvarchar(150) NULL;
ALTER TABLE Kontejner ADD VykladkaPoznamka nvarchar(150) NULL;


GO

-- pridani sloupcu do prepravy (kvuli silnicni, ale dam do obou at maji stejnou strukturu)
ALTER TABLE Preprava ADD Dopravce int;
ALTER TABLE PrepravaSil ADD Dopravce int;
GO
ALTER TABLE [PrepravaSil]  WITH CHECK ADD  CONSTRAINT [PrepravaSil_FK_Dopravce] FOREIGN KEY([Dopravce])
REFERENCES [Firma] ([ID])
GO
ALTER TABLE [Preprava]  WITH CHECK ADD  CONSTRAINT [Preprava_FK_Dopravce] FOREIGN KEY([Dopravce])
REFERENCES [Firma] ([ID])
GO

