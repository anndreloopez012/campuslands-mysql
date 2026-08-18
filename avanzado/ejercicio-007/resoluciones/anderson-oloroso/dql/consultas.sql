CREATE OR REPLACE VIEW vista_rendimiento_jugadores AS
SELECT
    j.jugador_id,
    j.nombre_jugador,
    j.posicion,
    j.nacionalidad,
    e.nombre_equipo,
    e.ciudad,
    e.estadio,
    j.goles,
    j.asistencias,
    (j.goles + j.asistencias) AS participaciones_ofensivas
FROM jugadores_futbol j
INNER JOIN equipos_futbol e
    ON j.equipo_id = e.equipo_id;

CREATE OR REPLACE VIEW vista_estadisticas_equipos AS
SELECT
    e.equipo_id,
    e.nombre_equipo,
    e.ciudad,
    e.estadio,
    COUNT(j.jugador_id) AS cantidad_jugadores,
    COALESCE(SUM(j.goles), 0) AS goles_totales,
    COALESCE(SUM(j.asistencias), 0) AS asistencias_totales,
    COALESCE(SUM(j.goles + j.asistencias), 0) AS participaciones_ofensivas
FROM equipos_futbol e
LEFT JOIN jugadores_futbol j
    ON e.equipo_id = j.equipo_id
GROUP BY
    e.equipo_id,
    e.nombre_equipo,
    e.ciudad,
    e.estadio;

CREATE OR REPLACE VIEW vista_mejores_delanteros AS
SELECT
    j.nombre_jugador,
    e.nombre_equipo,
    j.goles,
    j.asistencias,
    (j.goles + j.asistencias) AS participaciones_ofensivas
FROM jugadores_futbol j
INNER JOIN equipos_futbol e
    ON j.equipo_id = e.equipo_id
WHERE j.posicion = 'Delantero'
  AND j.goles >= 15;

SELECT * 
FROM vista_rendimiento_jugadores
ORDER BY participaciones_ofensivas DESC;

SELECT *
FROM vista_estadisticas_equipos
ORDER BY goles_totales DESC;

SELECT *
FROM vista_mejores_delanteros
ORDER BY goles DESC;

SELECT
    nombre_equipo,
    ciudad,
    goles_totales,
    asistencias_totales
FROM vista_estadisticas_equipos
WHERE goles_totales > 10
ORDER BY goles_totales DESC;

SELECT
    nombre_jugador,
    nombre_equipo,
    goles,
    asistencias,
    participaciones_ofensivas
FROM vista_rendimiento_jugadores
WHERE participaciones_ofensivas >= 20
ORDER BY participaciones_ofensivas DESC;