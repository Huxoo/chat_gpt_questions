SELECT DATEPART(YEAR, [DATE_]) AS 'YEAR', [FICHENO10], [FICHENO9], [FICHENO8], [FICHENO7]
FROM (
	SELECT [DATE_], FICHENO, NETTOTAL FROM ORDERFICHE
) AS SOURCETABLE

PIVOT(
	SUM(NETTOTAL)
	FOR FICHENO IN ([FICHENO10], [FICHENO9],[FICHENO8],[FICHENO7])
) AS PIVOTTABLE