-- DQL: Consultas analíticas con relaciones (JOIN) para equipo de streaming
USE db_equipo_streaming;

-- 1. Listado completo de equipos con su respectiva categoría mediante JOIN, ordenados de mayor a menor precio
SELECT e.codigo_equipo, e.nombre_equipo, c.nombre_categoria, e.precio_equipo, e.stock_disponible, e.estado_equipo
FROM equipos_streaming e
JOIN categorias_streaming c ON e.categoria_id = c.id
ORDER BY e.precio_equipo DESC;

-- 2. Filtrar equipos que se encuentren en estado 'disponible' mostrando la categoría asociada y ordenados por stock
SELECT e.codigo_equipo, e.nombre_equipo, c.nombre_categoria, e.precio_equipo, e.stock_disponible, e.estado_equipo
FROM equipos_streaming e
JOIN categorias_streaming c ON e.categoria_id = c.id
WHERE e.estado_equipo = 'disponible'
ORDER BY e.stock_disponible DESC;

-- 3. Agrupar por nombre de categoría para analizar la cantidad de equipos, el precio máximo y el promedio de costo por categoría
SELECT c.nombre_categoria, COUNT(e.id) AS total_equipos, MAX(e.precio_equipo) AS precio_maximo, ROUND(AVG(e.precio_equipo), 2) AS precio_promedio
FROM categorias_streaming c
LEFT JOIN equipos_streaming e ON c.id = e.categoria_id
GROUP BY c.nombre_categoria
ORDER BY total_equipos DESC;

-- 4. Ranking TOP 3 de los equipos de streaming más costosos en inventario con su categoría
SELECT e.codigo_equipo, e.nombre_equipo, c.nombre_categoria, e.precio_equipo, e.stock_disponible, e.estado_equipo
FROM equipos_streaming e
JOIN categorias_streaming c ON e.categoria_id = c.id
ORDER BY e.precio_equipo DESC
LIMIT 3;

-- 5. Resumen financiero global de inventario (Suma total del valor de stock y precio unitario promedio general)
SELECT SUM(e.precio_equipo * e.stock_disponible) AS valor_total_inventario, ROUND(AVG(e.precio_equipo), 2) AS precio_promedio_general
FROM equipos_streaming e;