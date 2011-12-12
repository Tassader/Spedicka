BEGIN TRAN

ALTER TABLE Preprava ADD DPH smallmoney -- jako decimal(8,4) ale zabira o byte min
ALTER TABLE PrepravaSil ADD DPH smallmoney
GO
COMMIT
-- ROLLBACK