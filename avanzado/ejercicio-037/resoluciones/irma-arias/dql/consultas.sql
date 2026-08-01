-- DQL: Consultas analíticas y de reportes utilizando ORDER BY para liga de fútbol
USE db_liga_futbol;

-- 1. Tabla de posiciones oficial: ordenado por puntos de forma descendente y diferencia de goles (goles a favor - goles en contra)
SELECT codigo_equipo, nombre_equipo, partidos_jugados, puntos, goles_a_favor, goles_en_contra, 
       (goles_a_favor - goles_en_contra) AS diferencia_goles, estado_equipo
FROM equipos_liga
ORDER BY puntos DESC, diferencia_goles DESC;

-- 2. Ranking de equipos más goleadores: ordenado por goles a favor de mayor a menor
SELECT codigo_equipo, nombre_equipo, partidos_jugados, goles_a_favor, estado_equipo
FROM equipos_liga
ORDER BY goles_a_favor DESC;

-- 3. Análisis de defensa: ordenado por equipos con menor cantidad de goles en contra (mejor defensa primero)
SELECT codigo_equipo, nombre_equipo, partidos_jugados, goles_en_contra, estado_equipo
FROM equipos_liga
ORDER BY goles_en_contra ASC;

-- 4. TOP 4 clasificados provisionales de la tabla de posiciones (utilizando LIMIT y ORDER BY múltiple)
SELECT codigo_equipo, nombre_equipo, puntos, (goles_a_favor - goles_en_contra) AS diferencia_goles
FROM equipos_liga
ORDER BY puntos DESC, diferencia_goles DESC
LIMIT 4;

-- 5. Reporte general agrupado y ordenado por estado del equipo con métricas globales
SELECT estado_equipo, COUNT(*) AS total_equipos, SUM(puntos) AS puntos_acumulados_estado, ROUND(AVG(goles_a_favor), 2) AS promedio_goles_favor
FROM equipos_liga
GROUP BY estado_equipo
ORDER BY puntos_acumulados_estado DESC;