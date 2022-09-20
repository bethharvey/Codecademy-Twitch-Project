SELECT time,
	strftime('%S', time)
FROM stream
GROUP BY 1
LIMIT 20;