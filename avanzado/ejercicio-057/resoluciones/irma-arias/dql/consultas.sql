USE accion_aventura_db;

-- 1. Filtrar misiones completadas ordenadas por puntuación de honor de forma descendente
SELECT nombre_mision, region_mapa, puntuacion_honor, recompensa_oro
FROM misiones_aventura
WHERE estado = 'completada'
ORDER BY puntuacion_honor DESC;

-- 2. Conteo de misiones y recompensa promedio agrupadas por región del mapa
SELECT region_mapa, COUNT(*) AS total_misiones, AVG(recompensa_oro) AS recompensa_promedio
FROM misiones_aventura
GROUP BY region_mapa
ORDER BY recompensa_promedio DESC;

-- 3. Ranking TOP 3 de las misiones con mayor recompensa en oro
SELECT nombre_mision, region_mapa, recompensa_oro, estado
FROM misiones_aventura
ORDER BY recompensa_oro DESC
LIMIT 3;

-- 4. Filtrar misiones con nivel de dificultad mayor o igual a 5 y que no estén bloqueadas
SELECT nombre_mision, region_mapa, nivel_dificultad, estado
FROM misiones_aventura
WHERE nivel_dificultad >= 5 AND estado != 'bloqueada'
ORDER BY nivel_dificultad DESC;

-- 5. Inversión total en oro (suma de recompensas) agrupada por el estado actual de la misión
SELECT estado, COUNT(*) AS cantidad_misiones, SUM(recompensa_oro) AS oro_total_recompensas
FROM misiones_aventura
GROUP BY estado;
