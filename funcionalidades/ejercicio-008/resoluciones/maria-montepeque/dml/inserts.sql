-- funcionalidades/ejercicio-008 - maria-montepeque
USE campuslands_mysql;

-- 14 platos en 5 categorias. 'Agua de Pepino y Menta' y 'Flan de Cajeta' quedan
-- a proposito sin ningun pedido (para las subconsultas de platos nunca vendidos).
INSERT INTO platos_menu (nombre, categoria, precio) VALUES
    ('Taco al Pastor', 'Tacos', 3.50),
    ('Taco de Birria', 'Tacos', 4.00),
    ('Taco Vegano de Jackfruit', 'Tacos', 3.75),
    ('Burger Clasica Urbana', 'Hamburguesas', 7.50),
    ('Burger Doble Smash', 'Hamburguesas', 9.25),
    ('Burger BBQ Ahumada', 'Hamburguesas', 8.75),
    ('Bowl Poke de Atun', 'Bowls', 8.00),
    ('Bowl Buddha Vegetal', 'Bowls', 6.50),
    ('Bowl Teriyaki de Pollo', 'Bowls', 7.25),
    ('Limonada de Jamaica', 'Bebidas', 2.25),
    ('Horchata Artesanal', 'Bebidas', 2.50),
    ('Agua de Pepino y Menta', 'Bebidas', 2.00),
    ('Churros con Chocolate', 'Postres', 3.00),
    ('Flan de Cajeta', 'Postres', 3.50);

-- 25 pedidos que cubren 12 de los 14 platos.
INSERT INTO pedidos_urbanos (plato_id, cliente, cantidad, fecha_pedido) VALUES
    (1, 'Carla Mendez', 3, '2026-06-01'),
    (2, 'Carla Mendez', 2, '2026-06-01'),
    (4, 'Diego Paredes', 1, '2026-06-02'),
    (5, 'Diego Paredes', 1, '2026-06-02'),
    (10, 'Diego Paredes', 2, '2026-06-02'),
    (1, 'Fernanda Ruiz', 4, '2026-06-03'),
    (7, 'Fernanda Ruiz', 1, '2026-06-03'),
    (11, 'Fernanda Ruiz', 1, '2026-06-03'),
    (3, 'Hugo Salazar', 2, '2026-06-04'),
    (6, 'Hugo Salazar', 1, '2026-06-04'),
    (9, 'Hugo Salazar', 1, '2026-06-04'),
    (13, 'Hugo Salazar', 2, '2026-06-04'),
    (2, 'Ines Cordova', 2, '2026-06-05'),
    (8, 'Ines Cordova', 1, '2026-06-05'),
    (1, 'Ines Cordova', 1, '2026-06-05'),
    (5, 'Julian Vargas', 2, '2026-06-06'),
    (6, 'Julian Vargas', 1, '2026-06-06'),
    (10, 'Julian Vargas', 3, '2026-06-06'),
    (4, 'Karla Osorio', 1, '2026-06-07'),
    (7, 'Karla Osorio', 2, '2026-06-07'),
    (3, 'Karla Osorio', 1, '2026-06-07'),
    (1, 'Luis Betancur', 5, '2026-06-08'),
    (9, 'Luis Betancur', 1, '2026-06-08'),
    (11, 'Luis Betancur', 2, '2026-06-08'),
    (6, 'Marta Nino', 3, '2026-06-09');
