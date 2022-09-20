SELECT
	game,
	CASE
		WHEN game = 'League of Legends'
			OR game = 'Dota 2'
			OR game = 'Heroes of the Storm'
			THEN 'MOBA'
		WHEN game = 'Counter-Strike: Global Offensive'
			THEN 'FPS'
		WHEN game = 'DayZ'
			OR game = 'ARK: Survival Evolved'
			THEN 'Survival'
		ELSE 'Other'
		END AS 'genre',
		COUNT(*)
	FROM stream
	GROUP BY 1
	ORDER BY 3 DESC;