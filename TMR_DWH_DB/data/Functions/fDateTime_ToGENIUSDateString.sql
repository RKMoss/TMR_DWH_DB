-- ==========================================================================================
-- Author:		Bror
-- Create date: 28 October 2010
-- Description:	Takes a GENIUS format data and returns a SQL datetime formatted date
-- ==========================================================================================
CREATE FUNCTION [data].[fDateTime_ToGENIUSDateString] 
(
	@DateTime DATETIME = '01/01/2009'
)
RETURNS CHAR(7)
AS
BEGIN
	
	DECLARE @RESULT CHAR(7)
	SET @RESULT = CAST((SELECT ((YEAR(@DateTime) - 1900) * 10000) + (MONTH(@DateTime) * 100) + DAY(@DateTime)) AS CHAR(7))

	RETURN @RESULT
END



GO