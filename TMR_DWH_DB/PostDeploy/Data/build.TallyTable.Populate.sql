DECLARE @HighestRowValue INT = 1000000, @RowValue INT = 1

DECLARE @TallyTable TABLE (TallyId INT)

TRUNCATE TABLE build.TallyTable;

WHILE @RowValue <= @HighestRowValue
BEGIN
	INSERT INTO @TallyTable (TallyId) VALUES (@RowValue);

	SET @RowValue = @RowValue + 1;
END


INSERT INTO build.TallyTable (TallyId)
SELECT TallyId FROM @TallyTable;