USE football_league_db;



-- 1. Mostrar jugadores con su equipo actual

SELECT

    p.player_name AS jugador,

    t.team_name AS equipo,

    p.position AS posicion

FROM players p

INNER JOIN teams t

ON p.id_team = t.id_team

ORDER BY equipo;



-- 2. Ranking de jugadores con mas goles

SELECT

    p.player_name AS jugador,

    SUM(ps.goals) AS total_goles

FROM player_statistics ps

INNER JOIN players p

ON ps.id_player = p.id_player

GROUP BY p.player_name

ORDER BY total_goles DESC;



-- 3. Cantidad de jugadores por equipo

SELECT

    t.team_name AS equipo,

    COUNT(p.id_player) AS cantidad_jugadores

FROM teams t

LEFT JOIN players p

ON t.id_team = p.id_team

GROUP BY t.team_name

ORDER BY cantidad_jugadores DESC;



-- 4. Partidos con resultado y equipos participantes

SELECT

    m.match_date AS fecha,

    ht.team_name AS local,

    at.team_name AS visitante,

    m.home_goals AS goles_local,

    m.away_goals AS goles_visitante

FROM matches m

INNER JOIN teams ht

ON m.home_team = ht.id_team

INNER JOIN teams at

ON m.away_team = at.id_team;



-- 5. Top jugadores por asistencias

SELECT

    p.player_name AS jugador,

    SUM(ps.assists) AS asistencias

FROM player_statistics ps

INNER JOIN players p

ON ps.id_player = p.id_player

GROUP BY p.player_name

ORDER BY asistencias DESC

LIMIT 5;



-- 6. Equipos activos registrados

SELECT

    status AS estado,

    COUNT(*) AS total_equipos

FROM teams

GROUP BY status;