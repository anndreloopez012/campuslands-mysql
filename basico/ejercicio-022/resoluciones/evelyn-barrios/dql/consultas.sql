-- Consultas base. Completa o reemplaza segun el enunciado.
-- Consultas base. Completar o reemplazar según el enunciado.
USE campuslands_mysql;

SELECT * FROM basico_ejercicio_022;
-- 1. Seleccionar todos los productos disponibles, ordenados por precio de forma ascendente.
SELECT
  id,
  nombre,
  precio,
  stock,
  estado
FROM productos
WHERE
  estado = 'disponible'
ORDER BY
  precio ASC;

SELECT categoria, COUNT(*) AS total_registros, AVG(puntaje) AS promedio
FROM basico_ejercicio_022
GROUP BY categoria
ORDER BY promedio DESC;
-- 2. Contar el número de pedidos por estado.
SELECT
  estado_pedido,
  COUNT(id) AS total_pedidos
FROM pedidos
GROUP BY
  estado_pedido
ORDER BY
  total_pedidos DESC;

-- 3. Encontrar los pedidos que están en estado 'pendiente' y fueron realizados antes de '2024-07-23'.
SELECT p.id AS id_pedido, pr.nombre AS producto, p.cantidad, p.fecha_pedido, p.total_pedido
FROM pedidos AS p
JOIN productos AS pr
  ON p.id_producto = pr.id
WHERE
  p.estado_pedido = 'pendiente' AND p.fecha_pedido < '2024-07-23'
ORDER BY
  p.fecha_pedido ASC;

-- 4. Listar productos con un stock inferior a 10 unidades y que estén disponibles.
SELECT nombre, precio, stock, estado
FROM productos
WHERE
  stock < 10 AND estado = 'disponible'
ORDER BY
  stock ASC;

-- 5. Calcular el ingreso total de los pedidos que han sido 'entregado'.
SELECT
  SUM(total_pedido) AS ingreso_total_entregado
FROM pedidos
WHERE
  estado_pedido = 'entregado';

-- 6. Mostrar todos los pedidos junto con el nombre del producto y su estado actual.
SELECT
  p.id AS id_pedido,
  pr.nombre AS producto,
  p.cantidad,
  p.fecha_pedido,
  p.estado_pedido,
  pr.stock AS stock_actual_producto
FROM pedidos AS p
JOIN productos AS pr
  ON p.id_producto = pr.id
ORDER BY
  p.fecha_pedido DESC;
