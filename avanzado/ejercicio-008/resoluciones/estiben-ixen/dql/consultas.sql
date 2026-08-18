USE futsal_security_db;



-- ===================================
-- CONSULTAS PARA REPORTES
-- ===================================



-- 1. Jugadores con sus equipos

SELECT

    p.player_name AS jugador,

    t.team_name AS equipo,

    p.position AS posicion

FROM players p

INNER JOIN teams t

ON p.id_team = t.id_team;



-- 2. Ranking de goleadores

SELECT

    p.player_name AS jugador,

    s.goals AS goles

FROM statistics s

INNER JOIN players p

ON s.id_player = p.id_player

ORDER BY goles DESC;



-- 3. Jugadores por equipo

SELECT

    t.team_name AS equipo,

    COUNT(p.id_player) AS jugadores

FROM teams t

LEFT JOIN players p

ON t.id_team = p.id_team

GROUP BY t.team_name;



-- 4. Resultados de partidos

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



-- 5. Ranking de asistencias

SELECT

    p.player_name AS jugador,

    s.assists AS asistencias

FROM statistics s

INNER JOIN players p

ON s.id_player = p.id_player

ORDER BY asistencias DESC;