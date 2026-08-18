-- basico/ejercicio-007 - evelyn-barrios
-- Consultas para practicar la cláusula ORDER BY con la temática de Liga de Fútbol
USE campuslands_mysql;

-- Consulta 1: Mostrar la tabla de posiciones ordenada por puntos (de mayor a menor).
-- Esta es la consulta principal de cualquier liga.
SELECT
    nombre_equipo,
    puntos,
    partidos_jugados,
    victorias,
    goles_favor,
    goles_contra
FROM tabla_posiciones
ORDER BY puntos DESC;

-- Consulta 2: Listar los equipos más goleadores, ordenados por goles a favor.
-- Útil para análisis ofensivo.
SELECT
    nombre_equipo,
    goles_favor
FROM tabla_posiciones
ORDER BY goles_favor DESC;

-- Consulta 3: Mostrar los equipos con la mejor defensa, ordenados por goles en contra (de menor a mayor).
-- Útil para análisis defensivo.
SELECT
    nombre_equipo,
    goles_contra
FROM tabla_posiciones
ORDER BY goles_contra ASC;

-- Consulta 4: Listar los equipos por orden alfabético.
-- Útil para buscar un equipo específico rápidamente.
SELECT
    nombre_equipo,
    puntos,
    victorias
FROM tabla_posiciones
ORDER BY nombre_equipo ASC;

-- Consulta 5: Mostrar la tabla de posiciones con criterio de desempate (diferencia de gol).
-- Se ordena por puntos y, si hay empate, por la diferencia entre goles a favor y en contra.
SELECT
    nombre_equipo,
    puntos,
    (goles_favor - goles_contra) AS diferencia_de_gol
FROM tabla_posiciones
ORDER BY puntos DESC, diferencia_de_gol DESC;