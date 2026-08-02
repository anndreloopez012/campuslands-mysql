USE mercado_accesorios_db;

-- 1. Filtrar accesorios ingresados a partir del 1 de marzo de 2026 ordenados por fecha
SELECT nombre_accesorio, categoria, precio_usd, fecha_ingreso
FROM accesorios
WHERE fecha_ingreso >= '2026-03-01'
ORDER BY fecha_ingreso DESC;

-- 2. Conteo de accesorios y precio promedio agrupados por categoría
SELECT categoria, COUNT(*) AS total_accesorios, AVG(precio_usd) AS precio_promedio
FROM accesorios
GROUP BY categoria
ORDER BY total_accesorios DESC;

-- 3. Ranking TOP 3 de los accesorios más costosos en inventario
SELECT nombre_accesorio, categoria, precio_usd, estado
FROM accesorios
ORDER BY precio_usd DESC
LIMIT 3;

-- 4. Filtrar accesorios en oferta o disponibles con un stock mayor a 20 unidades
SELECT nombre_accesorio, categoria, stock, estado
FROM accesorios
WHERE estado IN ('disponible', 'en_oferta') AND stock > 20
ORDER BY stock DESC;

-- 5. Valor total del inventario (precio * stock) agrupado por el estado actual del accesorio
SELECT estado, COUNT(*) AS cantidad_items, SUM(precio_usd * stock) AS valor_total_inventario
FROM accesorios
GROUP BY estado;
