-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

SELECT 
    p.id_pedido,
    p.nombre_cliente,
    m.nombre AS platillo,
    p.cantidad,
    m.precio AS precio_unitario,
    (p.cantidad * m.precio) AS total_pagar,
    p.tipo_servicio,
    p.estado_pedido
FROM pedidos p
JOIN menu m ON p.id_platillo = m.id_platillo
WHERE p.estado_pedido <> 'Entregado'
ORDER BY p.fecha_pedido ASC;
