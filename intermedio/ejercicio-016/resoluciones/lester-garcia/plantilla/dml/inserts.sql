USE ejercicio_16_int;

INSERT INTO clientes (nombre,telefono,correo
) VALUES
('Carlos Méndez', '3001112233', 'carlos@email.com'),
('Laura Gómez', '3012223344', 'laura@email.com'),
('Andrés Castillo', '3023334455', 'andres@email.com'),
('María Torres', '3034445566', 'maria@email.com'),
('Daniel Herrera', '3045556677', 'daniel@email.com'),
('Sofía Morales', '3056667788', 'sofia@email.com');

INSERT INTO categorias (nombre) VALUES
('Hamburguesas'),
('Perros Calientes'),
('Salchipapas'),
('Combos'),
('Bebidas'),
('Postres');

INSERT INTO productos ( nombre, precio, id_categoria
) VALUES
('Hamburguesa Clásica', 18000.00, 1),
('Hamburguesa BBQ', 23000.00, 1),
('Perro Especial', 16000.00, 2),
('Salchipapa Mixta', 20000.00, 3),
('Combo Hamburguesa BBQ', 29000.00, 4),
('Gaseosa 400ml', 5000.00, 5),
('Malteada de Chocolate', 9000.00, 5),
('Brownie con Helado', 12000.00, 6),
('Combo Perro Especial', 22000.00, 4),
('Salchipapa Familiar', 32000.00, 3);

INSERT INTO pedidos ( id_cliente, fecha_pedido, estado
) VALUES
(1, '2026-08-01 12:30:00', 'Entregado'),
(2, '2026-08-02 13:15:00', 'Entregado'),
(3, '2026-08-03 19:20:00', 'Preparando'),
(4, '2026-08-04 20:10:00', 'Entregado'),
(5, '2026-08-05 18:45:00', 'Pendiente'),
(6, '2026-08-06 21:00:00', 'Entregado');

INSERT INTO detalle_pedidos (id_pedido, id_producto, cantidad, precio_unitario
) VALUES
(1, 1, 2, 18000.00),
(1, 6, 2, 5000.00),

(2, 5, 1, 29000.00),
(2, 8, 1, 12000.00),

(3, 4, 1, 20000.00),
(3, 7, 2, 9000.00),

(4, 2, 1, 23000.00),
(4, 6, 1, 5000.00),

(5, 9, 2, 22000.00),
(5, 6, 2, 5000.00),

(6, 10, 1, 32000.00),
(6, 8, 2, 12000.00);