SELECT
    j.nombre_jugador,
    j.nacionalidad,
    p.nombre_posicion,
    e.nombre_equipo,
    e.ciudad
FROM jugadores_futbol_sala j
INNER JOIN posiciones_futbol_sala p
    ON j.posicion_id = p.posicion_id
INNER JOIN equipos_futbol_sala e
    ON j.equipo_id = e.equipo_id
ORDER BY e.nombre_equipo ASC;

SELECT
    j.nombre_jugador,
    e.nombre_equipo,
    t.nombre_temporada,
    p.goles,
    p.asistencias
FROM participaciones_futbol_sala p
INNER JOIN jugadores_futbol_sala j
    ON p.jugador_id = j.jugador_id
INNER JOIN equipos_futbol_sala e
    ON j.equipo_id = e.equipo_id
INNER JOIN temporadas_futbol_sala t
    ON p.temporada_id = t.temporada_id
WHERE p.goles >= 10
ORDER BY p.goles DESC;

SELECT
    p.nombre_posicion,
    COUNT(j.jugador_id) AS cantidad_jugadores
FROM posiciones_futbol_sala p
LEFT JOIN jugadores_futbol_sala j
    ON p.posicion_id = j.posicion_id
GROUP BY p.posicion_id, p.nombre_posicion
ORDER BY cantidad_jugadores DESC;

SELECT
    t.nombre_temporada,
    SUM(p.goles) AS goles_totales,
    SUM(p.asistencias) AS asistencias_totales
FROM temporadas_futbol_sala t
INNER JOIN participaciones_futbol_sala p
    ON t.temporada_id = p.temporada_id
GROUP BY t.temporada_id, t.nombre_temporada
ORDER BY t.temporada_id ASC;

SELECT
    j.nombre_jugador,
    e.nombre_equipo,
    p.nombre_posicion,
    t.nombre_temporada,
    pf.goles,
    pf.asistencias
FROM participaciones_futbol_sala pf
INNER JOIN jugadores_futbol_sala j
    ON pf.jugador_id = j.jugador_id
INNER JOIN equipos_futbol_sala e
    ON j.equipo_id = e.equipo_id
INNER JOIN posiciones_futbol_sala p
    ON j.posicion_id = p.posicion_id
INNER JOIN temporadas_futbol_sala t
    ON pf.temporada_id = t.temporada_id
WHERE pf.goles > 10
  AND pf.asistencias > 7
ORDER BY pf.goles DESC;