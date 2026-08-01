-- DQL: Consultas analíticas y reportes de ping pong
USE db_pingpong_avanzado;

-- 1. Listado general de jugadores ordenados por sus puntos de ranking en orden descendente
SELECT id, codigo_jugador, nombre_completo, nivel_categoria, partidos_jugados, partidos_ganados, puntos_ranking, estado
FROM jugadores_pingpong
ORDER BY puntos_ranking DESC;

-- 2. Filtrar únicamente a los jugadores activos y ordenarlos por cantidad de partidos ganados
SELECT codigo_jugador, nombre_completo, nivel_categoria, partidos_ganados, puntos_ranking, estado
FROM jugadores_pingpong
WHERE estado = 'activo'
ORDER BY partidos_ganados DESC;

-- 3. Agrupar por nivel de categoría para ver la cantidad de jugadores y el promedio de puntos del ranking
SELECT nivel_categoria, COUNT(*) AS total_jugadores, ROUND(AVG(puntos_ranking), 2) AS promedio_ranking_categoria
FROM jugadores_pingpong
GROUP BY nivel_categoria
ORDER BY promedio_ranking_categoria DESC;

-- 4. Top 3 de mejores jugadores según sus puntos de ranking (Liderazgo)
SELECT codigo_jugador, nombre_completo, nivel_categoria, puntos_ranking, estado
FROM jugadores_pingpong
ORDER BY puntos_ranking DESC
LIMIT 3;

-- 5. Resumen global de la academia utilizando funciones de agregación
SELECT COUNT(*) AS total_atletas_academia, SUM(partidos_jugados) AS total_partidos_jugados_historico, MAX(puntos_ranking) AS record_maximo_ranking
FROM jugadores_pingpong;