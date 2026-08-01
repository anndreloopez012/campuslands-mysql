-- DML: Inserción de datos para el menú de comida urbana
USE db_comida_urbana;

INSERT INTO menu_urbano (codigo_producto, nombre_plato, categoria, precio_dolares, calias_calorias, estado) VALUES
('URB-01', 'Burger Doble Cheddar Crujiente', 'Hamburguesas', 10.99, 850, 'disponible'),
('URB-02', 'Salchipapa Callejera Suprema', 'Frituras', 7.50, 920, 'disponible'),
('URB-03', 'Hot Dog Monumental Tocino', 'Perros Calientes', 6.99, 780, 'en_oferta'),
('URB-04', 'Alitas BBQ Picantes (10 pzas)', 'Alitas', 12.50, 1100, 'disponible'),
('URB-05', 'Tacos Urbanos al Pastor', 'Tacos', 9.00, 650, 'disponible'),
('URB-06', 'Wrap de Pollo Crispy', 'Wraps', 8.50, 720, 'agotado'),
('URB-07', 'Papas Rústicas con Queso y Chorizo', 'Frituras', 5.99, 830, 'en_oferta'),
('URB-08', 'Malteada de Oreo y Nutella', 'Bebidas', 4.99, 600, 'descontinuado');