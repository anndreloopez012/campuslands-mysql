-- DQL: Consultas analíticas y de reportes para torneo esports MOBA
USE db_torneo_moba;

-- 1. Listado completo de equipos ordenados de mayor a menor cantidad de victorias
SELECT codigo_equipo, nombre_equipo, region_competitiva, victorias, derrotas, premio_acumulado, estado_equipo
FROM equipos_moba
ORDER BY victorias DESC;

-- 2. Filtrar equipos que se encuentran activos en la competencia ('en_competencia' o 'clasificado') ordenados por premios
SELECT codigo_equipo, nombre_equipo, region_competitiva, victorias, derrotas, premio_acumulado, estado_equipo
FROM equipos_moba
WHERE estado_equipo IN ('en_competencia', 'clasificado')
ORDER BY premio_acumulado DESC;

-- 3. Agrupar por región competitiva para analizar el total de equipos, las victorias máximas y el promedio de premios obtenidos
SELECT region_competitiva, COUNT(*) AS total_equipos, MAX(victorias) AS max_victorias, ROUND(AVG(premio_acumulado), 2) AS premio_promedio
FROM equipos_moba
GROUP BY region_competitiva
ORDER BY premio_promedio DESC;

-- 4. Ranking TOP 3 de los equipos con mayor acumulado en premios monetarios del torneo
SELECT codigo_equipo, nombre_equipo, region_competitiva, victorias, derrotas, premio_acumulado, estado_equipo
FROM equipos_moba
ORDER BY premio_acumulado DESC
LIMIT 3;

-- 5. Resumen financiero y de desempeño global del torneo (Suma total de premios repartidos y promedio general de victorias)
SELECT SUM(premio_acumulado) AS bolsa_total_premios, ROUND(AVG(victorias), 2) AS promedio_victorias_general
FROM equipos_moba;