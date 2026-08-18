SELECT 
    r.repuesto_id,
    r.codigo_sku,
    r.nombre_repuesto,
    c.nombre_categoria,
    r.precio_unitario_usd,
    r.stock_actual
FROM repuestos_moto r
INNER JOIN categorias_repuesto c ON r.categoria_id = c.categoria_id
WHERE r.precio_unitario_usd > (
    SELECT AVG(precio_unitario_usd) 
    FROM repuestos_moto
)
ORDER BY r.precio_unitario_usd DESC;

SELECT 
    m.mecanico_id,
    m.nombre_mecanico,
    m.especialidad,
    (
        SELECT COUNT(ot.orden_id) 
        FROM ordenes_trabajo ot 
        WHERE ot.mecanico_id = m.mecanico_id AND ot.estado_orden = 'Entregada'
    ) AS ordenes_completadas,
    (
        SELECT COALESCE(SUM(ot.horas_trabajadas * m.tarifa_hora_usd), 0.00) 
        FROM ordenes_trabajo ot 
        WHERE ot.mecanico_id = m.mecanico_id AND ot.estado_orden = 'Entregada'
    ) AS total_mano_obra_generado_usd,
    (
        SELECT COALESCE(SUM(ru.cantidad * ru.precio_aplicado_usd), 0.00) 
        FROM ordenes_trabajo ot 
        INNER JOIN repuestos_utilizados_ot ru ON ot.orden_id = ru.orden_id 
        WHERE ot.mecanico_id = m.mecanico_id AND ot.estado_orden = 'Entregada'
    ) AS total_repuestos_facturados_usd
FROM mecanicos m
ORDER BY total_mano_obra_generado_usd DESC;