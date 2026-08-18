-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

SELECT
    id,
    nombre,
    posicion,
    estado
FROM jugadores;

SELECT
    nombre,
    goles
FROM jugadores
ORDER BY goles DESC;

SELECT
    nombre,
    posicion
FROM jugadores
WHERE estado='Activo';

SELECT
    AVG(goles) AS promedio_goles
FROM jugadores;

SELECT
    FROM_USER,
    TO_USER
FROM mysql.role_edges;

SHOW GRANTS FOR entrenador_fs;

SHOW GRANTS FOR analista_fs;
