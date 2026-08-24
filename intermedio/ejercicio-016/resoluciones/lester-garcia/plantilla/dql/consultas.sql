USE ejercicio_16_int;

-- consultas con inner join 
-- 1. pedidos con informacion del cliente

SELECT 
 p.id_pedido,
 c.nombre AS cliente,
 c.telefono,
 p.fecha_pedido,
 p.estado
 FROM pedidos p
 INNER JOIN clientes c 
 ON p.id_pedido = c.id_cliente
 ORDER BY p.fecha_pedido;
 
 
-- 2. Detalle completo de los pedidos

SELECT 
p.id_pedido,
c.nombre AS cliente,
pr.nombre AS producto,
cat.nombre AS categoria,
dp.cantidad,
dp.precio_unitario,
COALESCE(dp.cantidad * dp.precio_unitario, 0.00) AS subtotal
    FROM pedidos p 
INNER JOIN clientes c 
    ON p.id_cliente = c.id_cliente
INNER JOIN detalle_pedidos dp 
    ON p.id_pedido = dp.id_pedido
INNER JOIN  productos pr 
    ON  dp.id_pedido = pr.id_producto
INNER JOIN categorias cat
    ON pr.id_categoria = cat.id_categoria
ORDER BY 
p.id_pedido,
pr.nombre;

-- 3. Total de cada pedido

 SELECT 
 p.id_pedido,
 c.nombre AS cliente,
 p.estado,
 IFNULL(SUM(dp.cantidad * dp.precio_unitario), 0.00) AS total_pedido
 FROM pedidos p
 INNER JOIN clientes c 
 ON p.id_cliente = c.id_cliente
 INNER JOIN  detalle_pedidos dp 
  ON p.id_pedido = dp.id_pedido
  GROUP BY
  p.id_pedido,
  c.nombre,
  p.estado
  ORDER BY total_pedido DESC;
  
  -- 4.productos mas vendidos
  
  SELECT 
  pr.nombre AS  producto,
  cat.nombre AS categoria,
  COALESCE(SUM(dp.cantidad), 0.00) AS unidades_vendidas,
  COALESCE(SUM(dp.cantidad * dp.precio_unitario), 0.00) AS ingresos_generados
  FROM  detalle_pedidos dp
  INNER JOIN productos pr 
    ON dp.id_producto = pr.id_producto
  INNER JOIN  categorias cat 
    ON  pr.id_categoria = cat.id_categoria
  INNER JOIN pedidos p 
    ON dp.id_pedido = p.id_pedido
    WHERE p.estado <> 'cancelado'
  GROUP BY 
   pr.id_producto,pr.nombre, cat.nombre
  ORDER BY unidades_vendidas DESC;
  
  
 


