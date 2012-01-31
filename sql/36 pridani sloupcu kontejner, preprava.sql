ALTER TABLE Kontejner ADD Plomba nvarchar(255);
ALTER TABLE KontejnerSil ADD Plomba nvarchar(255);
GO

BEGIN TRAN
ALTER TABLE Preprava ADD Lod nvarchar(127);
ALTER TABLE Preprava ADD ReleaseRef nvarchar(127);
ALTER TABLE Preprava ADD PopisZbozi nvarchar(255);
ALTER TABLE Preprava ADD CelniOdbaveni int;
ALTER TABLE Preprava ADD CelniOdbaveniKontakt int;
ALTER TABLE Preprava ADD CelniOdbaveniPoznamka nvarchar(255);
ALTER TABLE Preprava ADD CelniUrad smallint;
ALTER TABLE Preprava ADD DropOff int;
ALTER TABLE Preprava ADD Stock nvarchar(127);
ALTER TABLE Preprava ADD POLTerminal smallint;
ALTER TABLE Preprava ADD PODTerminal smallint;
ALTER TABLE Preprava ADD ClosingTimeDatum datetime;
ALTER TABLE Preprava ADD ClosingTimeCas nvarchar(127);
ALTER TABLE Preprava ADD ReleaseTimeDatum datetime;
ALTER TABLE Preprava ADD ReleaseTimeCas nvarchar(127);
ALTER TABLE Preprava ADD HScode varchar(255);

-- GO

-- Klice
ALTER TABLE Preprava WITH CHECK ADD CONSTRAINT FK_Preprava_CelniOdbaveni
    FOREIGN KEY ( CelniOdbaveni ) REFERENCES Firma ( ID );
ALTER TABLE Preprava WITH CHECK ADD CONSTRAINT FK_Preprava_CelniOdbaveniKontakt
    FOREIGN KEY ( CelniOdbaveniKontakt ) REFERENCES Kontakt ( ID );
ALTER TABLE Preprava WITH CHECK ADD CONSTRAINT FK_Preprava_CelniUrad
    FOREIGN KEY ( CelniUrad ) REFERENCES CelniUrad ( ID );
ALTER TABLE Preprava WITH CHECK ADD CONSTRAINT FK_Preprava_DropOff
    FOREIGN KEY ( DropOff ) REFERENCES Misto ( ID );
ALTER TABLE Preprava WITH CHECK ADD CONSTRAINT FK_Preprava_POLTerminal
    FOREIGN KEY ( POLTerminal ) REFERENCES Terminal ( ID );
ALTER TABLE Preprava WITH CHECK ADD CONSTRAINT FK_Preprava_PODTerminal
    FOREIGN KEY ( PODTerminal ) REFERENCES Terminal ( ID );
COMMIT
-- ROLLBACK
-- GO

-- dtto Silnicni
BEGIN TRAN
ALTER TABLE PrepravaSil ADD Lod nvarchar(127);
ALTER TABLE PrepravaSil ADD ReleaseRef nvarchar(127);
ALTER TABLE PrepravaSil ADD PopisZbozi nvarchar(255);
ALTER TABLE PrepravaSil ADD CelniOdbaveni int;
ALTER TABLE PrepravaSil ADD CelniOdbaveniKontakt int;
ALTER TABLE PrepravaSil ADD CelniOdbaveniPoznamka nvarchar(255);
ALTER TABLE PrepravaSil ADD CelniUrad smallint;
ALTER TABLE PrepravaSil ADD DropOff int;
ALTER TABLE PrepravaSil ADD Stock nvarchar(127);
ALTER TABLE PrepravaSil ADD POLTerminal smallint;
ALTER TABLE PrepravaSil ADD PODTerminal smallint;
ALTER TABLE PrepravaSil ADD ClosingTimeDatum datetime;
ALTER TABLE PrepravaSil ADD ClosingTimeCas nvarchar(127);
ALTER TABLE PrepravaSil ADD ReleaseTimeDatum datetime;
ALTER TABLE PrepravaSil ADD ReleaseTimeCas nvarchar(127);
ALTER TABLE PrepravaSil ADD HScode varchar(255);

-- GO

-- Klice
ALTER TABLE PrepravaSil WITH CHECK ADD CONSTRAINT FK_PrepravaSil_CelniOdbaveni
    FOREIGN KEY ( CelniOdbaveni ) REFERENCES Firma ( ID );
ALTER TABLE PrepravaSil WITH CHECK ADD CONSTRAINT FK_PrepravaSil_CelniOdbaveniKontakt
    FOREIGN KEY ( CelniOdbaveniKontakt ) REFERENCES Kontakt ( ID );
ALTER TABLE PrepravaSil WITH CHECK ADD CONSTRAINT FK_PrepravaSil_CelniUrad
    FOREIGN KEY ( CelniUrad ) REFERENCES CelniUrad ( ID );
ALTER TABLE PrepravaSil WITH CHECK ADD CONSTRAINT FK_PrepravaSil_DropOff
    FOREIGN KEY ( DropOff ) REFERENCES Misto ( ID );
ALTER TABLE PrepravaSil WITH CHECK ADD CONSTRAINT FK_PrepravaSil_POLTerminal
    FOREIGN KEY ( POLTerminal ) REFERENCES Terminal ( ID );
ALTER TABLE PrepravaSil WITH CHECK ADD CONSTRAINT FK_PrepravaSil_PODTerminal
    FOREIGN KEY ( PODTerminal ) REFERENCES Terminal ( ID );
COMMIT
-- ROLLBACK
-- GO

-- indexy asi nebudou potreba ...  