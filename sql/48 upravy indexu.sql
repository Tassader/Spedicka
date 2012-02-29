CREATE NONCLUSTERED INDEX [IX_Firma_Firma] ON [Firma] ( [Firma] ASC ) INCLUDE (Mesto) 

CREATE CLUSTERED INDEX [IX_Kontejner_Preprava] ON [Kontejner] ( [Preprava] ASC ) 
CREATE CLUSTERED INDEX [IX_KontejnerSil_Preprava] ON [KontejnerSil] ( [Preprava] ASC ) 

DROP INDEX [KontaktKontejner1] ON [Kontejner]
DROP INDEX [KontaktKontejner] ON [Kontejner]

GO