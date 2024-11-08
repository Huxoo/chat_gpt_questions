WITH PRICE_RANK AS (SELECT *,
NTILE(10) OVER (ORDER BY PRICE DESC) AS QUANTILE
FROM ITEMS
)
SELECT *,
CASE
	WHEN QUANTILE = 10 THEN 'LOW PRICE'
	ELSE 'NORMAL PRICE'
END AS PRICE_QUERY
FROM PRICE_RANK
