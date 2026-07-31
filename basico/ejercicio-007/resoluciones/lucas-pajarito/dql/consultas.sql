/*=========================================================
  EJERCICIO 007 - ORDER BY
  Tema: Liga de Fútbol
  Archivo: dql/consultas.sql
=========================================================*/

USE campuslands_mysql;

/*=========================================================
CONSULTA 1
Tabla de posiciones ordenada por puntos (mayor a menor)
=========================================================*/

SELECT
    nombre_equipo AS equipo,
    ciudad,
    puntos,
    partidos_ganados,
    goles_favor
FROM liga_futbol
ORDER BY puntos DESC;




/*=========================================================
CONSULTA 2
Equipos con mayor cantidad de partidos ganados
=========================================================*/

SELECT
    nombre_equipo AS equipo,
    entrenador,
    partidos_ganados,
    puntos
FROM liga_futbol
ORDER BY partidos_ganados DESC, puntos DESC;




/*=========================================================
CONSULTA 3
Equipos con mayor cantidad de goles anotados
=========================================================*/

SELECT
    nombre_equipo AS equipo,
    goles_favor,
    goles_contra,
    puntos
FROM liga_futbol
ORDER BY goles_favor DESC;




/*=========================================================
CONSULTA 4
Equipos ordenados alfabéticamente por ciudad
=========================================================*/

SELECT
    ciudad,
    nombre_equipo AS equipo,
    entrenador
FROM liga_futbol
ORDER BY ciudad ASC;




/*=========================================================
CONSULTA 5
Equipos activos ordenados por menor cantidad de derrotas
=========================================================*/

SELECT
    nombre_equipo AS equipo,
    partidos_perdidos,
    puntos,
    estado
FROM liga_futbol
WHERE estado = 'Activo'
ORDER BY partidos_perdidos ASC, puntos DESC;