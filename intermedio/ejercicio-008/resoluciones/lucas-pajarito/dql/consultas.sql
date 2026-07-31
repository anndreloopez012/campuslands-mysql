USE campuslands_mysql;

/*=========================================================
  CONSULTA 1
  Ranking de goleadores
=========================================================*/
SELECT
    j.nombre_jugador AS jugador,
    c.nombre_club AS club,
    e.goles
FROM jugadores_fs j
INNER JOIN estadisticas_jugador_fs e
    ON j.id_jugador = e.id_jugador
INNER JOIN clubes_fs c
    ON j.id_club = c.id_club
ORDER BY e.goles DESC
LIMIT 5;

/*=========================================================
  CONSULTA 2
  Jugadores y ciudad del club
=========================================================*/
SELECT
    j.nombre_jugador AS jugador,
    c.nombre_club AS club,
    ci.nombre_ciudad AS ciudad
FROM jugadores_fs j
INNER JOIN clubes_fs c
    ON j.id_club = c.id_club
INNER JOIN ciudades_fs ci
    ON c.id_ciudad = ci.id_ciudad
ORDER BY ci.nombre_ciudad, jugador;

/*=========================================================
  CONSULTA 3
  Promedio de goles por posición
=========================================================*/
SELECT
    j.posicion,
    ROUND(AVG(e.goles),2) AS promedio_goles
FROM jugadores_fs j
INNER JOIN estadisticas_jugador_fs e
    ON j.id_jugador = e.id_jugador
GROUP BY j.posicion
ORDER BY promedio_goles DESC;

/*=========================================================
  CONSULTA 4
  Clubes con total de goles
=========================================================*/
SELECT
    c.nombre_club AS club,
    SUM(e.goles) AS total_goles
FROM clubes_fs c
INNER JOIN jugadores_fs j
    ON c.id_club = j.id_club
INNER JOIN estadisticas_jugador_fs e
    ON j.id_jugador = e.id_jugador
GROUP BY c.nombre_club
ORDER BY total_goles DESC;

/*=========================================================
  CONSULTA 5
  Jugadores con más de 10 goles
=========================================================*/
SELECT
    j.nombre_jugador AS jugador,
    e.goles,
    e.asistencias
FROM jugadores_fs j
INNER JOIN estadisticas_jugador_fs e
    ON j.id_jugador = e.id_jugador
WHERE e.goles > 10
ORDER BY e.goles DESC;

/*=========================================================
  CONSULTA 6
  Promedio de goles por partido
=========================================================*/
SELECT
    j.nombre_jugador AS jugador,
    e.goles,
    e.partidos,
    ROUND(e.goles / e.partidos,2) AS promedio_goles_partido
FROM jugadores_fs j
INNER JOIN estadisticas_jugador_fs e
    ON j.id_jugador = e.id_jugador
WHERE e.partidos > 0
ORDER BY promedio_goles_partido DESC;