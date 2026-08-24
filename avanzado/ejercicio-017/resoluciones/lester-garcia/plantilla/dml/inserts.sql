USE ejercicio_17_adv;


INSERT INTO customers (customer_name, phone) VALUES
('Carlos Martinez', '3001234567'),
('Laura Gomez', '3012345678'),
('Andres Ramirez', '3023456789'),
('Sofia Torres', '3034567890'),
('Miguel Herrera', '3045678901'),
('Valentina Ruiz', '3056789012');

INSERT INTO products (product_name, category, size, price, stock
) VALUES
('Basic T-Shirt', 'T-Shirt', 'M', 35000.00, 20),
('Classic Jeans', 'Pants', '32', 85000.00, 15),
('Denim Jacket', 'Jacket', 'L', 120000.00, 10),
('Urban Hoodie', 'Hoodie', 'M', 95000.00, 18),
('Sports Shorts', 'Shorts', 'L', 45000.00, 25),
('Casual Shirt', 'Shirt', 'M', 65000.00, 12);

INSERT INTO orders (customer_id, total_amount, status
) VALUES
(1, 120000.00, 'Completed'),
(2, 85000.00, 'Completed'),
(3, 130000.00, 'Pending'),
(4, 95000.00, 'Completed'),
(5, 100000.00, 'Pending'),
(6, 65000.00, 'Completed');

INSERT INTO order_details (order_id, product_id, quantity, unit_price, subtotal
) VALUES
(1, 1, 1, 35000.00, 35000.00),
(1, 6, 1, 65000.00, 65000.00),
(1, 5, 1, 45000.00, 45000.00),

(2, 2, 1, 85000.00, 85000.00),

(3, 4, 1, 95000.00, 95000.00),
(3, 1, 1, 35000.00, 35000.00),

(4, 4, 1, 95000.00, 95000.00),

(5, 1, 1, 35000.00, 35000.00),
(5, 6, 1, 65000.00, 65000.00),

(6, 6, 1, 65000.00, 65000.00);