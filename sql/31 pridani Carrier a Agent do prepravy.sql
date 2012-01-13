-- pridani sloupcu do prepravy (kvuli silnicni, ale dam do obou at maji stejnou strukturu)
ALTER TABLE Preprava ADD Carrier int;
ALTER TABLE Preprava ADD Agent int;
ALTER TABLE PrepravaSil ADD Carrier int;
ALTER TABLE PrepravaSil ADD Agent int;
GO

ALTER TABLE [Preprava]  WITH CHECK ADD CONSTRAINT [FK_Preprava_Carrier] FOREIGN KEY([Carrier])
REFERENCES [Firma] ([ID])
GO
ALTER TABLE [Preprava]  WITH CHECK ADD CONSTRAINT [FK_Preprava_Dopravce] FOREIGN KEY([Agent])
REFERENCES [Firma] ([ID])
GO
ALTER TABLE [PrepravaSil]  WITH CHECK ADD CONSTRAINT [FK_PrepravaSil_Carrier] FOREIGN KEY([Carrier])
REFERENCES [Firma] ([ID])
GO
ALTER TABLE [PrepravaSil]  WITH CHECK ADD CONSTRAINT [FK_PrepravaSil_Dopravce] FOREIGN KEY([Agent])
REFERENCES [Firma] ([ID])
GO

--UPDATE Preprava SET Carrier=Dopravce WHERE Dopravce <> 336;
