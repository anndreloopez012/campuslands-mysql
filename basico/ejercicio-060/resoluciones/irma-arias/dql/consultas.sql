USE db_equipo_streaming;

-- Consulta 1: Listar todos los equipos haciendo JOIN con su categoría, ordenados por precio de mayor a menor
SELECT e.id, e.codigo_serial, e.nombre_equipo, c.nombre_categoria, e.precio_usd, e.stock, e.estado
FROM equipos_streaming e
INNER JOIN categorias_equipo c ON e.categoria_id = c.id
ORDER BY e.precio_usd DESC;

-- Consulta 2: Resumen agrupado por categoría, mostrando el total de equipos por categoría y su precio promedio
SELECT c.nombre_categoria, COUNT(e.id) AS total_equipos, ROUND(AVG(e.precio_usd), 2) AS precio_promedio
FROM categorias_equipo c
LEFT JOIN equipos_streaming e ON c.id = e.categoria_id
GROUP BY c.nombre_categoria
ORDER BY total_equipos DESC;

-- Consulta 3: Filtrar equipos cuyo estado sea 'disponible' y cuyo precio sea mayor o igual a 50 USD
SELECT e.codigo_serial, e.nombre_equipo, c.nombre_categoria, e.precio_usd, e.stock, e.estado
FROM equipos_streaming e
INNER JOIN categorias_equipo c ON e.categoria_id = c.id
WHERE e.estado = 'disponible' AND e.precio_usd >= 50.00
ORDER BY e.precio_usd ASC;

-- Consulta 4: Top 3 de equipos más caros del estudio de streaming con su respectiva categoría
SELECT e.nombre_equipo, c.nombre_categoria, e.precio_usd, e.estado
FROM equipos_streaming e
INNER JOIN categorias_equipo c ON e.categoria_id = c.id
ORDER BY e.precio_usd DESC
LIMIT 3;

-- Consulta 5: Resumen global evaluando el total de equipos registrados en el sistema, la suma total del inventario (stock) y el valor acumulado en USD
SELECT COUNT(*) AS total_dispositivos, SUM(e.stock) AS stock_total, SUM(e.precio_usd * e.stock) AS valor_total_inventario
FROM equipos_streaming e;