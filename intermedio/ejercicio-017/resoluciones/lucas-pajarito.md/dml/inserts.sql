USE intermedio_tienda_ropa;

-- Carga de Categorías (Incluye categorías sin productos asignados para probar LEFT JOIN)
INSERT INTO categorias_017 (nombre) VALUES
('Camisas y Camisetas'),
('Pantalones y Jeans'),
('Chaquetería y Abrigos'),
('Calzado Urbano'),
('Accesorios'),
('Trajes de Baño'),
('Ropa Interior');

-- Carga de Productos (Algunos productos no tendrán ventas registradas)
INSERT INTO productos_017 (codigo_sku, nombre, talla, color, precio, en_stock, categoria_id) VALUES
('TSH-BLK-M', 'Camiseta Oversize Negra', 'M', 'Negro', 125.00, TRUE, 1),
('JEA-BLU-32', 'Jean Slim Fit Azul', 'L', 'Azul Mezclilla', 299.99, TRUE, 2),
('CHQ-LEAT-L', 'Chaqueta de Cuero Sintético', 'L', 'Café', 550.50, TRUE, 3),
('ZAP-URB-42', 'Tenis Urbanos Blancos', 'XL', 'Blanco', 420.00, FALSE, 4),
('ACC-GOR-UNI', 'Gorra Urbana Ajustable', 'S', 'Verde Olivo', 85.00, TRUE, 5),
('CAM-DEF-S', 'Camisa Manga Larga Formal', 'S', 'Blanco', 195.00, TRUE, 1),
('PAN-JOG-M', 'Pantalón Jogger Urbano', 'M', 'Gris', 210.00, TRUE, 2),
('CHQ-WND-S', 'Rompevientos Ligero', 'S', 'Negro', 340.00, FALSE, 3);

-- Carga de Clientes (Incluye clientes registrados que aún no han comprado)
INSERT INTO clientes_017 (nombre, correo, fecha_nacimiento) VALUES
('Lucas Pajarito', 'lucas.pajarito@email.com', '1998-05-14'),
('Mariana Estrada', 'mariana.estrada@email.com', '2001-11-20'),
('Mateo Morales', 'mateo.morales@email.com', '1995-03-08'),
('Sofia Ruiz', 'sofia.ruiz@email.com', '2003-08-30'),
('Gabriel Estrada', 'gabriel.estrada@email.com', '1999-12-10'),
('Valeria Ortiz', 'valeria.ortiz@email.com', '2002-04-25');

-- Carga de Ventas (Solo vincula a algunos productos y clientes)
INSERT INTO detalle_ventas_017 (producto_id, cliente_id, cantidad, monto_total, fecha_venta) VALUES
(1, 1, 2, 250.00, '2026-08-01 10:30:00'),
(2, 2, 1, 299.99, '2026-08-05 14:15:00'),
(3, 3, 1, 550.50, '2026-08-10 16:45:00'),
(1, 4, 1, 125.00, '2026-08-12 11:20:00');