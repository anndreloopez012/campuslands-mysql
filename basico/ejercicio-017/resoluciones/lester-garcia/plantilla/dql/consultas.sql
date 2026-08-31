USE ejercicio_17;
-- Mostrar productos con precio y stock
SELECT
    nombre AS producto,
    talla,
    color,
    precio,
    stock
FROM productos
ORDER BY precio DESC;

-- Mostrar productos junto con su categoría
SELECT
    p.nombre AS producto,
    c.nombre AS categoria,
    p.precio,
    p.stock
FROM productos p
INNER JOIN categorias c
    ON p.id_categoria = c.id_categoria
WHERE p.disponible = TRUE
ORDER BY c.nombre ASC;

-- Mostrar las ventas realizadas con el nombre del cliente
SELECT
    v.id_venta,
    c.nombre AS cliente,
    v.fecha_venta,
    v.metodo_pago,
    v.total
FROM ventas v
INNER JOIN clientes c
    ON v.id_cliente = c.id_cliente
ORDER BY v.fecha_venta DESC;