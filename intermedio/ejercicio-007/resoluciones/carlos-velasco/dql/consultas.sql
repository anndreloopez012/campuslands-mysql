-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

SELECT
    j.nombre AS jugador,
    e.nombre AS equipo,
    p.temporada
FROM participaciones p
INNER JOIN jugadores j
    ON p.jugador_id = j.id
INNER JOIN equipos e
    ON p.equipo_id = e.id;

SELECT
    j.nombre AS jugador,
    e.nombre AS equipo,
    p.goles
FROM participaciones p
INNER JOIN jugadores j
    ON p.jugador_id = j.id
INNER JOIN equipos e
    ON p.equipo_id = e.id
ORDER BY p.goles DESC;

SELECT
    e.nombre AS equipo,
    AVG(p.goles) AS promedio_goles
FROM participaciones p
INNER JOIN equipos e
    ON p.equipo_id = e.id
GROUP BY
    e.id,
    e.nombre;

SELECT
    e.nombre AS equipo,
    SUM(p.asistencias) AS total_asistencias
FROM participaciones p
INNER JOIN equipos e
    ON p.equipo_id = e.id
GROUP BY
    e.id,
    e.nombre
ORDER BY total_asistencias DESC;

SELECT
    j.nombre,
    p.goles
FROM participaciones p
INNER JOIN jugadores j
    ON p.jugador_id = j.id
WHERE p.goles > 10;

SELECT
    e.nombre AS equipo,
    COUNT(*) AS total_jugadores
FROM participaciones p
INNER JOIN equipos e
    ON p.equipo_id = e.id
GROUP BY
    e.id,
    e.nombre;
