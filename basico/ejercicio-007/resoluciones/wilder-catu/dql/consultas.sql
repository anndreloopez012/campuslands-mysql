-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

SELECT * FROM basico_ejercicio_007;

SELECT categoria, COUNT(*) AS total_registros, AVG(puntaje) AS promedio
FROM basico_ejercicio_007
GROUP BY categoria
ORDER BY promedio DESC;
-- =====================================================
-- Consultas utilizando ORDER BY
-- =====================================================

USE campuslands_mysqli;

-- 1. Tabla de posiciones (mayor puntaje)
SELECT
    nombre AS Equipo,
    puntos AS Puntos
FROM equipos
ORDER BY puntos DESC;

-- 2. Equipos ordenados alfabéticamente
SELECT
    nombre,
    ciudad
FROM equipos
ORDER BY nombre ASC;

-- 3. Ranking por diferencia de goles
SELECT
    nombre,
    diferencia_goles AS Diferencia
FROM equipos
ORDER BY diferencia_goles DESC;

-- 4. Entrenadores ordenados por nombre
SELECT
    entrenador,
    nombre AS Equipo
FROM equipos
ORDER BY entrenador ASC;

-- 5. Equipos con más partidos jugados
SELECT
    nombre,
    partidos_jugados
FROM equipos
ORDER BY partidos_jugados DESC, nombre ASC;

-- 6. Equipos activos ordenados por puntos
SELECT
    nombre,
    puntos,
    estado
FROM equipos
WHERE estado = 'Activo'
ORDER BY puntos DESC;