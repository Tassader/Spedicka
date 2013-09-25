SET ANSI_NULL_DFLT_ON ON;
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[FirmaSOP]') AND type in (N'U'))
    DROP TABLE [FirmaSOP]

CREATE TABLE FirmaSOP (
  Firma int NOT NULL, -- FK

  Kontakt1 int, -- FK
  Kontakt1_text nvarchar(125),
  Kontakt1zast int, -- FK
  Kontakt1zast_text nvarchar(125),

  Kontakt2 int, -- FK
  Kontakt2_text nvarchar(125),
  Kontakt2zast int, -- FK
  Kontakt2zast_text nvarchar(125),

  Kontakt3 int, -- FK
  Kontakt3_text nvarchar(125),
  Kontakt3zast int, -- FK
  Kontakt3zast_text nvarchar(125),

  PrefKomunikMobil smallint,
  PrefKomunikTel smallint,
  PrefKomunikEmail smallint,
  PrefKomunikRano smallint,
  PrefKomunikPresDen smallint,
  PrefKomunikOdpoledne smallint,

  PracovniDobaOd varchar(50), -- nebo varchar?-- TODO
  PracovniDobaDo varchar(50), -- nebo varchar?-- TODO
  
  Poznamka nvarchar(255),
  
  DruhPrepravy1 int, -- FK
  SmerPrepravy1 char(6),
  DruhPrepravy2 int, -- FK
  SmerPrepravy2 char(6),
  DruhPrepravy3 int, -- FK
  SmerPrepravy3 char(6),
  DruhPrepravy4 int, -- FK
  SmerPrepravy4 char(6),

  ObvykleZbozi1 nvarchar(125),
  HS1 varchar(125),-- TODO
  ObvykleZbozi2 nvarchar(125),
  HS2 varchar(125),-- TODO
  ObvykleZbozi3 nvarchar(125),
  HS3 varchar(125),-- TODO
  ObvykleZbozi4 nvarchar(125),
  HS4 varchar(125),-- TODO
  
  VysokaHodnota smallint,
  TeplotaOd smallint,
  TeplotaDo smallint,
  OchranaVlhko smallint,
  ZvlastnostiText1 nvarchar(125),
  ZvlastnostiText2 nvarchar(125),
  ZvlastnostiText3 nvarchar(125),
  
  Baleni nvarchar(255),

  Stohovatelne smallint,
  StohovatelneText nvarchar(125),
  
  PozadRychlost tinyint,
  PozadCena tinyint,
  PozadInfo tinyint,
  PozadObsah tinyint,
  
  CelniOdbaveni smallint, -- TODO - tinyint?
  CU smallint, -- FK
  Agent int, -- FK
  MAWB smallint,
  MBL smallint,
  MBLOriginal smallint, -- TODO tinyint?
  HAWB smallint, -- TODO tinyint?
  HBL smallint,
  HBLOriginal smallint,
  
  Pojisteni smallint,
  Poj110 smallint, -- TODO tinyint?
  PojCertifikat smallint,-- TODO tinyint?
  PojVcetneDopravy smallint,-- TODO tinyint?
  
  ZakDoprav1 int, -- FK
  ZakDoprav2 int, -- FK
  ZakDoprav3 int, -- FK
  
CONSTRAINT PK_FirmaSOP PRIMARY KEY CLUSTERED (Firma ASC)
)
GO

ALTER TABLE FirmaSOP WITH CHECK ADD CONSTRAINT FK_FirmaSOP_Firma FOREIGN KEY ( Firma ) REFERENCES Firma ( ID ) ON DELETE CASCADE; 

