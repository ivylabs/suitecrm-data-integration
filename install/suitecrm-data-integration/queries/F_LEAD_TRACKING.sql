-- Select all lead tracking order by lead and ordered status

SELECT *
FROM F_LEAD_TRACKING FLT
ORDER BY 1, STATUS_DATE ASC, EVENT_COUNT ASC; 

-- Current count of New leads broken up by month
SELECT
	DD.`YYYY-MM`
	,SUM(FLT.EVENT_COUNT) TOTAL
FROM F_LEAD_TRACKING FLT
INNER JOIN D_DATE DD
	ON FLT.EVENT_CREATED_TK = DD.DATE_TK
WHERE EVENT_STATUS = 1
AND FLT.STATUS = 'New'
GROUP BY DD.`YYYY-MM`
ORDER BY 1 DESC
LIMIT 10;

-- Distinct count of New leads broken up by month
SELECT DD.`YYYY-MM`
	,COUNT(DISTINCT(LEAD_ID)) TOTAL
FROM F_LEAD_TRACKING FLT
INNER JOIN D_DATE DD
	ON FLT.EVENT_CREATED_TK = DD.DATE_TK
WHERE STATUS = 'New'
AND EVENT_COUNT = 1
GROUP BY DD.`YYYY-MM`;
