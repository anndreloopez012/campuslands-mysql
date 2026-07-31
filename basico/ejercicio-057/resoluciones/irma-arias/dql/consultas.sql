USE db_videojuego_accion;

-- Consulta 1: Listar todas las misiones ordenadas por dificultad de mayor a menor (Retos del reino)
SELECT id, nombre_mision, region_mapa, dificultad, recompensa_oro, tipo_mision, estado
FROM misiones_aventura
ORDER BY dificultad DESC;

-- Consulta 2: Resumen agrupado por región del mapa, mostrando cuántas misiones hay por zona y su recompensa promedio
SELECT region_mapa, COUNT(*) AS total_misiones, ROUND(AVG(recompensa_oro), 2) AS recompensa_promedio
FROM misiones_aventura
GROUP BY region_mapa
ORDER BY total_misiones DESC;

-- Consulta 3: Top 3 de misiones con mayor recompensa en oro (Las más lucrativas de la aventura)
SELECT nombre_mision, region_mapa, dificultad, recompensa_oro, estado
FROM misiones_aventura
ORDER BY recompensa_oro DESC
LIMIT 3;

-- Consulta 4: Filtrar misiones cuyo estado sea 'disponible' o 'en_curso' y cuya dificultad sea mayor o igual a 6
SELECT nombre_mision, region_mapa, dificultad, recompensa_oro, tipo_mision, estado
FROM misiones_aventura
WHERE estado IN ('disponible', 'en_curso') AND dificultad >= 6
ORDER BY dificultad ASC;

-- Consulta 5: Resumen global evaluando el total de misiones registradas, la dificultad máxima y la suma total del oro disponible como recompensa
SELECT COUNT(*) AS total_misiones_juego, MAX(dificultad) AS dificultad_maxima, SUM(recompensa_oro) AS oro_total_acumulado
FROM misiones_aventura;