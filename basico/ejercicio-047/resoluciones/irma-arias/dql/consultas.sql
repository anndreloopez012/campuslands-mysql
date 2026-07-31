USE db_tienda_ropa;

-- Consulta 1: Listar prendas que se encuentran disponibles o en oferta ordenadas por precio de mayor a menor
SELECT id, nombre_prenda, categoria, talla, precio, stock, fecha_ingreso, estado
FROM prendas_tienda
WHERE estado IN ('disponible', 'en_oferta')
ORDER BY precio DESC;

-- Consulta 2: Resumen agrupado por categoría de ropa, mostrando la cantidad de prendas y el valor total del inventario (precio * stock)
SELECT categoria, COUNT(*) AS variedad_prendas, SUM(stock) AS stock_total, ROUND(SUM(precio * stock), 2) AS valor_inventario
FROM prendas_tienda
GROUP BY categoria
ORDER BY valor_inventario DESC;

-- Consulta 3: Top 3 de prendas con mayor stock disponible en la tienda (Control de inventario)
SELECT nombre_prenda, categoria, talla, precio, stock, estado
FROM prendas_tienda
ORDER BY stock DESC
LIMIT 3;

-- Consulta 4: Filtrar prendas cuyo precio sea menor a 40.00 y tengan stock mayor a 20 unidades
SELECT nombre_prenda, categoria, talla, precio, stock, estado
FROM prendas_tienda
WHERE precio < 40.00 AND stock > 20
ORDER BY precio ASC;

-- Consulta 5: Resumen global de la tienda evaluando cantidad total de registros, precio promedio y stock global
SELECT COUNT(*) AS total_referencias, ROUND(AVG(precio), 2) AS precio_promedio, SUM(stock) AS stock_global_unidades
FROM prendas_tienda;