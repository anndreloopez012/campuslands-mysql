-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

CREATE VIEW vw_rendimiento_partidos AS
SELECT 
    equipo_local_id AS equipo_id,
    1 AS pj,
    CASE WHEN goles_local > goles_visitante THEN 1 ELSE 0 END AS pg,
    CASE WHEN goles_local = goles_visitante THEN 1 ELSE 0 END AS pe,
    CASE WHEN goles_local < goles_visitante THEN 1 ELSE 0 END AS pp,
    goles_local AS gf,
    goles_visitante AS gc,
    CASE 
        WHEN goles_local > goles_visitante THEN 3 
        WHEN goles_local = goles_visitante THEN 1 
        ELSE 0 
    END AS puntos
FROM Partidos
UNION ALL
SELECT 
    equipo_visitante_id AS equipo_id,
    1 AS pj,
    CASE WHEN goles_visitante > goles_local THEN 1 ELSE 0 END AS pg,
    CASE WHEN goles_visitante = goles_local THEN 1 ELSE 0 END AS pe,
    CASE WHEN goles_visitante < goles_local THEN 1 ELSE 0 END AS pp,
    goles_visitante AS gf,
    goles_local AS gc,
    CASE 
        WHEN goles_visitante > goles_local THEN 3 
        WHEN goles_visitante = goles_local THEN 1 
        ELSE 0 
    END AS puntos
FROM Partidos;
