SELECT 
    j.nombre_jugador,
    j.posicion,
    j.nacionalidad,
    e.nombre_equipo,
    e.ciudad,
    je.numero_camiseta,
    je.temporada
FROM jugadores_futbol j
INNER JOIN jugadores_equipos je
    ON j.jugador_id = je.jugador_id
INNER JOIN equipos_futbol e
    ON je.equipo_id = e.equipo_id
ORDER BY e.nombre_equipo ASC;

SELECT 
    e.nombre_equipo,
    e.ciudad,
    COUNT(je.jugador_id) AS cantidad_jugadores
FROM equipos_futbol e
INNER JOIN jugadores_equipos je
    ON e.equipo_id = je.equipo_id
GROUP BY e.equipo_id, e.nombre_equipo, e.ciudad
ORDER BY cantidad_jugadores DESC;

SELECT 
    j.nombre_jugador,
    j.posicion,
    e.nombre_equipo
FROM jugadores_futbol j
INNER JOIN jugadores_equipos je
    ON j.jugador_id = je.jugador_id
INNER JOIN equipos_futbol e
    ON je.equipo_id = e.equipo_id
WHERE j.posicion = 'Delantero'
ORDER BY j.nombre_jugador ASC;

SELECT 
    e.nombre_equipo,
    j.nombre_jugador,
    j.nacionalidad
FROM equipos_futbol e
INNER JOIN jugadores_equipos je
    ON e.equipo_id = je.equipo_id
INNER JOIN jugadores_futbol j
    ON je.jugador_id = j.jugador_id
WHERE j.nacionalidad = 'Colombia'
ORDER BY e.nombre_equipo ASC;

SELECT 
    e.nombre_equipo,
    e.estadio,
    j.nombre_jugador,
    je.numero_camiseta
FROM equipos_futbol e
INNER JOIN jugadores_equipos je
    ON e.equipo_id = je.equipo_id
INNER JOIN jugadores_futbol j
    ON je.jugador_id = j.jugador_id
WHERE je.numero_camiseta <= 10
ORDER BY je.numero_camiseta ASC;