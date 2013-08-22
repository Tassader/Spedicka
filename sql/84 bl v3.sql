IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BLKontejner]') AND type in (N'U'))
    DROP TABLE [BLKontejner]
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[BL]') AND type in (N'U'))
    DROP TABLE [BL]
GO

CREATE TABLE BL (
  --ID int IDENTITY(1,1) NOT NULL,
  Preprava int NOT NULL,
  --CisloBL char(9),-- NOT NULL,

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

  ShipperH1 nvarchar(255),
  ConsigneeH1 nvarchar(255),
  NotifyPartyH1 nvarchar(255),
  RefNoH1 nvarchar(255),
  BigTextH1 nvarchar(255),
  ForDeliveryH1 nvarchar(255),
  PlaceOfReceiptH1 nvarchar(255),
  PayableAtH1 nvarchar(255),
  PrecarriageH1 nvarchar(255),
  PlaceOfDeliveryH1 nvarchar(255),
  NoOfOriginalsH1 nvarchar(255),
  MarksAndNoH1 nvarchar(255),
  DescriptionH1 nvarchar(255),
  FreightDetailH1 nvarchar(255),
  SignedH1 nvarchar(255),
  DateH1 date,

  ShipperH2 nvarchar(255),
  ConsigneeH2 nvarchar(255),
  NotifyPartyH2 nvarchar(255),
  RefNoH2 nvarchar(255),
  BigTextH2 nvarchar(255),
  ForDeliveryH2 nvarchar(255),
  PlaceOfReceiptH2 nvarchar(255),
  PayableAtH2 nvarchar(255),
  PrecarriageH2 nvarchar(255),
  PlaceOfDeliveryH2 nvarchar(255),
  NoOfOriginalsH2 nvarchar(255),
  MarksAndNoH2 nvarchar(255),
  DescriptionH2 nvarchar(255),
  FreightDetailH2 nvarchar(255),
  SignedH2 nvarchar(255),
  DateH2 date,

  ShipperH3 nvarchar(255),
  ConsigneeH3 nvarchar(255),
  NotifyPartyH3 nvarchar(255),
  RefNoH3 nvarchar(255),
  BigTextH3 nvarchar(255),
  ForDeliveryH3 nvarchar(255),
  PlaceOfReceiptH3 nvarchar(255),
  PayableAtH3 nvarchar(255),
  PrecarriageH3 nvarchar(255),
  PlaceOfDeliveryH3 nvarchar(255),
  NoOfOriginalsH3 nvarchar(255),
  MarksAndNoH3 nvarchar(255),
  DescriptionH3 nvarchar(255),
  FreightDetailH3 nvarchar(255),
  SignedH3 nvarchar(255),
  DateH3 date,

CONSTRAINT PK_BL PRIMARY KEY CLUSTERED (Preprava ASC)
)

ALTER TABLE [BL]  WITH CHECK ADD CONSTRAINT [FK_Preprava] FOREIGN KEY([Preprava])
REFERENCES [Preprava] ([ID])

-- ALTER TABLE BL WITH CHECK CHECK CONSTRAINT FK_Preprava;
GO
--

CREATE TABLE BLKontejner
(
  --BL int NOT NULL,
  Kontejner int NOT NULL,
  Popis nvarchar(255),
  HBL tinyint NOT NULL CONSTRAINT DF_HBL DEFAULT 1,

CONSTRAINT PK_BLKontejner PRIMARY KEY CLUSTERED (Kontejner ASC)
)
--GO
ALTER TABLE [BLKontejner]  WITH CHECK ADD CONSTRAINT [FK_Kontejner] FOREIGN KEY([Kontejner])
REFERENCES [Kontejner] ([ID])

--ALTER TABLE [BLKontejner]  WITH CHECK ADD CONSTRAINT [FK_BL] FOREIGN KEY([BL])
--REFERENCES [BL] ([ID]) ON DELETE CASCADE

------------------------
/*IF  EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[BLOnInsert]'))
DROP TRIGGER [BLOnInsert]
GO

CREATE TRIGGER BLOnInsert 
   ON  BL 
   FOR INSERT
AS 
BEGIN

	SET NOCOUNT ON;

	UPDATE BL SET 
        CisloBL=CAST(YEAR(GETDATE()) AS VARCHAR) + '-' + 
            Right('000' + 
                CAST((SELECT ISNULL(MAX(CAST(RIGHT(P.CisloBL, LEN(P.CisloBL)-5)AS smallint)),0)+1 FROM BL P WHERE LEFT(P.CisloBL, 4) like YEAR(GETDATE())) AS VARCHAR),
                4)
    FROM inserted
    WHERE BL.ID=inserted.ID;
END
GO*/