/*
SELECT db_name(dbid) as DatabaseName, count(dbid) as NoOfConnections,
loginame as LoginName
FROM sys.sysprocesses
WHERE dbid > 0
GROUP BY dbid, loginame
*/


ALTER TABLE Vynosy WITH CHECK ADD CONSTRAINT FK_Vynosy_Sluzba
    FOREIGN KEY ( Sluzba ) REFERENCES Sluzba ( ID );
ALTER TABLE VynosySil WITH CHECK ADD CONSTRAINT FK_VynosySil_Sluzba
    FOREIGN KEY ( Sluzba ) REFERENCES Sluzba ( ID );
GO
-- pomale ... teda spis nejde kdyz nekdo je pripojeny a ma to otevrene :-/ ... proto jeste nepridano na server
ALTER TABLE Vynosy WITH CHECK ADD CONSTRAINT FK_Vynosy_Odberatel
    FOREIGN KEY ( Odberatel ) REFERENCES Firma ( ID );
GO
ALTER TABLE VynosySil WITH CHECK ADD CONSTRAINT FK_VynosySil_Odberatel
    FOREIGN KEY ( Odberatel ) REFERENCES Firma ( ID );
GO

--ALTER TABLE VynosySil WITH CHECK CHECK CONSTRAINT FK_Vynosy_Odberatel;
--ALTER TABLE VynosySil WITH CHECK CHECK CONSTRAINT FK_VynosySil_Odberatel;
