-- basico/ejercicio-010 - evelyn-barrios
-- Inserción de datos de ventas de productos electrónicos
USE campuslands_mysql;

INSERT INTO ventas_electronica (producto, categoria, precio_unitario, cantidad_vendida, fecha_venta) VALUES
('iPhone 14 Pro', 'Smartphones', 1099.00, 50, '2026-07-15'),
('Samsung Galaxy S23', 'Smartphones', 999.50, 45, '2026-07-16'),
('MacBook Air M2', 'Laptops', 1299.00, 30, '2026-07-15'),
('Dell XPS 15', 'Laptops', 1599.99, 25, '2026-07-17'),
('Sony WH-1000XM5', 'Auriculares', 399.00, 100, '2026-07-16'),
('Bose QuietComfort Earbuds II', 'Auriculares', 299.00, 120, '2026-07-18'),
('Logitech MX Keys', 'Teclados', 119.99, 200, '2026-07-15'),
('Razer BlackWidow V4', 'Teclados', 169.99, 80, '2026-07-18'),
('LG UltraGear 27"', 'Monitores', 449.99, 60, '2026-07-17'),
('Samsung Odyssey G9', 'Monitores', 1399.99, 15, '2026-07-18');