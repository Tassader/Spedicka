ALTER TRIGGER [PrepravaATOnInsert] 
   ON  [PrepravaAT] 
   --INSTEAD OF INSERT
   FOR INSERT
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here

	-- BEGIN TRAN
	-- INSERT INTO PrepravaAT WITH (updlock) SELECT * FROM inserted
	-- COMMIT
	-- 
	UPDATE PrepravaAT SET 
        Cislo=CAST(YEAR(GETDATE()) AS VARCHAR) + '-AM' + 
            Right('000' + 
                CAST((SELECT ISNULL(MAX(CAST(RIGHT(P.Cislo, LEN(P.Cislo)-7)AS smallint)),0)+2+round(rand()*8,0) FROM PrepravaAT P WHERE LEFT(P.Cislo, 4) like YEAR(GETDATE())) AS VARCHAR),                4)
  		,KurzEUR = EUR -- ISNULL(EUR, 25)
		,KurzUSD = USD -- ISNULL(USD, 20)
    FROM inserted
        LEFT JOIN Kurzy ON Kurzy.Rok = inserted.Rok AND Kurzy.Tyden = inserted.Tyden
    WHERE PrepravaAT.ID=inserted.ID;


END
GO