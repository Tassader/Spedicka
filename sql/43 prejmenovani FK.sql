/* constraint: [Kontejner].[Kontejner_FK03] */
alter table [Kontejner] drop constraint [Kontejner_FK03];
alter table [Kontejner] WITH CHECK add  constraint [FK_Kontejner_KontaktVykl] foreign key ( [KontaktVykl] ) references [Kontakt] ( [ID] ) on DELETE NO ACTION on UPDATE NO ACTION;

/* constraint: [Kontejner].[Kontejner_FK04] */
alter table [Kontejner] drop constraint [Kontejner_FK04];
alter table [Kontejner] WITH CHECK add  constraint [FK_Kontejner_KontaktNakl] foreign key ( [KontaktNakl] ) references [Kontakt] ( [ID] ) on DELETE NO ACTION on UPDATE NO ACTION;

/* constraint: [KontejnerSil].[KontejnerSil_FK03] */
alter table [KontejnerSil] drop constraint [KontejnerSil_FK03];
alter table [KontejnerSil] WITH CHECK add  constraint [FK_KontejnerSil_KontaktVykl] foreign key ( [KontaktVykl] ) references [Kontakt] ( [ID] ) on DELETE NO ACTION on UPDATE NO ACTION;

/* constraint: [KontejnerSil].[KontejnerSil_FK04] */
alter table [KontejnerSil] drop constraint [KontejnerSil_FK04];
alter table [KontejnerSil] WITH CHECK add  constraint [FK_KontejnerSil_KontaktNakl] foreign key ( [KontaktNakl] ) references [Kontakt] ( [ID] ) on DELETE NO ACTION on UPDATE NO ACTION;

/* constraint: [Kontakt].[Kontakt_FK00] */
alter table [Kontakt] drop constraint [Kontakt_FK00];
alter table [Kontakt] WITH CHECK add  constraint [KF_Kontakt_Firma] foreign key ( [Firma] ) references [Firma] ( [ID] ) on DELETE NO ACTION on UPDATE NO ACTION;

/* constraint: [Naklady].[Naklady_FK00] */
alter table [Naklady] drop constraint [Naklady_FK00];
alter table [Naklady] WITH CHECK add  constraint [FK_Naklady_Dodavatel] foreign key ( [Dodavatel] ) references [Firma] ( [ID] ) on DELETE NO ACTION on UPDATE NO ACTION;

/* constraint: [Naklady].[Naklady_FK01] */
alter table [Naklady] drop constraint [Naklady_FK01];
alter table [Naklady] WITH CHECK add  constraint [FK_Naklady_Sluzba] foreign key ( [Sluzba] ) references [Sluzba] ( [ID] ) on DELETE NO ACTION on UPDATE NO ACTION;

/* constraint: [Naklady].[Naklady_FK02] */
alter table [Naklady] drop constraint [Naklady_FK02];
alter table [Naklady] WITH CHECK add  constraint [FK_Naklady_Preprava] foreign key ( [Preprava] ) references [Preprava] ( [ID] ) on DELETE NO ACTION on UPDATE NO ACTION;

/* constraint: [NakladySil].[NakladySil_FK00] */
alter table [NakladySil] drop constraint [NakladySil_FK00];
alter table [NakladySil] WITH CHECK add  constraint [FK_NakladySil_Dodavatel] foreign key ( [Dodavatel] ) references [Firma] ( [ID] ) on DELETE NO ACTION on UPDATE NO ACTION;

/* constraint: [NakladySil].[NakladySil_FK01] */
alter table [NakladySil] drop constraint [NakladySil_FK01];
alter table [NakladySil] WITH CHECK add  constraint [FK_NakladySil_Sluzba] foreign key ( [Sluzba] ) references [Sluzba] ( [ID] ) on DELETE NO ACTION on UPDATE NO ACTION;

/* constraint: [NakladySil].[NakladySil_FK02] */
alter table [NakladySil] drop constraint [NakladySil_FK02];
alter table [NakladySil] WITH CHECK add  constraint [FK_NakladySil_Preprava] foreign key ( [Preprava] ) references [PrepravaSil] ( [ID] ) on DELETE NO ACTION on UPDATE NO ACTION;

