DECLARE @rok AS int, @mesic AS int, @datum AS smalldatetime
set @rok = 2015
set @datum = '2015-01-01'
--set @mesic = 1

-- phase1: 
BEGIN TRAN
--AT
DELETE FROM NakladyAT WHERE Preprava IN (SELECT ID FROM PrepravaAT WHERE Rok < @rok)
DELETE FROM VynosyAT WHERE Preprava IN (SELECT ID FROM PrepravaAT WHERE Rok < @rok)
DELETE FROM KontejnerAT WHERE Preprava IN (SELECT ID FROM PrepravaAT WHERE Rok < @rok)

DELETE FROM PrepravaAT WHERE Rok < @rok

--Overseas
DELETE FROM Naklady WHERE Preprava IN (SELECT ID FROM Preprava WHERE Rok < @rok)
DELETE FROM Vynosy WHERE Preprava IN (SELECT ID FROM Preprava WHERE Rok < @rok)
DELETE FROM BLKontejner WHERE Kontejner IN (SELECT ID FROM Kontejner WHERE Preprava IN (SELECT ID FROM Preprava WHERE Rok < @rok))
DELETE FROM Kontejner WHERE Preprava IN (SELECT ID FROM Preprava WHERE Rok < @rok)
DELETE FROM Pojisteni WHERE Preprava IN (SELECT ID FROM Preprava WHERE Rok < @rok)
DELETE FROM Skody WHERE Preprava IN (SELECT ID FROM Preprava WHERE Rok < @rok)
DELETE FROM BL WHERE Preprava IN (SELECT ID FROM Preprava WHERE Rok < @rok)

DELETE FROM Preprava WHERE Rok < @rok

--Sil
DELETE FROM NakladySil WHERE Preprava IN (SELECT ID FROM PrepravaSil WHERE Rok < @rok)
DELETE FROM VynosySil WHERE Preprava IN (SELECT ID FROM PrepravaSil WHERE Rok < @rok)
DELETE FROM KontejnerSil WHERE Preprava IN (SELECT ID FROM PrepravaSil WHERE Rok < @rok)
DELETE FROM PojisteniSil WHERE Preprava IN (SELECT ID FROM PrepravaSil WHERE Rok < @rok)
DELETE FROM SkodySil WHERE Preprava IN (SELECT ID FROM PrepravaSil WHERE Rok < @rok)

DELETE FROM PrepravaSil WHERE Rok < @rok

--WH
DELETE FROM NakladyWH WHERE Preprava IN (SELECT ID FROM PrepravaWH WHERE Rok < @rok)
DELETE FROM VynosyWH WHERE Preprava IN (SELECT ID FROM PrepravaWH WHERE Rok < @rok)
DELETE FROM KontejnerWH WHERE Preprava IN (SELECT ID FROM PrepravaWH WHERE Rok < @rok)

DELETE FROM PrepravaWH WHERE Rok < @rok

-- Nabidky
DELETE FROM NabidkaAgent WHERE Nabidka IN (SELECT ID FROM Nabidka WHERE PlatnostNabidky < @datum)
DELETE FROM NabidkaAIR WHERE Nabidka IN (SELECT ID FROM Nabidka WHERE PlatnostNabidky < @datum)
DELETE FROM NabidkaAIR2Specifikace WHERE Nabidka IN (SELECT ID FROM Nabidka WHERE PlatnostNabidky < @datum)
DELETE FROM NabidkaAIR2 WHERE Nabidka IN (SELECT ID FROM Nabidka WHERE PlatnostNabidky < @datum)
DELETE FROM NabidkaKontejnery WHERE Nabidka IN (SELECT ID FROM Nabidka WHERE PlatnostNabidky < @datum)
DELETE FROM NabidkaKuryr WHERE Nabidka IN (SELECT ID FROM Nabidka WHERE PlatnostNabidky < @datum)
DELETE FROM NabidkaLCL WHERE Nabidka IN (SELECT ID FROM Nabidka WHERE PlatnostNabidky < @datum)

DELETE FROM Nabidka WHERE PlatnostNabidky < @datum

-- NabidkySil
DELETE FROM NabidkaSilNakladky WHERE NabidkaSil IN (SELECT ID FROM NabidkaSil WHERE PlatnostNabidky < @datum)
DELETE FROM NabidkaSil WHERE PlatnostNabidky < @datum

ROLLBACK;
-- vysledek:
(131 row(s) affected)
(136 row(s) affected)
(132 row(s) affected)
(113 row(s) affected)
(9327 row(s) affected)
(6984 row(s) affected)
(277 row(s) affected)
(4134 row(s) affected)
(86 row(s) affected)
(0 row(s) affected)
(176 row(s) affected)
(3191 row(s) affected)
(12480 row(s) affected)
(12476 row(s) affected)
(16658 row(s) affected)
(26 row(s) affected)
(1 row(s) affected)
(12284 row(s) affected)
(27 row(s) affected)
(52 row(s) affected)
(6 row(s) affected)
(17 row(s) affected)
(0 row(s) affected)
(422 row(s) affected)
(225 row(s) affected)
(162 row(s) affected)
(1779 row(s) affected)
(0 row(s) affected)
(795 row(s) affected)
(2299 row(s) affected)
(1 row(s) affected)
(1 row(s) affected)

/*
Aktivity

--CelniUrad-- rucne
--CenaZaKm --později
--DruhKusu
--DruhPrepravy
Firma
FirmaSOP
--Historie později
--Incoterms
--KategorieCRM
Kontakt
--Kurzy --- možná později
--Misto
--Nastaveni
Obchodnik
Odvetvi
--OdvetviFirem
PASUpominkyChyby
--PASUpominkyOdeslane
--PASUpominkyZpracovaneSoubory

Potencial
--PravidelnostPotencialu
Prilezitosti
--RatingPrilezitosti

--Sluzba
--SpecializaceFirem
--Stat
--StavPrepravy
--StavPrilezitosti
--Svatky
--Terminal
--TypAktivity
--TypKontejneru
--TypKontejneruNabidky
--TypMnozstvi
UpominkyChyby
--UpominkyOdeslane
--UpominkyZpracovaneSoubory
Vozidlo -- rucne
--WebLogin
WHUpominkyChyby
--WHUpominkyOdeslane
--WHUpominkyZpracovaneSoubory
*/