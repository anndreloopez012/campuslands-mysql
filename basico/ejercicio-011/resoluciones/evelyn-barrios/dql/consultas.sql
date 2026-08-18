-- Consultas base. Completa o reemplaza segun el enunciado.
-- basico/ejercicio-011 - evelyn-barrios
-- Práctica de la cláusula HAVING
USE campuslands_mysql;

-- Consulta 1: Encontrar clientes que han realizado más de 1 pedido.
-- Agrupamos por cliente y contamos sus pedidos, luego filtramos los grupos con más de 1 pedido.
SELECT
    cliente_nombre,
    COUNT(id) AS 'total_pedidos'
FROM pedidos_clientes
GROUP BY cliente_nombre
HAVING COUNT(id) > 1;

-- Consulta 2: Mostrar los clientes cuyo gasto total es superior a 200.00.
-- Agrupamos por cliente, sumamos el total de sus compras y filtramos los que superan 200.
SELECT
    cliente_nombre,
    SUM(cantidad * precio_unitario) AS 'gasto_total'
FROM pedidos_clientes
GROUP BY cliente_nombre
HAVING SUM(cantidad * precio_unitario) > 200.00
ORDER BY gasto_total DESC;

-- Consulta 3: Identificar qué productos se han vendido a más de un cliente.
-- Agrupamos por producto y contamos los clientes distintos que lo han comprado.
SELECT
    producto,
    COUNT(DISTINCT cliente_nombre) AS 'numero_de_clientes'
FROM pedidos_clientes
GROUP BY producto
HAVING COUNT(DISTINCT cliente_nombre) > 1;

-- Consulta 4: Listar las fechas en las que se realizaron más de 2 ventas.
-- Agrupamos por fecha y contamos las ventas, luego filtramos.
SELECT
    fecha_pedido,
    COUNT(id) AS 'numero_de_ventas'
FROM pedidos_clientes
GROUP BY fecha_pedido
HAVING COUNT(id) > 2;
