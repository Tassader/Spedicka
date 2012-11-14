-- je pouzite pro dohledavani duplicit ... pouzije se POUZE index takze nizka selektivita snad nevadi
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Preprava]') AND name = N'IX_Preprava_ZakaznickaRef')
    DROP INDEX [IX_Preprava_ZakaznickaRef] ON [Preprava]
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[PrepravaSil]') AND name = N'IX_PrepravaSil_ZakaznickaRef')
    DROP INDEX [IX_PrepravaSil_ZakaznickaRef] ON [PrepravaSil]

-- selektivita 15% (9.10.2012) (bez NULL je to 68%)
CREATE NONCLUSTERED INDEX [IX_Preprava_ZakaznickaRef] ON [Preprava] 
([ZakaznickaRef] ASC )
-- WHERE ZakaznickaRef IS NOT NULL

-- selektivita 89% (9.10.2012) (bez NULL je to 90%)
CREATE NONCLUSTERED INDEX [IX_PrepravaSil_ZakaznickaRef] ON [PrepravaSil] 
([ZakaznickaRef] ASC )
-- WHERE ZakaznickaRef IS NOT NULL
