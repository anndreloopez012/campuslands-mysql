-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

SELECT 
    p.id_partido,
    j1.nombre AS jugador_1,
    p.sets_jugador1,
    p.sets_jugador2,
    j2.nombre AS jugador_2,
    p.fecha_partido
FROM partidos_pingpong p
JOIN jugadores_pingpong j1 ON p.id_jugador1 = j1.id_jugador
JOIN jugadores_pingpong j2 ON p.id_jugador2 = j2.id_jugador;
