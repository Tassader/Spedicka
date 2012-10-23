-- indexy byly jen u naklady a vynosy
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Naklady]') AND name = N'IX_Naklady_Preprava')
    DROP INDEX [IX_Naklady_Preprava] ON [Naklady] WITH ( ONLINE = OFF )
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[Vynosy]') AND name = N'IX_Vynosy_Preprava')
    DROP INDEX [IX_Vynosy_Preprava] ON [Vynosy] WITH ( ONLINE = OFF )
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[NakladySil]') AND name = N'IX_NakladySil_Preprava')
    DROP INDEX [IX_NakladySil_Preprava] ON [NakladySil] WITH ( ONLINE = OFF )
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[VynosySil]') AND name = N'IX_VynosySil_Preprava')
    DROP INDEX [IX_VynosySil_Preprava] ON [VynosySil] WITH ( ONLINE = OFF )
GO


CREATE CLUSTERED INDEX [IX_Naklady_Preprava] ON [Naklady] 
( [Preprava] ASC )WITH 
(PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

CREATE CLUSTERED INDEX [IX_Vynosy_Preprava] ON [Vynosy] 
( [Preprava] ASC ) WITH 
(STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

CREATE CLUSTERED INDEX [IX_NakladySil_Preprava] ON [NakladySil] 
( [Preprava] ASC ) WITH 
(STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]

CREATE CLUSTERED INDEX [IX_VynosySil_Preprava] ON [VynosySil] 
( [Preprava] ASC ) WITH 
(STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
