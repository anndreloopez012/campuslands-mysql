-- DQL: Consultas analíticas y de reportes para fútbol sala
USE db_futbol_sala;

-- 1. Tabla de posiciones general ordenada por puntos de mayor a menor y goles a favor
SELECT codigo_equipo, nombre_equipo, partidos_jugados, goles_favor, puntos, estado_equipo
FROM equipos_sala
ORDER BY puntos DESC, goles_favor DESC;

-- 2. Filtrar equipos que se encuentran con estado 'activo' ordenados por cantidad de goles a favor
SELECT codigo_equipo, nombre_equipo, partidos_jugados, goles_favor, puntos, estado_equipo
FROM equipos_sala
WHERE estado_equipo = 'activo'
ORDER BY goles_favor DESC;

-- 3. Agrupar por estado de equipo para analizar la cantidad de clubes y el promedio de puntos por categoría
SELECT estado_equipo, COUNT(*) AS total_equipos, SUM(puntos) AS puntos_totales_estado, ROUND(AVG(puntos), 2) AS promedio_puntos
FROM equipos_sala
GROUP BY estado_equipo
ORDER BY total_equipos DESC;

-- 4. Ranking TOP 3 de los equipos con mejor puntaje en la liga de fútbol sala
SELECT codigo_equipo, nombre_equipo, partidos_jugados, goles_favor, puntos, estado_equipo
FROM equipos_sala
ORDER BY puntos DESC
LIMIT 3;

-- 5. Resumen global de la liga (Promedio general de partidos jugados y suma total de goles anotados)
SELECT ROUND(AVG(partidos_jugados), 2) AS promedio_partidos_jugados, SUM(goles_favor) AS total_goles_liga
FROM equipos_sala;