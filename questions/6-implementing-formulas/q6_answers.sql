

-- Q1 Extract year and count occurences
SELECT SUBSTRING(LOG_TEXT, CHARINDEX('REGISTERED IN', log_text) + len('REGISTERED IN '), 5) as year_registration,
count(*) as n
from logs_q5
group by SUBSTRING(LOG_TEXT, CHARINDEX('REGISTERED IN', log_text) + len('REGISTERED IN '), 5)
order by year_registration desc


-- Q2 Extract closure reason and count occurences
with closure_reasons as (
	SELECT *,
		trim(
		REPLACE(
		SUBSTRING(LOG_TEXT,
			CHARINDEX('CLOSURE REASON: ', log_text) + LEN('CLOSURE REASON: '),
			CASE WHEN CHARINDEX('CURRENT STATUS', log_text) = 0 
				THEN LEN(LOG_TEXT)
				ELSE CHARINDEX('CURRENT STATUS', log_text) - CHARINDEX('CLOSURE REASON: ', log_text) - LEN('CLOSURE REASON: ')
			END
		), '.', ''))
		AS CLOSURE_REASON
	FROM LOGS_Q5
)

select closure_reason,
	count(*) n
from closure_reasons
group by CLOSURE_REASON
order by n desc
