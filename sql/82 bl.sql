

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
CONSTRAINT PK_BL PRIMARY KEY CLUSTERED (Preprava ASC)
)

ALTER TABLE [BL]  WITH CHECK ADD CONSTRAINT [FK_Preprava] FOREIGN KEY([Preprava])
REFERENCES [Preprava] ([ID])

ALTER TABLE BL WITH CHECK CHECK CONSTRAINT FK_Preprava;