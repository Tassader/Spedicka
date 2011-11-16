-- text je defaultne jako pointer do LOB, varchar (do 8000znaku ) je primo v tabulce;  
ALTER TABLE Firma ALTER COLUMN Ulice [nvarchar](255); -- From ntext
ALTER TABLE Firma ALTER COLUMN Web [nvarchar](255); -- From ntext
ALTER TABLE Firma ALTER COLUMN Poznamky [nvarchar](4000); -- From ntext
GO