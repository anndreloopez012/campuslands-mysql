USE campuslands_mysql;

/*=========================================================
  CONSULTA 1: Ranking de goleadores
=========================================================*/
SELECT
    nombre_jugador AS jugador,
    posicion,
    goles
FROM jugadores_futsal
ORDER BY goles DESC
LIMIT 5;

/*=========================================================
  CONSULTA 2: Jugadores activos
=========================================================*/
SELECT
    nombre_jugador AS jugador,
    posicion,
    edad
FROM jugadores_futsal
WHERE estado = 'Activo'
ORDER BY nombre_jugador;

/*=========================================================
  CONSULTA 3: Promedio de goles por posición
=========================================================*/
SELECT
    posicion,
    ROUND(AVG(goles),2) AS promedio_goles
FROM jugadores_futsal
GROUP BY posicion
ORDER BY promedio_goles DESC;

/*=========================================================
  CONSULTA 4: Jugadores con más de 10 goles
=========================================================*/
SELECT
    nombre_jugador AS jugador,
    goles,
    asistencias
FROM jugadores_futsal
WHERE goles > 10
ORDER BY goles DESC;

/*=========================================================
  CONSULTA 5: Total de goles y asistencias de activos
=========================================================*/
SELECT
    COUNT(*) AS total_jugadores_activos,
    SUM(goles) AS total_goles,
    SUM(asistencias) AS total_asistencias
FROM jugadores_futsal
WHERE estado = 'Activo';

/*=========================================================
  CONSULTA 6: Eficiencia ofensiva
=========================================================*/
SELECT
    nombre_jugador AS jugador,
    goles,
    partidos_jugados,
    ROUND(goles / partidos_jugados,2) AS promedio_goles_partido
FROM jugadores_futsal
WHERE partidos_jugados > 0
ORDER BY promedio_goles_partido DESC;