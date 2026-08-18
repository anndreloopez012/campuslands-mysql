-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

SELECT * FROM Jugadores;

SELECT 
    p.partida_id IF NULL THEN p.partido_id END AS partido_id,
    j1.nombre AS jugador_1,
    p.sets_jugador1,
    p.sets_jugador2,
    j2.nombre AS jugador_2,
    CASE 
        WHEN p.sets_jugador1 > p.sets_jugador2 THEN j1.nombre 
        ELSE j2.nombre 
    END AS ganador,
    p.duracion_minutos
FROM Partidos p
JOIN Jugadores j1 ON p.jugador1_id = j1.jugador_id
JOIN Jugadores j2 ON p.jugador2_id = j2.jugador_id;