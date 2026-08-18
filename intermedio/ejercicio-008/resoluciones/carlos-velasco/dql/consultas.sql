-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

SELECT
    j.nombre AS jugador,
    e.nombre AS equipo,
    c.nombre AS ciudad
FROM jugadores j
INNER JOIN equipos e
    ON j.equipo_id = e.id
INNER JOIN ciudades c
    ON e.ciudad_id = c.id;

SELECT
    j.nombre AS jugador,
    es.goles
FROM estadisticas_jugadores es
INNER JOIN jugadores j
    ON es.jugador_id = j.id
ORDER BY es.goles DESC;

SELECT
    e.nombre AS equipo,
    SUM(es.goles) AS goles_totales
FROM estadisticas_jugadores es
INNER JOIN jugadores j
    ON es.jugador_id = j.id
INNER JOIN equipos e
    ON j.equipo_id = e.id
GROUP BY
    e.id,
    e.nombre;

SELECT
    AVG(asistencias) AS promedio_asistencias
FROM estadisticas_jugadores;

SELECT
    j.nombre,
    es.goles
FROM estadisticas_jugadores es
INNER JOIN jugadores j
    ON es.jugador_id = j.id
WHERE es.goles > 10;

SELECT
    c.nombre AS ciudad,
    COUNT(j.id) AS total_jugadores
FROM jugadores j
INNER JOIN equipos e
    ON j.equipo_id = e.id
INNER JOIN ciudades c
    ON e.ciudad_id = c.id
GROUP BY
    c.id,
    c.nombre;
