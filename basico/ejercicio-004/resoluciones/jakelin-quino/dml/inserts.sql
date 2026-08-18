-- INSERT básico
INSERT INTO `ejercicio-004-bas-motos` 
(marca, modelo, año, cilindraje, precio, color, disponible) VALUES 
('Honda', 'CBR500R', 2025, 500, 8500.00, 'rojo', 1),
('Yamaha', 'MT-07', 2024, 700, 7500.00, 'azul', 1),
('Kawasaki', 'Ninja 400', 2025, 400, 6500.00, 'verde', 1);

-- INSERT sin especificar columnas (orden exacto)
INSERT INTO `ejercicio-004-bas-motos` VALUES 
(4, 'Suzuki', 'GSX-8R', 2024, 800, 9200.00, 'negro', 1),
(5, 'BMW', 'F900R', 2025, 900, 10500.00, 'blanco', 0);

-- INSERT con valores por defecto
INSERT INTO `ejercicio-004-bas-motos` 
(marca, modelo, cilindraje, precio) VALUES 
('Ducati', 'Monster', 950, 12000.00);

-- INSERT múltiple
INSERT INTO `ejercicio-004-bas-motos` 
(marca, modelo, año, cilindraje, precio, color) VALUES 
('KTM', 'Duke 390', 2025, 390, 5800.00, 'naranja'),
('Triumph', 'Street Triple', 2024, 765, 9800.00, 'gris'),
('Honda', 'Africa Twin', 2025, 1100, 15000.00, 'blanco');