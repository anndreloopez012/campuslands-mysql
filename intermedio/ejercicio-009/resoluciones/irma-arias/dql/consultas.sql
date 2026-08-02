USE kickboxing_db;

-- 1. Listar luchadores activos con el nombre de su categoría de peso y límite mediante JOIN
SELECT l.nombre_luchador, c.nombre_categoria, c.peso_limite_kg, l.peleas_ganadas, l.peleas_perdidas, l.estado
FROM luchadores_kickboxing l
JOIN categorias_peso c ON l.id_categoria = c.id_categoria
WHERE l.estado = 'activo'
ORDER BY l.peleas_ganadas DESC;

-- 2. Conteo de luchadores y promedio de peleas ganadas agrupados por categoría de peso
SELECT c.nombre_categoria, COUNT(l.id_luchador) AS total_luchadores, AVG(l.peleas_ganadas) AS promedio_victorias
FROM categorias_peso c
LEFT JOIN luchadores_kickboxing l ON c.id_categoria = l.id_categoria
GROUP BY c.nombre_categoria
ORDER BY total_luchadores DESC;

-- 3. Ranking TOP 3 de los luchadores con mayor cantidad de peleas ganadas en la base de datos
SELECT l.nombre_luchador, c.nombre_categoria, l.peleas_ganadas, l.estado
FROM luchadores_kickboxing l
JOIN categorias_peso c ON l.id_categoria = c.id_categoria
ORDER BY l.peleas_ganadas DESC
LIMIT 3;

-- 4. Filtrar luchadores activos que tengan más de 50 peleas ganadas
SELECT l.nombre_luchador, c.nombre_categoria, l.peleas_ganadas, l.peleas_perdidas
FROM luchadores_kickboxing l
JOIN categorias_peso c ON l.id_categoria = c.id_categoria
WHERE l.estado = 'activo' AND l.peleas_ganadas > 50
ORDER BY l.peleas_ganadas DESC;

-- 5. Promedio de peleas ganadas y perdidas agrupadas por el estado actual del luchador
SELECT estado, COUNT(*) AS cantidad_luchadores, AVG(peleas_ganadas) AS promedio_ganadas, AVG(peleas_perdidas) AS promedio_perdidas
FROM luchadores_kickboxing
GROUP BY estado;
