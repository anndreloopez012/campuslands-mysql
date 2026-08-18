-- dml/inserts.sql
-- Inserción de datos de prueba para la tabla de ventas.

USE marketplace_accesorios;

INSERT INTO ventas (producto_nombre, categoria, precio_unitario, cantidad, fecha_venta, cliente_email) VALUES
('Anillo de Plata Solitario', 'Anillos', 49.99, 2, '2025-05-10', 'cliente1@example.com'),
('Reloj Clásico de Cuero', 'Relojes', 120.00, 1, '2025-05-12', 'cliente2@example.com'),
('Pulsera de Cuentas', 'Pulseras', 19.50, 5, '2025-05-20', 'cliente3@example.com'),
('Collar de Perlas', 'Collares', 85.00, 1, '2025-06-01', 'cliente1@example.com'),
('Anillo de Oro con Gema', 'Anillos', 250.00, 1, '2025-06-05', 'cliente4@example.com'),
('Reloj Deportivo Digital', 'Relojes', 75.80, 1, '2025-06-15', 'cliente2@example.com'),
('Pulsera de Plata', 'Pulseras', 35.00, 3, '2025-07-02', 'cliente5@example.com'),
('Collar con Dije de Corazón', 'Collares', 45.50, 2, '2025-07-03', 'cliente3@example.com');