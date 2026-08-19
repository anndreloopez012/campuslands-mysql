USE intermedio_tienda_ropa;

-- Consulta 1: Listar TODAS las categorías y la cantidad de productos que tienen (incluyendo las que tienen 0)
SELECT 
    c.id AS categoria_id,
    c.nombre AS categoria,
    COUNT(p.id) AS total_productos
FROM categorias_017 c
LEFT JOIN productos_017 p ON c.id = p.categoria_id
GROUP BY c.id, c.nombre;

-- Consulta 2: Listar las categorías que NO tienen ningún producto registrado (Filtrado de NULOS)
SELECT 
    c.id,
    c.nombre AS categoria_sin_productos
FROM categorias_017 c
LEFT JOIN productos_017 p ON c.id = p.categoria_id
WHERE p.id IS NULL;

-- Consulta 3: Listar TODOS los productos y sus ventas asociadas (Muestra NULL en productos jamás vendidos)
SELECT 
    p.codigo_sku,
    p.nombre AS producto,
    p.precio,
    v.id AS venta_id,
    v.cantidad,
    v.fecha_venta
FROM productos_017 p
LEFT JOIN detalle_ventas_017 v ON p.id = v.producto_id;

-- Consulta 4: Identificar los productos del inventario que NUNCA han sido vendidos
SELECT 
    p.codigo_sku,
    p.nombre AS producto_sin_ventas,
    p.precio
FROM productos_017 p
LEFT JOIN detalle_ventas_017 v ON p.id = v.producto_id
WHERE v.id IS NULL;

-- Consulta 5: Listar TODOS los clientes registrados y el total acumulado que han comprado
SELECT 
    cl.nombre AS cliente,
    cl.correo,
    IFNULL(SUM(v.monto_total), 0.00) AS total_gastado
FROM clientes_017 cl
LEFT JOIN detalle_ventas_017 v ON cl.id = v.cliente_id
GROUP BY cl.id, cl.nombre, cl.correo;

-- Consulta 6: Obtener la lista de clientes "Inactivos" (Registrados pero que no han realizado ninguna compra)
SELECT 
    cl.id,
    cl.nombre AS cliente_sin_compras,
    cl.correo
FROM clientes_017 cl
LEFT JOIN detalle_ventas_017 v ON cl.id = v.cliente_id
WHERE v.id IS NULL;

-- Consulta 7: Reporte completo de productos con categoría y total de unidades vendidas
SELECT 
    p.nombre AS producto,
    c.nombre AS categoria,
    IFNULL(SUM(v.cantidad), 0) AS total_unidades_vendidas
FROM productos_017 p
INNER JOIN categorias_017 c ON p.categoria_id = c.id
LEFT JOIN detalle_ventas_017 v ON p.id = v.producto_id
GROUP BY p.id, p.nombre, c.nombre;

-- Consulta 8: Conteo general de ventas por cliente incluyendo a los que no tienen compras asociadas
SELECT 
    cl.nombre AS cliente,
    COUNT(v.id) AS total_ordenes_realizadas
FROM clientes_017 cl
LEFT JOIN detalle_ventas_017 v ON cl.id = v.cliente_id
GROUP BY cl.id, cl.nombre
ORDER BY total_ordenes_realizadas DESC;