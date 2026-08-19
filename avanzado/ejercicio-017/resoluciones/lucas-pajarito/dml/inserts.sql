USE avanzado_tienda_ropa;

-- Carga de Categorías
INSERT INTO categorias_017 (nombre) VALUES
('Camisas y Camisetas'),
('Pantalones y Jeans'),
('Chaquetería y Abrigos'),
('Calzado Urbano'),
('Accesorios');

-- Carga de Productos con Control de Inventario
INSERT INTO productos_017 (codigo_sku, nombre, talla, color, precio, stock, categoria_id) VALUES
('TSH-BLK-M', 'Camiseta Oversize Negra', 'M', 'Negro', 125.00, 15, 1),
('JEA-BLU-32', 'Jean Slim Fit Azul', 'L', 'Azul Mezclilla', 299.99, 10, 2),
('CHQ-LEAT-L', 'Chaqueta de Cuero Sintético', 'L', 'Café', 550.50, 5, 3),
('ZAP-URB-42', 'Tenis Urbanos Blancos', 'XL', 'Blanco', 420.00, 0, 4),
('ACC-GOR-UNI', 'Gorra Urbana Ajustable', 'S', 'Verde Olivo', 85.00, 25, 5),
('CAM-DEF-S', 'Camisa Manga Larga Formal', 'S', 'Blanco', 195.00, 8, 1);

-- Carga de Clientes
INSERT INTO clientes_017 (nombre, correo, fecha_nacimiento) VALUES
('Lucas Pajarito', 'lucas.pajarito@email.com', '1998-05-14'),
('Mariana Estrada', 'mariana.estrada@email.com', '2001-11-20'),
('Mateo Morales', 'mateo.morales@email.com', '1995-03-08'),
('Sofia Ruiz', 'sofia.ruiz@email.com', '2003-08-30');