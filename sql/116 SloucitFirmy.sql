-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'SloucitFirmy') AND type in (N'P'))
    DROP PROCEDURE SloucitFirmy;
GO
-- =============================================
-- Author:		TZ
-- Create date: 15.2.2016
-- Description:	Slouzi ke slouceni 2 firem do jedne
-- =============================================
CREATE PROCEDURE SloucitFirmy @staraFirma int, @novaFirma int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	BEGIN TRAN;
    -- Insert statements for procedure here
	UPDATE Aktivity SET Firma=@novaFirma WHERE Firma=@staraFirma;
	UPDATE FirmaSOP SET Agent=@novaFirma WHERE Agent=@staraFirma;
	UPDATE FirmaSOP SET ZakDoprav1=@novaFirma WHERE ZakDoprav1=@staraFirma;
	UPDATE FirmaSOP SET ZakDoprav2=@novaFirma WHERE ZakDoprav2=@staraFirma;
	UPDATE FirmaSOP SET ZakDoprav3=@novaFirma WHERE ZakDoprav3=@staraFirma;
	UPDATE Kontakt SET Firma=@novaFirma WHERE Firma=@staraFirma;
	UPDATE Kontejner SET AdresaNakladky=@novaFirma WHERE AdresaNakladky=@staraFirma;
	UPDATE Kontejner SET Vykladka=@novaFirma WHERE Vykladka=@staraFirma;
	UPDATE KontejnerAT SET AdresaNakladky=@novaFirma WHERE AdresaNakladky=@staraFirma;
	UPDATE KontejnerAT SET Vykladka=@novaFirma WHERE Vykladka=@staraFirma;
	UPDATE KontejnerSil SET AdresaNakladky=@novaFirma WHERE AdresaNakladky=@staraFirma;
	UPDATE KontejnerSil SET Vykladka=@novaFirma WHERE Vykladka=@staraFirma;
	UPDATE KontejnerWH SET AdresaNakladky=@novaFirma WHERE AdresaNakladky=@staraFirma;
	UPDATE KontejnerWH SET Vykladka=@novaFirma WHERE Vykladka=@staraFirma;
	UPDATE Nabidka SET Firma=@novaFirma WHERE Firma=@staraFirma;
	UPDATE Nabidka SET Carrier=@novaFirma WHERE Carrier=@staraFirma;
	UPDATE NabidkaSil SET Firma=@novaFirma WHERE Firma=@staraFirma;
	UPDATE NabidkaSil SET Carrier=@novaFirma WHERE Carrier=@staraFirma;
	UPDATE Naklady SET Dodavatel=@novaFirma WHERE Dodavatel=@staraFirma;
	UPDATE NakladyAT SET Dodavatel=@novaFirma WHERE Dodavatel=@staraFirma;
	UPDATE NakladySil SET Dodavatel=@novaFirma WHERE Dodavatel=@staraFirma;
	UPDATE NakladyWH SET Dodavatel=@novaFirma WHERE Dodavatel=@staraFirma;
	UPDATE Odvetvi SET Firma=@novaFirma WHERE Firma=@staraFirma;
	UPDATE Pojisteni SET Pojisteny=@novaFirma WHERE Pojisteny=@staraFirma;
	UPDATE PojisteniSil SET Pojisteny=@novaFirma WHERE Pojisteny=@staraFirma;
	UPDATE Potencial SET Firma=@novaFirma WHERE Firma=@staraFirma;
	UPDATE Preprava SET Carrier=@novaFirma WHERE Carrier=@staraFirma;
	UPDATE Preprava SET CelniOdbaveni=@novaFirma WHERE CelniOdbaveni=@staraFirma;
	UPDATE Preprava SET Agent=@novaFirma WHERE Agent=@staraFirma;
	UPDATE Preprava SET Odesilatel=@novaFirma WHERE Odesilatel=@staraFirma;
	UPDATE Preprava SET Oncarriageby=@novaFirma WHERE Oncarriageby=@staraFirma;
	UPDATE Preprava SET Prijemce=@novaFirma WHERE Prijemce=@staraFirma;
	UPDATE Preprava SET Zakaznik=@novaFirma WHERE Zakaznik=@staraFirma;
	UPDATE Preprava SET Dopravce=@novaFirma WHERE Dopravce=@staraFirma;

	UPDATE PrepravaAT SET Carrier=@novaFirma WHERE Carrier=@staraFirma;
	UPDATE PrepravaAT SET CelniOdbaveni=@novaFirma WHERE CelniOdbaveni=@staraFirma;
	UPDATE PrepravaAT SET Agent=@novaFirma WHERE Agent=@staraFirma;
	UPDATE PrepravaAT SET Odesilatel=@novaFirma WHERE Odesilatel=@staraFirma;
	UPDATE PrepravaAT SET Oncarriageby=@novaFirma WHERE Oncarriageby=@staraFirma;
	UPDATE PrepravaAT SET Prijemce=@novaFirma WHERE Prijemce=@staraFirma;
	UPDATE PrepravaAT SET Zakaznik=@novaFirma WHERE Zakaznik=@staraFirma;
	UPDATE PrepravaAT SET Dopravce=@novaFirma WHERE Dopravce=@staraFirma;

	UPDATE PrepravaSil SET Carrier=@novaFirma WHERE Carrier=@staraFirma;
	UPDATE PrepravaSil SET CelniOdbaveni=@novaFirma WHERE CelniOdbaveni=@staraFirma;
	UPDATE PrepravaSil SET Agent=@novaFirma WHERE Agent=@staraFirma;
	UPDATE PrepravaSil SET Odesilatel=@novaFirma WHERE Odesilatel=@staraFirma;
	UPDATE PrepravaSil SET Oncarriageby=@novaFirma WHERE Oncarriageby=@staraFirma;
	UPDATE PrepravaSil SET Prijemce=@novaFirma WHERE Prijemce=@staraFirma;
	UPDATE PrepravaSil SET Zakaznik=@novaFirma WHERE Zakaznik=@staraFirma;
	UPDATE PrepravaSil SET Dopravce=@novaFirma WHERE Dopravce=@staraFirma;

	UPDATE PrepravaWH SET Carrier=@novaFirma WHERE Carrier=@staraFirma;
	UPDATE PrepravaWH SET CelniOdbaveni=@novaFirma WHERE CelniOdbaveni=@staraFirma;
	UPDATE PrepravaWH SET Agent=@novaFirma WHERE Agent=@staraFirma;
	UPDATE PrepravaWH SET Odesilatel=@novaFirma WHERE Odesilatel=@staraFirma;
	UPDATE PrepravaWH SET Oncarriageby=@novaFirma WHERE Oncarriageby=@staraFirma;
	UPDATE PrepravaWH SET Prijemce=@novaFirma WHERE Prijemce=@staraFirma;
	UPDATE PrepravaWH SET Zakaznik=@novaFirma WHERE Zakaznik=@staraFirma;
	UPDATE PrepravaWH SET Dopravce=@novaFirma WHERE Dopravce=@staraFirma;

	UPDATE Prilezitosti SET Firma=@novaFirma WHERE Firma=@staraFirma;
	UPDATE Skody SET Dodavatel=@novaFirma WHERE Dodavatel=@staraFirma;
	UPDATE SkodySil SET Dodavatel=@novaFirma WHERE Dodavatel=@staraFirma;
	UPDATE Vozidlo SET Dopravce=@novaFirma WHERE Dopravce=@staraFirma; -- Chybi FK !!
	UPDATE Vynosy SET Odberatel=@novaFirma WHERE Odberatel=@staraFirma;
	UPDATE VynosyAT SET Odberatel=@novaFirma WHERE Odberatel=@staraFirma;
	UPDATE VynosySil SET Odberatel=@novaFirma WHERE Odberatel=@staraFirma;
	UPDATE VynosyWH SET Odberatel=@novaFirma WHERE Odberatel=@staraFirma;
	UPDATE WebLogin SET Firma=@novaFirma WHERE Firma=@staraFirma;

--?	DELETE FROM Historie WHERE Tabulka = 'Firma' AND Radek = @staraFirma
	DELETE FROM FirmaSOP WHERE Firma=@staraFirma;
	DELETE FROM Firma WHERE ID=@staraFirma;

	COMMIT;
	RETURN 1;
END
GO
