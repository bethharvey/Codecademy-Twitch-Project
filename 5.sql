SELECT	
	country,
	COUNT(*)
FROM stream
GROUP BY 1
ORDER BY 2 DESC;