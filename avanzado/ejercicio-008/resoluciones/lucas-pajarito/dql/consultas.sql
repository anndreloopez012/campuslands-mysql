USE campuslands_mysql;

/*=========================================================
  CONSULTA 1
  Top goleadores
=========================================================*/
SELECT
    j.nombre_jugador AS jugador,
    e.nombre_equipo AS equipo,
    r.goles
FROM jugadores_fsl j
INNER JOIN rendimiento_jugador_fsl r
    ON j.id_jugador = r.id_jugador
INNER JOIN equipos_fsl e
    ON j.id_equipo = e.id_equipo
ORDER BY r.goles DESC
LIMIT 5;

/*=========================================================
  CONSULTA 2
  Jugadores y sede
=========================================================*/
SELECT
    j.nombre_jugador AS jugador,
    e.nombre_equipo AS equipo,
    s.nombre_sede AS sede
FROM jugadores_fsl j
INNER JOIN equipos_fsl e
    ON j.id_equipo = e.id_equipo
INNER JOIN sedes_fsl s
    ON e.id_sede = s.id_sede
ORDER BY sede, jugador;

/*=========================================================
  CONSULTA 3
  Promedio de goles por posición
=========================================================*/
SELECT
    j.posicion,
    ROUND(AVG(r.goles),2) AS promedio_goles
FROM jugadores_fsl j
INNER JOIN rendimiento_jugador_fsl r
    ON j.id_jugador = r.id_jugador
GROUP BY j.posicion
ORDER BY promedio_goles DESC;

/*=========================================================
  CONSULTA 4
  Goles por equipo
=========================================================*/
SELECT
    e.nombre_equipo AS equipo,
    SUM(r.goles) AS total_goles
FROM equipos_fsl e
INNER JOIN jugadores_fsl j
    ON e.id_equipo = j.id_equipo
INNER JOIN rendimiento_jugador_fsl r
    ON j.id_jugador = r.id_jugador
GROUP BY e.nombre_equipo
ORDER BY total_goles DESC;

/*=========================================================
  CONSULTA 5
  Jugadores con más de 10 goles
=========================================================*/
SELECT
    j.nombre_jugador AS jugador,
    r.goles,
    r.asistencias
FROM jugadores_fsl j
INNER JOIN rendimiento_jugador_fsl r
    ON j.id_jugador = r.id_jugador
WHERE r.goles > 10
ORDER BY r.goles DESC;

/*=========================================================
  CONSULTA 6
  Promedio de goles por partido
=========================================================*/
SELECT
    j.nombre_jugador AS jugador,
    r.goles,
    r.partidos,
    ROUND(r.goles / r.partidos,2) AS promedio_goles_partido
FROM jugadores_fsl j
INNER JOIN rendimiento_jugador_fsl r
    ON j.id_jugador = r.id_jugador
WHERE r.partidos > 0
ORDER BY promedio_goles_partido DESC;