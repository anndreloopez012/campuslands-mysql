USE ejercicio_16;
-- CONSULTAS
-- 1.PRODUCTOS DISPONIBLE Y SU CATEGORIA

SELECT 
pr.id_producto,
pr.nombre AS producto,
cat.nombre AS categoria,
pr.disponible
FROM productos pr
INNER JOIN categorias cat 
 ON pr.id_categoria = cat.id_categoria
where disponible = TRUE
ORDER BY cat.nombre DESC;

-- Clientes que han realizado pedidos con estado y total del mismo.

SELECT 
c.id_cliente,
c.nombre AS cliente,
p.id_pedido,
p.estado,
p.total
FROM clientes c
inner join pedidos p 
  ON c.id_cliente = p.id_cliente
ORDER BY total DESC;



 

 

