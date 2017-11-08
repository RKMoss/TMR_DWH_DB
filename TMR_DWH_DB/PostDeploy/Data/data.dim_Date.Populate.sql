DECLARE @DateCount INT

SELECT @DateCount = COUNT(*) FROM data.dim_Date 

IF (@DateCount = 0)
	EXEC data.proc_dim_Date '1940-01-22',1940,-1,'2040-07-01';