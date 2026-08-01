-- DQL: Consultas analíticas y reportes de inventario para la tienda de ropa
USE db_tienda_ropa;

-- 1. Listado general del inventario ordenado por precio unitario de mayor a menor
SELECT id, codigo_prenda, nombre_articulo, categoria, talla, precio_unitario, stock_disponible, fecha_ingreso, estado
FROM inventario_ropa
ORDER BY precio_unitario DESC;

-- 2. Filtrar prendas que están 'en_stock' o 'ultimas_unidades' ordenadas por la fecha de ingreso más reciente
SELECT codigo_prenda, nombre_articulo, categoria, talla, precio_unitario, stock_disponible, fecha_ingreso, estado
FROM inventario_ropa
WHERE estado IN ('en_stock', 'ultimas_unidades')
ORDER BY fecha_ingreso DESC;

-- 3. Agrupar por categoría de ropa para ver la cantidad de artículos y el stock total disponible por categoría
SELECT categoria, COUNT(*) AS total_modelos, SUM(stock_disponible) AS stock_total_categoria
FROM inventario_ropa
GROUP BY categoria
ORDER BY stock_total_categoria DESC;

-- 4. Top 3 de prendas con mayor valor económico en el inventario (Ranking por precio)
SELECT codigo_prenda, nombre_articulo, categoria, precio_unitario, stock_disponible, estado
FROM inventario_ropa
ORDER BY precio_unitario DESC
LIMIT 3;

-- 5. Resumen financiero y de inventario global de la tienda (Valor total estimado del inventario y precio promedio)
SELECT SUM(precio_unitario * stock_disponible) AS valor_total_inventario, ROUND(AVG(precio_unitario), 2) AS precio_promedio_prenda, SUM(stock_disponible) AS total_unidades_almacen
FROM inventario_ropa;