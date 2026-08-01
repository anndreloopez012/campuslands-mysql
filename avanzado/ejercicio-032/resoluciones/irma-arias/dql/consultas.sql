-- DQL: Consultas analíticas y de reportes para ranking battle royale
USE db_ranking_battleroyale;

-- 1. Listado completo de jugadores ordenados de mayor a menor puntaje de ranking
SELECT codigo_jugador, gamertag, nivel_experiencia, puntos_ranking, partidas_jugadas, fecha_registro, estado_jugador
FROM jugadores_battle_royale
ORDER BY puntos_ranking DESC;

-- 2. Filtrar jugadores cuyo estado sea 'activo' o 'leyenda' ordenados por nivel de experiencia
SELECT codigo_jugador, gamertag, nivel_experiencia, puntos_ranking, partidas_jugadas, fecha_registro, estado_jugador
FROM jugadores_battle_royale
WHERE estado_jugador IN ('activo', 'leyenda')
ORDER BY nivel_experiencia DESC;

-- 3. Agrupar por estado del jugador para analizar la cantidad de usuarios, el puntaje máximo y el promedio de partidas jugadas
SELECT estado_jugador, COUNT(*) AS total_jugadores, MAX(puntos_ranking) AS puntaje_maximo, ROUND(AVG(partidas_jugadas), 2) AS promedio_partidas
FROM jugadores_battle_royale
GROUP BY estado_jugador
ORDER BY total_jugadores DESC;

-- 4. Ranking TOP 3 de los mejores jugadores con mayor puntaje en todo el battle royale
SELECT codigo_jugador, gamertag, nivel_experiencia, puntos_ranking, partidas_jugadas, fecha_registro, estado_jugador
FROM jugadores_battle_royale
ORDER BY puntos_ranking DESC
LIMIT 3;

-- 5. Resumen global del ranking (Promedio general de puntos y suma total de partidas jugadas por la comunidad activa)
SELECT ROUND(AVG(puntos_ranking), 2) AS promedio_puntos_global, SUM(partidas_jugadas) AS total_partidas_comunidad
FROM jugadores_battle_royale
WHERE estado_jugador IN ('activo', 'leyenda');