--blby SQL SERVER nedovoli SET NULL pro vice FK do stejne tabulky ... ze pry se to muze cyklit, coz je pixovina... 
ALTER TABLE FirmaSOP WITH CHECK ADD CONSTRAINT FK_FirmaSOP_Kontakt1 FOREIGN KEY ( Kontakt1 ) REFERENCES Kontakt ( ID ) -- ON DELETE SET NULL; 
ALTER TABLE FirmaSOP WITH CHECK ADD CONSTRAINT FK_FirmaSOP_Kontakt1zast FOREIGN KEY ( Kontakt1zast ) REFERENCES Kontakt ( ID ) --ON DELETE SET NULL; 
ALTER TABLE FirmaSOP WITH CHECK ADD CONSTRAINT FK_FirmaSOP_Kontakt2 FOREIGN KEY ( Kontakt2 ) REFERENCES Kontakt ( ID ) --ON DELETE SET NULL; 
ALTER TABLE FirmaSOP WITH CHECK ADD CONSTRAINT FK_FirmaSOP_Kontakt2zast FOREIGN KEY ( Kontakt2zast ) REFERENCES Kontakt ( ID ) --ON DELETE SET NULL; 
ALTER TABLE FirmaSOP WITH CHECK ADD CONSTRAINT FK_FirmaSOP_Kontakt3 FOREIGN KEY ( Kontakt3 ) REFERENCES Kontakt ( ID ) --ON DELETE SET NULL; 
ALTER TABLE FirmaSOP WITH CHECK ADD CONSTRAINT FK_FirmaSOP_Kontakt3zast FOREIGN KEY ( Kontakt3zast ) REFERENCES Kontakt ( ID ) --ON DELETE SET NULL; 

ALTER TABLE FirmaSOP WITH CHECK ADD CONSTRAINT FK_FirmaSOP_DruhPrepravy1 FOREIGN KEY ( DruhPrepravy1 ) REFERENCES DruhPrepravy ( ID ) --ON DELETE SET NULL; 
ALTER TABLE FirmaSOP WITH CHECK ADD CONSTRAINT FK_FirmaSOP_DruhPrepravy2 FOREIGN KEY ( DruhPrepravy2 ) REFERENCES DruhPrepravy ( ID ) --ON DELETE SET NULL; 
ALTER TABLE FirmaSOP WITH CHECK ADD CONSTRAINT FK_FirmaSOP_DruhPrepravy3 FOREIGN KEY ( DruhPrepravy3 ) REFERENCES DruhPrepravy ( ID ) --ON DELETE SET NULL; 
ALTER TABLE FirmaSOP WITH CHECK ADD CONSTRAINT FK_FirmaSOP_DruhPrepravy4 FOREIGN KEY ( DruhPrepravy4 ) REFERENCES DruhPrepravy ( ID ) --ON DELETE SET NULL; 

ALTER TABLE FirmaSOP WITH CHECK ADD CONSTRAINT FK_FirmaSOP_CU FOREIGN KEY ( CU ) REFERENCES CelniUrad ( ID ) --ON DELETE SET NULL; 
ALTER TABLE FirmaSOP WITH CHECK ADD CONSTRAINT FK_FirmaSOP_Agent FOREIGN KEY ( Agent ) REFERENCES Firma ( ID ) --ON DELETE SET NULL; 

--blby SQL SERVER nedovoli SET NULL pro vice FK do stejne tabulky ... ze pry se to muze cyklit, coz je pixovina... 
ALTER TABLE FirmaSOP WITH CHECK ADD CONSTRAINT FK_FirmaSOP_ZakDoprav1 FOREIGN KEY ( ZakDoprav1 ) REFERENCES Firma ( ID ) --ON DELETE SET NULL; 
ALTER TABLE FirmaSOP WITH CHECK ADD CONSTRAINT FK_FirmaSOP_ZakDoprav2 FOREIGN KEY ( ZakDoprav2 ) REFERENCES Firma ( ID ) --ON DELETE SET NULL; 
ALTER TABLE FirmaSOP WITH CHECK ADD CONSTRAINT FK_FirmaSOP_ZakDoprav3 FOREIGN KEY ( ZakDoprav3 ) REFERENCES Firma ( ID ) --ON DELETE SET NULL; 
