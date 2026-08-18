-- Datos de practica. Puedes cambiarlos o agregar mas filas.
USE campuslands_mysql;

INSERT INTO Categorias (categoria_id, nombre_categoria, area_cocina) VALUES
(1, 'Burgers Urbanas', 'Parrilla'),
(2, 'Hot Dogs Gourmet', 'Parrilla'),
(3, 'Tacos de Autor', 'Planacha'),
(4, 'Papás & Snacks', 'Freidoras'),
(5, 'Sandwiches & Wraps', 'Barra Fria'),
(6, 'Bebidas Artesanales', 'Barra Bebidas'),
(7, 'Postres Urbanos', 'Reposteria'),
(8, 'Wings & Strips', 'Freidoras'),
(9, 'Bao Buns', 'Vapor'),
(10, 'Nacho Bowls', 'Planacha');

INSERT INTO Platillos (platillo_id, categoria_id, nombre, precio, es_vegetariano) VALUES
(1, 1, 'Smash Double Bacon', 12.50, FALSE),
(2, 1, 'Truffle Mushroom Burger', 14.00, TRUE),
(3, 2, 'Street Dog Mac&Cheese', 9.50, FALSE),
(4, 3, 'Tacos de Birria Res', 11.00, FALSE),
(5, 3, 'Tacos Al Pastor Vegan', 10.00, TRUE),
(6, 4, 'Loaded Loaded Fries', 8.50, FALSE),
(7, 5, 'Pulled Pork Sandwich', 13.00, FALSE),
(8, 8, 'Wings Spicy Buffalo', 12.00, FALSE),
(9, 9, 'Bao de Pork Belly', 10.50, FALSE),
(10, 10, 'Nacho Bowl Supreme', 9.00, TRUE);