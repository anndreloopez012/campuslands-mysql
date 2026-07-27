-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

SELECT * FROM InventarioPersonaje;

SELECT 
    j.nombre_usuario,
    p.nombre AS nombre_personaje,
    p.clase,
    p.nivel
FROM Jugadores j
JOIN Personajes p ON j.jugador_id = p.jugador_id;
