-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

SELECT *
FROM vw_tabla_goleadores;

SELECT
    jugador,
    equipo,
    goles
FROM vw_tabla_goleadores
ORDER BY goles DESC
LIMIT 5;

SELECT *
FROM vw_resumen_equipos;

SELECT
    equipo,
    goles_totales
FROM vw_resumen_equipos
WHERE goles_totales > 20;

SELECT
    AVG(goles) AS promedio_goles
FROM vw_tabla_goleadores;

SELECT
    equipo,
    goles_totales
FROM vw_resumen_equipos
ORDER BY goles_totales DESC;