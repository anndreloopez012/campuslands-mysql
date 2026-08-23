USE ejercicio_17_adv;

-- USO DE LEFT JOIN
-- 1.TODOS LOS PRODUCTOS Y SUS VENTAS
SELECT 
pr.id_producto,
pr.nombre AS producto,
cat.nombre AS categoria,
COALESCE(SUM(dp.cantidad), 0.00) AS unidades_vendidas
FROM productos pr 
INNER JOIN categorias cat 
ON pr.id_categoria = cat.id_categoria
LEFT JOIN detalle_pedidos dp 
ON pr.id_producto = dp.id_producto
GROUP BY 
pr.id_producto,
pr.nombre,
cat.nombre
ORDER BY unidades_vendidas DESC, pr.nombre;

-- 2.Clientes con o sin pedidos

SELECT 
c.nombre AS cliente,
c.correo,
COUNT(p.id_pedido) AS cantidad_pedidos
FROM clientes c
LEFT JOIN pedidos p 
 ON c.id_cliente = p.id_cliente
 GROUP BY
 c.id_cliente,
 c.nombre,
 c.correo
 ORDER BY cantidad_pedidos DESC, c.nombre;
 
 -- 3.Categorias y cantidad de productos
 
 SELECT 
  cat.nombre AS categoria,
  COUNT(pr.id_producto) AS cantidad_productos,
  COALESCE(SUM(pr.stock),0.00) AS 'unidades en stock'
  FROM categorias cat 
  LEFT JOIN productos pr 
  ON cat.id_categoria = pr.id_categoria
GROUP BY 
cat.id_categoria, cat.nombre
 ORDER BY cantidad_productos DESC, cat.nombre;
  
-- 4. productos que todavia no se han vendido

SELECT 
pr.id_producto,
pr.nombre AS producto,
cat.nombre AS categoria,
pr.talla,
pr.color,
pr.stock,
pr.precio
FROM productos pr 
INNER JOIN categorias cat 
ON pr.id_categoria= cat.id_categoria
LEFT JOIN detalle_pedidos dp
ON pr.id_producto = dp.id_producto
WHERE dp.id_producto IS NULL
ORDER BY pr.nombre;


  
  
  
 