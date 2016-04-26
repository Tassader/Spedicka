
----

ALTER TABLE Preprava DROP CONSTRAINT FK_Preprava_Dopravce
GO
ALTER TABLE Preprava DROP CONSTRAINT Preprava_FK_Dopravce
GO
ALTER TABLE PrepravaSil DROP CONSTRAINT FK_PrepravaSil_Dopravce
GO
ALTER TABLE PrepravaSil DROP CONSTRAINT PrepravaSil_FK_Dopravce
GO
ALTER TABLE Kontakt DROP CONSTRAINT FK_Kontakt_Firma
GO
-- ALTER TABLE Vozidlo DROP CONSTRAINT FK_Vozidlo_Dopravce
GO
-- ALTER TABLE Preprava DROP CONSTRAINT FK_Preprava_Agent
GO
-- ALTER TABLE PrepravaSil DROP CONSTRAINT FK_PrepravaSil_Agent
GO

ALTER TABLE [Preprava] WITH CHECK ADD CONSTRAINT [FK_Preprava_Agent] 
	FOREIGN KEY([Agent]) REFERENCES [Firma] ([ID])
ALTER TABLE [Preprava] WITH CHECK ADD CONSTRAINT [FK_Preprava_Dopravce]
	FOREIGN KEY([Dopravce]) REFERENCES [Firma] ([ID])

ALTER TABLE [PrepravaSil] WITH CHECK ADD CONSTRAINT [FK_PrepravaSil_Agent] 
	FOREIGN KEY([Agent]) REFERENCES [Firma] ([ID])
ALTER TABLE [PrepravaSil] WITH CHECK ADD CONSTRAINT [FK_PrepravaSil_Dopravce]
	FOREIGN KEY([Dopravce]) REFERENCES [Firma] ([ID])

ALTER TABLE Kontakt ADD CONSTRAINT FK_Kontakt_Firma 
	FOREIGN KEY ( Firma ) REFERENCES Firma ( ID ) ON DELETE CASCADE

-- tento FK zcela chybel
ALTER TABLE Vozidlo WITH CHECK ADD CONSTRAINT FK_Vozidlo_Dopravce 
	FOREIGN KEY ( Dopravce ) REFERENCES Firma (	ID ) 
	
GO
