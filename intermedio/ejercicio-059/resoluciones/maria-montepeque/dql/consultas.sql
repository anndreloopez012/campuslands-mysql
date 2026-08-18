USE campuslands_mysql;

-- 1. Productos disponibles para vender (vista con stock > 0)
SELECT * FROM vw_productos_marketplace_disponibles_intermedio
ORDER BY nombre;

-- 2. Productos destacados para la vitrina principal
SELECT * FROM vw_productos_marketplace_destacados_intermedio
ORDER BY precio DESC;

-- 3. Catalogo publico completo, ordenado por precio
SELECT * FROM vw_catalogo_marketplace_publico_intermedio
ORDER BY precio DESC;

-- 4. Productos destacados que ademas tienen stock disponible
SELECT d.id_producto, d.nombre, d.categoria, d.precio, d.stock
FROM vw_productos_marketplace_disponibles_intermedio d
INNER JOIN vw_productos_marketplace_destacados_intermedio dest ON dest.id_producto = d.id_producto;

-- 5. Precio promedio del catalogo publico, por categoria
SELECT categoria, COUNT(*) AS total_productos, AVG(precio) AS precio_promedio
FROM vw_catalogo_marketplace_publico_intermedio
GROUP BY categoria
ORDER BY precio_promedio DESC;

-- 6. La vista publica no expone el stock: intentar seleccionarlo falla
-- (se documenta como comentario, no se ejecuta para no romper el script)
--   SELECT stock FROM vw_catalogo_marketplace_publico_intermedio;
--   -> ERROR 1054 (42S22): Unknown column 'stock' in 'field list'
SELECT * FROM vw_catalogo_marketplace_publico_intermedio LIMIT 1;
