begin tran
/* constraint: [NakladySil].[NakladySil_FK00] */
-- select p.* from [NakladySil] as p where not exists ( select 1 from [Firma] as r where ( p.[Dodavatel] is null or p.[Dodavatel]=r.[ID] ));
-- alter table [NakladySil] with check check constraint [NakladySil_FK00];
alter table [NakladySil] drop constraint [NakladySil_FK00];
alter table [NakladySil] add  constraint [FK_NakladySil_Dodatavel] foreign key ( [Dodavatel] ) references [Firma] ( [ID] ) on DELETE NO ACTION on UPDATE NO ACTION;

/* constraint: [NakladySil].[NakladySil_FK01] */
-- select p.* from [NakladySil] as p where not exists ( select 1 from [Sluzba] as r where ( p.[Sluzba] is null or p.[Sluzba]=r.[ID] ));
-- alter table [NakladySil] with check check constraint [NakladySil_FK01];
alter table [NakladySil] drop constraint [NakladySil_FK01];
alter table [NakladySil] with check add constraint [FK_NakladySil_Sluzba] foreign key ( [Sluzba] ) references [Sluzba] ( [ID] ) on DELETE NO ACTION on UPDATE NO ACTION;

/* constraint: [NakladySil].[NakladySil_FK02] */
-- select p.* from [NakladySil] as p where not exists ( select 1 from [PrepravaSil] as r where ( p.[Preprava] is null or p.[Preprava]=r.[ID] ));
-- alter table [NakladySil] with check check constraint [NakladySil_FK02];
alter table [NakladySil] drop constraint [NakladySil_FK02];
alter table [NakladySil] with check add constraint [FK_NakladySil_Preprava] foreign key ( [Preprava] ) references [PrepravaSil] ( [ID] ) on DELETE NO ACTION on UPDATE NO ACTION;

/* constraint: [Kontejner].[Kontejner_FK03] */
-- select p.* from [Kontejner] as p where not exists ( select 1 from [Kontakt] as r where ( p.[KontaktVykl] is null or p.[KontaktVykl]=r.[ID] ));
-- alter table [Kontejner] with check check constraint [Kontejner_FK03];
alter table [Kontejner] drop constraint [Kontejner_FK03];
alter table [Kontejner] with check add constraint [FK_Kontejner_KontaktVykl] foreign key ( [KontaktVykl] ) references [Kontakt] ( [ID] ) on DELETE NO ACTION on UPDATE NO ACTION;

/* constraint: [Kontejner].[Kontejner_FK04] */
-- select p.* from [Kontejner] as p where not exists ( select 1 from [Kontakt] as r where ( p.[KontaktNakl] is null or p.[KontaktNakl]=r.[ID] ));
-- alter table [Kontejner] with check check constraint [Kontejner_FK04];
alter table [Kontejner] drop constraint [Kontejner_FK04];
alter table [Kontejner] with check add constraint [FK_Kontejner_KontaktNakl] foreign key ( [KontaktNakl] ) references [Kontakt] ( [ID] ) on DELETE NO ACTION on UPDATE NO ACTION;

/* constraint: [KontejnerSil].[KontejnerSil_FK03] */
-- select p.* from [KontejnerSil] as p where not exists ( select 1 from [Kontakt] as r where ( p.[KontaktVykl] is null or p.[KontaktVykl]=r.[ID] ));
-- alter table [KontejnerSil] with check check constraint [KontejnerSil_FK03];
alter table [KontejnerSil] drop constraint [KontejnerSil_FK03];
alter table [KontejnerSil] with check add constraint [FK_KontejnerSil_KontaktVykl] foreign key ( [KontaktVykl] ) references [Kontakt] ( [ID] ) on DELETE NO ACTION on UPDATE NO ACTION;

/* constraint: [KontejnerSil].[KontejnerSil_FK04] */
-- select p.* from [KontejnerSil] as p where not exists ( select 1 from [Kontakt] as r where ( p.[KontaktNakl] is null or p.[KontaktNakl]=r.[ID] ));
-- alter table [KontejnerSil] with check check constraint [KontejnerSil_FK04];
alter table [KontejnerSil] drop constraint [KontejnerSil_FK04];
alter table [KontejnerSil] with check add constraint [FK_KontejnerSil_KontaktNakl] foreign key ( [KontaktNakl] ) references [Kontakt] ( [ID] ) on DELETE NO ACTION on UPDATE NO ACTION;

/* constraint: [Kontakt].[Kontakt_FK00] */
-- select p.* from [Kontakt] as p where not exists ( select 1 from [Firma] as r where ( p.[Firma] is null or p.[Firma]=r.[ID] ));
-- alter table [Kontakt] with check check constraint [Kontakt_FK00];
alter table [Kontakt] drop constraint [Kontakt_FK00];
alter table [Kontakt] with check add constraint [FK_Kontakt_Firma] foreign key ( [Firma] ) references [Firma] ( [ID] ) on DELETE NO ACTION on UPDATE NO ACTION;

/* constraint: [Naklady].[Naklady_FK00] */
-- select p.* from [Naklady] as p where not exists ( select 1 from [Firma] as r where ( p.[Dodavatel] is null or p.[Dodavatel]=r.[ID] ));
-- alter table [Naklady] with check check constraint [Naklady_FK00];
alter table [Naklady] drop constraint [Naklady_FK00];
alter table [Naklady] with check add constraint [FK_Naklady_Dodavatel] foreign key ( [Dodavatel] ) references [Firma] ( [ID] ) on DELETE NO ACTION on UPDATE NO ACTION;

/* constraint: [Naklady].[Naklady_FK01] */
-- select p.* from [Naklady] as p where not exists ( select 1 from [Sluzba] as r where ( p.[Sluzba] is null or p.[Sluzba]=r.[ID] ));
-- alter table [Naklady] with check check constraint [Naklady_FK01];
alter table [Naklady] drop constraint [Naklady_FK01];
alter table [Naklady] with check add constraint [FK_Naklady_Sluzba] foreign key ( [Sluzba] ) references [Sluzba] ( [ID] ) on DELETE NO ACTION on UPDATE NO ACTION;

/* constraint: [Naklady].[Naklady_FK02] */
-- select p.* from [Naklady] as p where not exists ( select 1 from [Preprava] as r where ( p.[Preprava] is null or p.[Preprava]=r.[ID] ));
-- alter table [Naklady] with check check constraint [Naklady_FK02];
alter table [Naklady] drop constraint [Naklady_FK02];
alter table [Naklady] with check add constraint [FK_Naklady_Preprava] foreign key ( [Preprava] ) references [Preprava] ( [ID] ) on DELETE NO ACTION on UPDATE NO ACTION;

commit