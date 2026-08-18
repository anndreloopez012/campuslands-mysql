-- Carga de datos para el módulo de autos hiperdeportivos.
USE campuslands_mysql;

INSERT INTO ejercicio_006_hiperdeportivos (marca, modelo, caballos_fuerza, velocidad_maxima_kmh, precio_usd, estado_produccion) VALUES
('Bugatti', 'Chiron Super Sport', 1600, 440.00, 3900000.00, 'activo'),
('Koenigsegg', 'Jesko Absolut', 1600, 480.00, 3000000.00, 'activo'),
('Pagani', 'Huayra BC', 790, 380.00, 3400000.00, 'descontinuado'),
('Hennessey', 'Venom F5', 1817, 437.00, 2100000.00, 'activo'),
('SSC', 'Tuatara', 1750, 455.00, 1900000.00, 'activo'),
('McLaren', 'Speedtail', 1036, 403.00, 2250000.00, 'descontinuado'),
('Rimac', 'Nevera', 1914, 412.00, 2400000.00, 'activo'),
('Aston Martin', 'Valkyrie', 1140, 354.00, 3200000.00, 'activo'),
('Ferrari', 'LaFerrari', 950, 350.00, 1400000.00, 'descontinuado'),
('Porsche', '918 Spyder', 887, 345.00, 845000.00, 'descontinuado');