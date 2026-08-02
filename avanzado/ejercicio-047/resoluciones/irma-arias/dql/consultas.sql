USE tienda_ropa_db;

-- 1. Total de prendas y precio promedio agrupados por categoría (solo disponibles)
SELECT categoria, COUNT(*) AS total_prendas, AVG(precio) AS precio_promedio
FROM inventario_ropa
WHERE estado = 'disponible'
GROUP BY categoria
ORDER BY precio_promedio DESC;

-- 2. Ranking TOP 3 de las prendas más costosas en inventario
SELECT nombre_prenda, categoria, precio
FROM inventario_ropa
ORDER BY precio DESC
LIMIT 3;

-- 3. Conteo de prendas según su estado actual en la tienda
SELECT estado, COUNT(*) AS cantidad_prendas
FROM inventario_ropa
GROUP BY estado;

-- 4. Listado de prendas que se encuentran en oferta con stock disponible
SELECT nombre_prenda, talla, precio, stock
FROM inventario_ropa
WHERE estado = 'en_oferta' AND stock > 0
ORDER BY precio ASC;

-- 5. Valor total del inventario por categoría (precio multiplicado por stock)
SELECT categoria, SUM(precio * stock) AS valor_total_inventario
FROM inventario_ropa
GROUP BY categoria
ORDER BY valor_total_inventario DESC;
