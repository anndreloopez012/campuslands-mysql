USE db_restaurante_urbano;

-- Inserción de mínimo 8 registros variados de platillos de comida urbana
INSERT INTO platillos_urbanos (nombre_platillo, categoria, precio, calorias, disponible_delivery, estado) VALUES
('Burger Monster Doble', 'Hamburguesa', 12.99, 1150, TRUE, 'disponible'),
('Salchipapa Callejera Suprema', 'Salchipapa', 8.50, 980, TRUE, 'disponible'),
('Hot-Dog Arrollado con Tocino', 'Hot-Dog', 6.00, 720, TRUE, 'disponible'),
('Tacos Urbanos al Pastor (x4)', 'Tacos', 9.25, 650, TRUE, 'disponible'),
('Alitas BBQ Picantes (10 pzas)', 'Alitas', 11.00, 890, TRUE, 'agotado'),
('Burguesita Smash Crunch', 'Hamburguesa', 10.50, 850, TRUE, 'disponible'),
('Burrito Gigante de Carnitas', 'Burrito', 10.00, 950, FALSE, 'fuera_temporada'),
('Papas Rústicas con Cheddar y Tocino', 'Complemento', 5.50, 600, TRUE, 'disponible');