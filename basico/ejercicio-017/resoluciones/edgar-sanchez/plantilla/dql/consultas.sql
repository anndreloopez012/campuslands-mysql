SELECT 
    p.producto_id,
    p.sku,
    p.nombre_producto,
    pr.nombre_proveedor,
    p.talla,
    p.color,
    p.precio_venta_usd,
    p.stock_disponible,
    p.es_activo
FROM productos_ropa p
INNER JOIN proveedores_ropa pr ON p.proveedor_id = pr.proveedor_id
ORDER BY p.precio_venta_usd DESC;

SELECT 
    v.venta_id,
    v.fecha_hora_venta,
    v.metodo_pago,
    COUNT(d.producto_id) AS total_articulos_diferentes,
    SUM(d.cantidad) AS total_prendas_vendidas,
    v.monto_total_usd
FROM ventas_ropa v
INNER JOIN detalles_venta_ropa d ON v.venta_id = d.venta_id
GROUP BY v.venta_id, v.fecha_hora_venta, v.metodo_pago, v.monto_total_usd
ORDER BY v.fecha_hora_venta DESC;