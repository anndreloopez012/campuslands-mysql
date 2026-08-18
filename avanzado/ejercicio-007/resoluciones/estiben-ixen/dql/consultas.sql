USE football_views_db;



-- ==========================================
-- VISTA 1
-- Ranking de goleadores
-- ==========================================

CREATE VIEW top_scorers_view AS

SELECT

    p.player_name AS jugador,

    t.team_name AS equipo,

    SUM(ps.goals) AS goles

FROM players p

INNER JOIN teams t

ON p.id_team = t.id_team

INNER JOIN player_statistics ps

ON p.id_player = ps.id_player

GROUP BY

p.player_name,

t.team_name;



-- Consultar vista

SELECT *

FROM top_scorers_view

ORDER BY goles DESC;



-- ==========================================
-- VISTA 2
-- Rendimiento de equipos
-- ==========================================

CREATE VIEW team_performance_view AS

SELECT

    t.team_name AS equipo,

    COUNT(m.id_match) AS partidos,

    SUM(

        CASE

        WHEN m.home_team = t.id_team

        THEN m.home_goals

        ELSE m.away_goals

        END

    ) AS goles_totales


FROM teams t

LEFT JOIN matches m

ON t.id_team IN

(m.home_team,m.away_team)

GROUP BY t.team_name;



SELECT *

FROM team_performance_view

ORDER BY goles_totales DESC;



-- ==========================================
-- VISTA 3
-- Tabla de posiciones simple
-- ==========================================

CREATE VIEW league_table_view AS

SELECT

    t.team_name AS equipo,

    COUNT(m.id_match) AS partidos_jugados,

    SUM(

    CASE

    WHEN

    (m.home_team=t.id_team AND m.home_goals>m.away_goals)

    OR

    (m.away_team=t.id_team AND m.away_goals>m.home_goals)

    THEN 3

    WHEN m.home_goals=m.away_goals

    THEN 1

    ELSE 0

    END

    ) AS puntos


FROM teams t

LEFT JOIN matches m

ON t.id_team IN

(m.home_team,m.away_team)

GROUP BY t.team_name;



SELECT *

FROM league_table_view

ORDER BY puntos DESC;



-- ==========================================
-- CONSULTAS ADICIONALES
-- ==========================================


-- 4. Equipos activos

SELECT

team_name AS equipo,

city AS ciudad

FROM teams

WHERE status='active';



-- 5. Jugadores con mas asistencias

SELECT

p.player_name AS jugador,

SUM(ps.assists) AS asistencias

FROM player_statistics ps

INNER JOIN players p

ON ps.id_player=p.id_player

GROUP BY p.player_name

ORDER BY asistencias DESC

LIMIT 5;