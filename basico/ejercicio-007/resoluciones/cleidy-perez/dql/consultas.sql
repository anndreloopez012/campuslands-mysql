-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

SELECT estadio FROM equipos_futbol;

SELECT nombre_equipo, fundacion_anio
    FROM equipos_futbol
    ORDER BY nombre_equipo ASC;

