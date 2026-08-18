-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

SELECT 
    p.partida_id,
    p.fecha_partido,
    el.nombre AS equipo_local,
    p.goles_local,
    p.goles_visitante,
    ev.nombre AS equipo_visitante,
    s.nombre AS pabellon,
    s.ciudad
FROM Partidos p
JOIN Equipos el ON p.equipo_local_id = el.equipo_id
JOIN Equipos ev ON p.equipo_visitante_id = ev.equipo_id
JOIN Sedes s ON p.sede_id = s.sede_id;