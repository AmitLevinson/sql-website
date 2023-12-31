select top 5 * 
from Items_q6;

-- Q1 - Calculate coefficient of variation for each category
SELECT CATEGORY,
	STDEV(AMOUNT) / AVG(AMOUNT) CV
FROM items_q6
GROUP BY CATEGORY
ORDER BY CV

-- Q2 - Normalize values to be in the range of 0-100
SELECT CATEGORY,
	AMOUNT,
	AMOUNT_NORMALIZED = (AMOUNT - MIN(AMOUNT) OVER(PARTITION BY CATEGORY))  * 100.0 /
		(MAX(AMOUNT) OVER(PARTITION BY CATEGORY) - MIN(AMOUNT) OVER(PARTITION BY CATEGORY))
FROM items_q6
ORDER BY CATEGORY, AMOUNT_NORMALIZED