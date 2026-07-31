/*=========================================================
  EJERCICIO 007 - NORMALIZACIÓN 2FN
  Tema: Liga de Fútbol
  Archivo: dql/consultas.sql
=========================================================*/

USE campuslands_mysql;

/*=========================================================
CONSULTA 1
Listado completo de equipos con ciudad y entrenador
=========================================================*/

SELECT
    e.nombre_equipo AS equipo,
    c.nombre_ciudad AS ciudad,
    t.nombre_entrenador AS entrenador,
    e.puntos,
    e.estado
FROM equipos_liga_07 e
INNER JOIN ciudades_liga c
    ON e.id_ciudad = c.id_ciudad
INNER JOIN entrenadores_liga t
    ON e.id_entrenador = t.id_entrenador
ORDER BY e.puntos DESC;


/*=========================================================
CONSULTA 2
Top 5 equipos con mayor cantidad de puntos
=========================================================*/

SELECT
    e.nombre_equipo AS equipo,
    c.nombre_ciudad AS ciudad,
    e.puntos,
    e.partidos_ganados
FROM equipos_liga_07 e
INNER JOIN ciudades_liga c
    ON e.id_ciudad = c.id_ciudad
ORDER BY e.puntos DESC
LIMIT 5;


/*=========================================================
CONSULTA 3
Cantidad de equipos registrados por ciudad
=========================================================*/

SELECT
    c.nombre_ciudad AS ciudad,
    COUNT(*) AS total_equipos
FROM equipos_liga_07 e
INNER JOIN ciudades_liga c
    ON e.id_ciudad = c.id_ciudad
GROUP BY c.nombre_ciudad
ORDER BY total_equipos DESC;


/*=========================================================
CONSULTA 4
Promedio de puntos por entrenador
=========================================================*/

SELECT
    t.nombre_entrenador AS entrenador,
    COUNT(*) AS equipos_dirigidos,
    AVG(e.puntos) AS promedio_puntos
FROM equipos_liga_07 e
INNER JOIN entrenadores_liga t
    ON e.id_entrenador = t.id_entrenador
GROUP BY t.nombre_entrenador
ORDER BY promedio_puntos DESC;


/*=========================================================
CONSULTA 5
Equipos activos con más de 80 puntos
=========================================================*/

SELECT
    e.nombre_equipo AS equipo,
    c.nombre_ciudad AS ciudad,
    t.nombre_entrenador AS entrenador,
    e.puntos,
    e.goles_favor
FROM equipos_liga_07 e
INNER JOIN ciudades_liga c
    ON e.id_ciudad = c.id_ciudad
INNER JOIN entrenadores_liga t
    ON e.id_entrenador = t.id_entrenador
WHERE e.estado = 'Activo'
AND e.puntos > 80
ORDER BY e.puntos DESC;