USE ejercicio_08_int;

SELECT t.team_name, c.city_name
FROM teams t
INNER JOIN cities c
ON t.city_id = c.city_id;

SELECT p.player_name, p.position, t.team_name
FROM players p
INNER JOIN teams t
ON p.team_id = t.team_id;

SELECT 
m.match_date,
ht.team_name AS home_team,
at.team_name AS away_team,
m.home_score,
m.away_score
FROM matches m
INNER JOIN teams ht
ON m.home_team_id = ht.team_id
INNER JOIN teams at
ON m.away_team_id = at.team_id;


SELECT t.team_name
FROM teams t
INNER JOIN cities c
ON t.city_id = c.city_id
WHERE c.city_name = 'Bogota';

-- 5. Contar el total de jugadores registrados
SELECT COUNT(*) AS total_players
FROM players;




