-- Datos de practica. Puedes cambiarlos o agregar mas filas.
USE campuslands_mysql;

INSERT INTO Platillos (platillo_id, nombre, precio, stock) VALUES
(1, 'Smash Double Bacon', 12.50, 50),
(2, 'Truffle Mushroom Burger', 14.00, 30),
(3, 'Street Dog Mac&Cheese', 9.50, 40),
(4, 'Tacos de Birria Res', 11.00, 60),
(5, 'Tacos Al Pastor Vegan', 10.00, 25),
(6, 'Loaded Fries', 8.50, 80),
(7, 'Pulled Pork Sandwich', 13.00, 35),
(8, 'Wings Spicy Buffalo', 12.00, 45),
(9, 'Bao de Pork Belly', 10.50, 20),
(10, 'Nacho Bowl Supreme', 9.00, 50);

INSERT INTO Ordenes (orden_id, platillo_id, cantidad, total, fecha_orden) VALUES
(1, 1, 2, 25.00, '2026-07-27 12:00:00'),
(2, 3, 1, 9.50, '2026-07-27 12:05:00'),
(3, 4, 3, 33.00, '2026-07-27 12:10:00'),
(4, 6, 2, 17.00, '2026-07-27 12:15:00'),
(5, 8, 1, 12.00, '2026-07-27 12:20:00'),
(6, 2, 2, 28.00, '2026-07-27 12:25:00'),
(7, 5, 1, 10.00, '2026-07-27 12:30:00'),
(8, 7, 2, 26.00, '2026-07-27 12:35:00'),
(9, 9, 3, 31.50, '2026-07-27 12:40:00'),
(10, 10, 1, 9.00, '2026-07-27 12:45:00');