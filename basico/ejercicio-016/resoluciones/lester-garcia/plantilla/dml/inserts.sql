USE ejercicio_16;

INSERT INTO clientes
(nombre, telefono, correo)
VALUES
('Carlos Méndez', '5551-1020', 'carlos.mendez@email.com'),
('Ana López', '5552-2030', 'ana.lopez@email.com'),
('Luis García', '5553-3040', 'luis.garcia@email.com'),
('María Torres', '5554-4050', 'maria.torres@email.com'),
('Pedro Ramírez', '5555-5060', 'pedro.ramirez@email.com');

INSERT INTO categorias
(nombre, descripcion)
VALUES
('Hamburguesas', 'Hamburguesas artesanales con diferentes ingredientes'),
('Perros Calientes', 'Perros calientes preparados con ingredientes urbanos'),
('Pizzas', 'Pizzas individuales con diferentes sabores'),
('Bebidas', 'Bebidas frías para acompañar los productos'),
('Entradas', 'Acompañamientos y productos para compartir');


INSERT INTO productos
(nombre, descripcion, precio, disponible, id_categoria)
VALUES
('Hamburguesa Clasica', 'Carne de res, queso, lechuga, tomate y salsa especial', 25.00, TRUE, 1),
('Perro Especial', 'Salchicha, queso, papas trituradas y salsas', 22.00, TRUE, 2),
('Pizza Pepperoni', 'Pizza individual con queso y pepperoni', 30.00, TRUE, 3),
('Gaseosa Personal', 'Bebida gaseosa de 400 ml', 8.00, TRUE, 4),
('Papas con Queso', 'Papas fritas acompañadas de queso cheddar', 18.00, TRUE, 5);

INSERT INTO pedidos
(id_cliente, fecha_pedido, estado, total)
VALUES
(1, '2026-08-20 12:30:00', 'Entregado', 50.00),
(2, '2026-08-20 13:15:00', 'En preparacion', 52.00),
(3, '2026-08-21 18:20:00', 'Pendiente', 30.00),
(4, '2026-08-21 19:45:00', 'Entregado', 44.00),
(5, '2026-08-22 20:10:00', 'Cancelado', 26.00);

INSERT INTO detalle_pedidos
(id_pedido, id_producto, cantidad, precio_unitario, subtotal)
VALUES
(1, 1, 2, 25.00, 50.00),
(2, 2, 2, 22.00, 44.00),
(2, 4, 1, 8.00, 8.00),
(3, 3, 1, 30.00, 30.00),
(4, 2, 2, 22.00, 44.00);