USE futsal_league_db;



-- 1. Mostrar jugadores con equipo, ciudad y entrenador

SELECT

    p.player_name AS jugador,

    t.team_name AS equipo,

    c.city_name AS ciudad,

    co.coach_name AS entrenador

FROM players p

INNER JOIN teams t

ON p.id_team = t.id_team

INNER JOIN cities c

ON t.id_city = c.id_city

INNER JOIN coaches co

ON t.id_coach = co.id_coach;



-- 2. Ranking de goleadores del torneo

SELECT

    p.player_name AS jugador,

    SUM(ps.goals) AS goles

FROM player_statistics ps

INNER JOIN players p

ON ps.id_player = p.id_player

GROUP BY p.player_name

ORDER BY goles DESC;



-- 3. Cantidad de jugadores por equipo

SELECT

    t.team_name AS equipo,

    COUNT(p.id_player) AS jugadores

FROM teams t

LEFT JOIN players p

ON t.id_team = p.id_team

GROUP BY t.team_name

ORDER BY jugadores DESC;



-- 4. Resultados de partidos con nombres de equipos

SELECT

    m.match_date AS fecha,

    ht.team_name AS local,

    at.team_name AS visitante,

    m.home_score AS goles_local,

    m.away_score AS goles_visitante

FROM matches m

INNER JOIN teams ht

ON m.home_team = ht.id_team

INNER JOIN teams at

ON m.away_team = at.id_team;



-- 5. Top 5 jugadores con mas asistencias

SELECT

    p.player_name AS jugador,

    SUM(ps.assists) AS asistencias

FROM player_statistics ps

INNER JOIN players p

ON ps.id_player = p.id_player

GROUP BY p.player_name

ORDER BY asistencias DESC

LIMIT 5;



-- 6. Equipos activos por ciudad

SELECT

    c.city_name AS ciudad,

    COUNT(t.id_team) AS equipos_activos

FROM teams t

INNER JOIN cities c

ON t.id_city = c.id_city

WHERE t.status = 'active'

GROUP BY c.city_name;