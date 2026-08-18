-- Datos de practica. Puedes cambiarlos o agregar mas filas.
USE campuslands_mysql;

INSERT INTO menu (nombre, categoria, precio, disponible) VALUES
('Smash Burger Doble Queso', 'Burgers', 8.50, TRUE),
('Tacos de Suadero (3 pcs)', 'Tacos', 6.00, TRUE),
('Papas Rústicas con Bacon', 'Papas/Acompañamientos', 4.50, TRUE),
('Limonada Casera Menta', 'Bebidas', 2.50, TRUE),
('Churros Urbano con Nutella', 'Postres', 3.50, FALSE); -- Temporalmente sin stock

INSERT INTO pedidos (id_platillo, nombre_cliente, cantidad, tipo_servicio, estado_pedido) VALUES
(1, 'Carlos M.', 2, 'Para llevar', 'Entregado'),
(4, 'Carlos M.', 2, 'Para llevar', 'Entregado'),
(2, 'Sofía R.', 1, 'Comer aquí', 'En cocina'),
(3, 'Sofía R.', 1, 'Comer aquí', 'En cocina'),
(1, 'David L.', 1, 'Delivery', 'Listo');
