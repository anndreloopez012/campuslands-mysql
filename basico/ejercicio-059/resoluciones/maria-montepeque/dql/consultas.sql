USE campuslands_mysql;

-- 1. Pedidos ordenados por fecha, con los dias que tardo (o tardara) la entrega
SELECT producto, fecha_pedido, fecha_entrega_estimada,
       DATEDIFF(fecha_entrega_estimada, fecha_pedido) AS dias_de_entrega
FROM pedidos_accesorios_basico
ORDER BY fecha_pedido;

-- 2. Pedidos realizados en enero de 2026
SELECT producto, fecha_pedido, estado
FROM pedidos_accesorios_basico
WHERE fecha_pedido BETWEEN '2026-01-01' AND '2026-01-31'
ORDER BY fecha_pedido;

-- 3. Pedidos por mes (usando YEAR y MONTH para agrupar)
SELECT YEAR(fecha_pedido) AS anio, MONTH(fecha_pedido) AS mes, COUNT(*) AS total_pedidos
FROM pedidos_accesorios_basico
GROUP BY YEAR(fecha_pedido), MONTH(fecha_pedido)
ORDER BY anio, mes;

-- 4. Fecha limite real de entrega, agregando 2 dias extra de margen (DATE_ADD)
SELECT producto, fecha_entrega_estimada,
       DATE_ADD(fecha_entrega_estimada, INTERVAL 2 DAY) AS fecha_limite_con_margen
FROM pedidos_accesorios_basico
WHERE estado IN ('pendiente', 'enviado');

-- 5. Pedidos con el tiempo de entrega estimado mas largo
SELECT producto, DATEDIFF(fecha_entrega_estimada, fecha_pedido) AS dias_de_entrega
FROM pedidos_accesorios_basico
ORDER BY dias_de_entrega DESC
LIMIT 3;

-- 6. Pedidos pendientes o enviados, ordenados por lo cerca que esta su fecha de entrega
SELECT producto, estado, fecha_entrega_estimada
FROM pedidos_accesorios_basico
WHERE estado IN ('pendiente', 'enviado')
ORDER BY fecha_entrega_estimada ASC;
