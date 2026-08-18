SELECT 
    e.nombre_equipo, 
    e.ciudad, 
    es.nombre_estadio, 
    es.capacidad
FROM equipos e
JOIN estadios es ON e.id_equipo = es.id_equipo;

SELECT 
    e.nombre_equipo, 
    r.anio_temporada, 
    r.puntos, 
    r.goles_a_favor, 
    r.goles_en_contra
FROM equipos e
JOIN rendimiento_temporada r ON e.id_equipo = r.id_equipo
WHERE r.anio_temporada = 2025
ORDER BY r.puntos DESC;