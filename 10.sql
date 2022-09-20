SELECT	
	strftime('%H', time),
	COUNT(*)
FROM stream
WHERE country = 'US'
GROUP BY 1;