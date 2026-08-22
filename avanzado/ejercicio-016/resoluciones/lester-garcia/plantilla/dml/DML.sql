USE ejercicio_16_adv;

INSERT INTO customers (customer_name, phone) VALUES
('Carlos Martinez', '3001234567'),
('Laura Gomez', '3012345678'),
('Andres Ramirez', '3023456789'),
('Sofia Torres', '3034567890'),
('Miguel Herrera', '3045678901'),
('Valentina Ruiz', '3056789012');

INSERT INTO products (product_name, category, price, stock) VALUES
('Classic Burger', 'Burger', 18000.00, 20),
('Double Burger', 'Burger', 24000.00, 15),
('Chicken Burger', 'Burger', 21000.00, 18),
('French Fries', 'Side', 9000.00, 30),
('Chicken Wings', 'Side', 16000.00, 25),
('Cola Drink', 'Drink', 5000.00, 40);

INSERT INTO orders (
    customer_id,
    total_amount,
    status
) VALUES
(1, 32000.00, 'Completed'),
(2, 24000.00, 'Completed'),
(3, 30000.00, 'Completed'),
(4, 21000.00, 'Completed'),
(5, 27000.00, 'Completed');

INSERT INTO order_details (order_id, product_id, quantity, unit_price, subtotal
) VALUES
(1, 1, 1, 18000.00, 18000.00),
(1, 4, 1, 9000.00, 9000.00),
(1, 6, 1, 5000.00, 5000.00),

(2, 2, 1, 24000.00, 24000.00),

(3, 3, 1, 21000.00, 21000.00),
(3, 6, 1, 5000.00, 5000.00),
(3, 4, 1, 9000.00, 9000.00),

(4, 3, 1, 21000.00, 21000.00),

(5, 5, 1, 16000.00, 16000.00),
(5, 6, 1, 5000.00, 5000.00),
(5, 4, 1, 9000.00, 9000.00);