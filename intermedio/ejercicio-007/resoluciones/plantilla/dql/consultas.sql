

SELECT 
    p.partido_id,
    p.jornada,
    p.fecha_partido,
    el.nombre_equipo AS equipo_local,
    ev.nombre_equipo AS equipo_visitante,
    CONCAT(p.goles_local, ' - ', p.goles_visitante) AS resultado,
    es.nombre_estadio,
    es.ciudad
FROM partidos p
INNER JOIN equipos el ON p.equipo_local_id = el.equipo_id
INNER JOIN equipos ev ON p.equipo_visitante_id = ev.equipo_id
INNER JOIN estadios es ON el.estadio_id = es.estadio_id
ORDER BY p.fecha_partido ASC;

SELECT 
    e.nombre_equipo,
    COUNT(p.partido_id) AS partidos_jugados_local,
    SUM(p.goles_local) AS goles_anotados_local,
    SUM(p.goles_visitante) AS goles_recibidos_local
FROM equipos e
LEFT JOIN partidos p ON e.equipo_id = p.equipo_local_id
GROUP BY e.equipo_id, e.nombre_equipo
ORDER BY goles_anotados_local DESC;

SELECT 
    es.nombre_estadio,
    es.ciudad,
    es.capacidad,
    COUNT(e.equipo_id) AS cantidad_equipos_sede
FROM estadios es
LEFT JOIN equipos e ON es.estadio_id = e.estadio_id
GROUP BY es.estadio_id, es.nombre_estadio, es.ciudad, es.capacidad
ORDER BY es.capacidad DESC;