-- Consultas e indicadores verificando la integridad con CHECK.
USE campuslands_mysql;


SELECT nombre, ranking_puntos, edad 
    FROM intermedio_ejercicio_011_jugadores 
    ORDER BY ranking_puntos DESC;

SELECT p.id AS partido_id, j1.nombre AS jugador_1, p.sets_jugador1, p.sets_jugador2, j2.nombre AS jugador_2, p.duracion_minutos 
    FROM intermedio_ejercicio_011_partidos p 
    JOIN intermedio_ejercicio_011_jugadores j1 ON p.jugador1_id = j1.id 
    JOIN intermedio_ejercicio_011_jugadores j2 ON p.jugador2_id = j2.id;

SELECT p.id, j1.nombre AS jugador_1, j2.nombre AS jugador_2, (p.sets_jugador1 + p.sets_jugador2) AS total_sets 
    FROM intermedio_ejercicio_011_partidos p 
    JOIN intermedio_ejercicio_011_jugadores j1 ON p.jugador1_id = j1.id 
    JOIN intermedio_ejercicio_011_jugadores j2 ON p.jugador2_id = j2.id 
    WHERE (p.sets_jugador1 + p.sets_jugador2) = 5;

SELECT j.nombre, ROUND(AVG(t.duracion_minutos), 2) AS promedio_minutos_partido 
    FROM intermedio_ejercicio_011_jugadores j 
    JOIN (
        SELECT jugador1_id AS jugador_id, duracion_minutos 
        FROM intermedio_ejercicio_011_partidos
        UNION ALL
        SELECT jugador2_id AS jugador_id, duracion_minutos 
        FROM intermedio_ejercicio_011_partidos
    ) t ON j.id = t.jugador_id GROUP BY j.id, j.nombre 
    ORDER BY promedio_minutos_partido DESC;

SELECT COUNT(id) AS total_partidos, SUM(CASE WHEN sets_jugador1 >= 0 AND sets_jugador2 >= 0 AND (sets_jugador1 + sets_jugador2) <= 5 THEN 1 ELSE 0 END) AS partidos_cumplen_check 
    FROM intermedio_ejercicio_011_partidos;