-- Datos de practica. Puedes cambiarlos o agregar mas filas.
-- Datos de práctica. Se pueden modificar o agregar más registros.
USE campuslands_mysql;

INSERT INTO basico_ejercicio_022 (nombre, categoria, puntaje, estado) VALUES
('Alpha 022', 'principal', 72.50, 'activo'),
('Beta 022', 'secundario', 57.00, 'revision'),
('Gamma 022', 'principal', 42.75, 'activo');
-- Insertar productos
INSERT INTO productos (nombre, descripcion, precio, stock, estado) VALUES
('Laptop Gamer X1', 'Potente laptop para juegos con RTX 3080.', 1500.00, 10, 'disponible'),
('Teclado Mecánico RGB', 'Teclado con switches Cherry MX y retroiluminación RGB.', 80.00, 50, 'disponible'),
('Mouse Inalámbrico Gaming', 'Mouse ergonómico con alta precisión.', 50.00, 30, 'disponible'),
('Monitor Curvo 144Hz', 'Monitor de 27 pulgadas con 144Hz de refresco.', 300.00, 15, 'disponible'),
('Auriculares Gaming Pro', 'Auriculares con sonido envolvente 7.1.', 120.00, 25, 'disponible'),
('Webcam Full HD', 'Webcam para streaming y videollamadas.', 40.00, 0, 'agotado'), -- Producto agotado
('Silla Gamer Ergonómica', 'Silla con soporte lumbar y reposabrazos ajustables.', 200.00, 5, 'disponible'),
('Disco Duro SSD 1TB', 'Unidad de estado sólido de alta velocidad.', 90.00, 20, 'disponible'),
('Tarjeta Gráfica RTX 4090', 'La tarjeta gráfica más potente del mercado.', 2000.00, 3, 'disponible');

-- Insertar pedidos
INSERT INTO pedidos (id_producto, cantidad, fecha_pedido, estado_pedido, total_pedido) VALUES
((SELECT id FROM productos WHERE nombre = 'Laptop Gamer X1'), 1, '2024-07-20', 'pendiente', 1500.00),
((SELECT id FROM productos WHERE nombre = 'Teclado Mecánico RGB'), 2, '2024-07-21', 'procesando', 160.00),
((SELECT id FROM productos WHERE nombre = 'Mouse Inalámbrico Gaming'), 1, '2024-07-21', 'enviado', 50.00),
((SELECT id FROM productos WHERE nombre = 'Monitor Curvo 144Hz'), 1, '2024-07-22', 'entregado', 300.00),
((SELECT id FROM productos WHERE nombre = 'Auriculares Gaming Pro'), 1, '2024-07-22', 'pendiente', 120.00),
((SELECT id FROM productos WHERE nombre = 'Webcam Full HD'), 1, '2024-07-23', 'cancelado', 40.00), -- Pedido cancelado por producto agotado
((SELECT id FROM productos WHERE nombre = 'Silla Gamer Ergonómica'), 1, '2024-07-24', 'procesando', 200.00),
((SELECT id FROM productos WHERE nombre = 'Disco Duro SSD 1TB'), 3, '2024-07-25', 'pendiente', 270.00),
((SELECT id FROM productos WHERE nombre = 'Laptop Gamer X1'), 1, '2024-07-25', 'pendiente', 1500.00),
((SELECT id FROM productos WHERE nombre = 'Teclado Mecánico RGB'), 1, '2024-07-26', 'enviado', 80.00);

-- Ejemplos de UPDATE (se pueden ejecutar individualmente o incluir en un script de prueba)
-- UPDATE productos SET stock = 9 WHERE nombre = 'Laptop Gamer X1';
-- UPDATE pedidos SET estado_pedido = 'procesando' WHERE id = 1;
