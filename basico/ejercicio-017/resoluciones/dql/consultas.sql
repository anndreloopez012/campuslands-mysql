USE basico_tienda_ropa;

-- Consulta 1: Listar productos filtrando por tipo de dato ENUM (Talla 'M')
SELECT codigo_sku, nombre, talla, precio 
FROM productos_017 
WHERE talla = 'M';

-- Consulta 2: Productos disponibles filtrados por valor BOOLEAN (TRUE)
SELECT nombre, color, precio 
FROM productos_017 
WHERE en_stock = TRUE;

-- Consulta 3: Formatear y calcular la edad actual de los clientes usando la fecha de nacimiento (DATE)
SELECT 
    nombre, 
    correo, 
    fecha_nacimiento, 
    TIMESTAMPDIFF(YEAR, fecha_nacimiento, CURDATE()) AS edad
FROM clientes_017;

-- Consulta 4: Filtrar ventas realizadas dentro de un rango de fechas (DATETIME)
SELECT * FROM detalle_ventas_017 
WHERE fecha_venta BETWEEN '2026-08-01 00:00:00' AND '2026-08-10 23:59:59';

-- Consulta 5: Formatear la fecha de las ventas a un formato legible
SELECT 
    id AS venta_id,
    monto_total,
    DATE_FORMAT(fecha_venta, '%d/%m/%Y %H:%i hrs') AS fecha_formateada
FROM detalle_ventas_017;

-- Consulta 6: Obtener el producto con el precio (DECIMAL) más alto
SELECT nombre, talla, precio 
FROM productos_017 
ORDER BY precio DESC 
LIMIT 1;

-- Consulta 7: Promedio de precios de prendas por categoría (Agregación sobre DECIMAL)
SELECT 
    c.nombre AS categoria, 
    AVG(p.precio) AS precio_promedio
FROM productos_017 p
JOIN categorias_017 c ON p.categoria_id = c.id
GROUP BY c.id, c.nombre;

-- Consulta 8: Conteo de productos según su estado de stock (BOOLEAN)
SELECT 
    en_stock, 
    COUNT(*) AS total_productos 
FROM productos_017 
GROUP BY en_stock;