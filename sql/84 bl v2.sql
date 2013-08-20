IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BL]') AND type in (N'U'))
    DROP TABLE [BL]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Kontejner_BL]') AND type in (N'U'))
    DROP TABLE [BLKontejner]
GO

CREATE TABLE BL (
--  ID int IDENTITY(1,1) NOT NULL,
  Preprava int NOT NULL,
  Shipper nvarchar(255),
  Consignee nvarchar(255),
  NotifyParty nvarchar(255),
  RefNo nvarchar(255),
  BigText nvarchar(255),
  ForDelivery nvarchar(255),
  PlaceOfReceipt nvarchar(255),
  PayableAt nvarchar(255),
  Precarriage nvarchar(255),
  PlaceOfDelivery nvarchar(255),
  NoOfOriginals nvarchar(255),
  MarksAndNo nvarchar(255),
  [Description] nvarchar(255),
  FreightDetail nvarchar(255),
  Signed nvarchar(255),
  [Date] date,

  MShipper nvarchar(255),
  MConsignee nvarchar(255),
  MNotifyParty nvarchar(255),
  MRefNo nvarchar(255),
  MBigText nvarchar(255),
  MForDelivery nvarchar(255),
  MPlaceOfReceipt nvarchar(255),
  MPayableAt nvarchar(255),
  MPrecarriage nvarchar(255),
  MPlaceOfDelivery nvarchar(255),
  MNoOfOriginals nvarchar(255),
  MMarksAndNo nvarchar(255),
  MDescription nvarchar(255),
  MFreightDetail nvarchar(255),
  MSigned nvarchar(255),
  MDate date,
  
CONSTRAINT PK_BL PRIMARY KEY CLUSTERED (Preprava ASC)
)

ALTER TABLE [BL]  WITH CHECK ADD CONSTRAINT [FK_Preprava] FOREIGN KEY([Preprava])
REFERENCES [Preprava] ([ID])

-- ALTER TABLE BL WITH CHECK CHECK CONSTRAINT FK_Preprava;
GO
--

CREATE TABLE BLKontejner
(
  Kontejner int NOT NULL,
  Popis nvarchar(255),
  MPopis nvarchar(255),

CONSTRAINT PK_BLKontejner PRIMARY KEY CLUSTERED (Kontejner ASC)
)
GO
ALTER TABLE [BLKontejner]  WITH CHECK ADD CONSTRAINT [FK_Kontejner] FOREIGN KEY([Kontejner])
REFERENCES [Kontejner] ([ID])