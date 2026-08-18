-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

SELECT 
    e.nombre AS equipo,
    e.ciudad,
    j.nombre,
    j.apellido,
    j.dorsal,
    j.posicion
FROM Equipos e
JOIN Jugadores j ON e.equipo_id = j.equipo_id;
