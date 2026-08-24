USE ejercicio_17_adv;

INSERT INTO clientes ( nombre, correo, telefono
) VALUES
('Laura Gómez', 'laura@email.com', '3001112233'),
('Carlos Méndez', 'carlos@email.com', '3012223344'),
('María Torres', 'maria@email.com', '3023334455'),
('Andrés Castillo', 'andres@email.com', '3034445566'),
('Sofía Morales', 'sofia@email.com', '3045556677'),
('Daniel Herrera', 'daniel@email.com', '3056667788');

INSERT INTO categorias (nombre) VALUES
('Camisetas'),
('Pantalones'),
('Chaquetas'),
('Calzado'),
('Accesorios'),
('Vestidos');

INSERT INTO productos ( nombre, talla, color, precio, stock, id_categoria
) VALUES
('Camiseta Básica', 'M', 'Negro', 45000.00, 20, 1),
('Camiseta Oversize', 'L', 'Blanco', 65000.00, 15, 1),
('Jean Slim', '32', 'Azul', 120000.00, 10, 2),
('Pantalón Cargo', '34', 'Verde', 135000.00, 8, 2),
('Chaqueta Denim', 'M', 'Azul', 180000.00, 6, 3),
('Chaqueta Impermeable', 'L', 'Negro', 210000.00, 5, 3),
('Tenis Urbanos', '40', 'Blanco', 190000.00, 12, 4),
('Gorra Urbana', 'Única', 'Negro', 35000.00, 25, 5),
('Vestido Casual', 'M', 'Rojo', 150000.00, 7, 6),
('Bufanda de Invierno', 'Única', 'Gris', 55000.00, 18, 5);

INSERT INTO pedidos ( id_cliente, fecha_pedido, estado
) VALUES
(1, '2026-08-01', 'Entregado'),
(2, '2026-08-03', 'Enviado'),
(3, '2026-08-05', 'Entregado'),
(1, '2026-08-08', 'Pendiente'),
(4, '2026-08-10', 'Entregado');

INSERT INTO detalle_pedidos (id_pedido, id_producto, cantidad, precio_unitario
) VALUES
(1, 1, 2, 45000.00),
(1, 7, 1, 190000.00),

(2, 3, 1, 120000.00),
(2, 8, 2, 35000.00),

(3, 5, 1, 180000.00),
(3, 9, 1, 150000.00),

(4, 2, 2, 65000.00),

(5, 4, 1, 135000.00),
(5, 7, 1, 190000.00);