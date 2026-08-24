USE ejercicio_16_adv;

-- TRANSACCIONES
-- REGISTRAR UN NUEVO PEDIDO CORRECTAMENTE

START TRANSACTION;

INSERT INTO orders(customer_id, total_amount, status)VALUES
(6, 42000.00, 'pending');
SET @new_order_id = LAST_INSERT_ID();

INSERT INTO order_details (order_id, product_id, quantity, unit_price, subtotal)VALUES
(@new_order_id, 1, 1, 18000.00, 18000.00),
(@new_order_id, 2, 1, 24000.00, 24000.00);

UPDATE products
SET stock = stock -1
WHERE product_id =1
 AND stock >= 1;
 
UPDATE products
SET stock = - 1
WHERE product_id = 2
  AND stock >=1; 
  
COMMIT ;

ROLLBACK;

SELECT * FROM orders;

-- =====================================================
-- TRANSACCIÓN 2
-- Simular una operación que será cancelada

START TRANSACTION;

INSERT INTO orders (
    customer_id,
    total_amount,
    status
)
VALUES (
    1,
    45000.00,
    'Pending'
);

SET @rollback_order_id = LAST_INSERT_ID();

INSERT INTO order_details (
    order_id,
    product_id,
    quantity,
    unit_price,
    subtotal
)
VALUES
(@rollback_order_id, 2, 1, 24000.00, 24000.00),
(@rollback_order_id, 5, 1, 16000.00, 16000.00),
(@rollback_order_id, 6, 1, 5000.00, 5000.00);

UPDATE products
SET stock = stock - 1
WHERE product_id = 2;

UPDATE products
SET stock = stock - 1
WHERE product_id = 5;

UPDATE products
SET stock = stock - 1
WHERE product_id = 6;

-- Cancelar todas las operaciones anteriores
ROLLBACK;

 SELECT * FROM products;


-- =====================================================
-- TRANSACCIÓN 3
-- Actualizar el estado de un pedido

START TRANSACTION;

UPDATE orders
SET status = 'Completed'
WHERE order_id = 7;

COMMIT;


-- CONSULTAR

SELECT *
FROM orders;