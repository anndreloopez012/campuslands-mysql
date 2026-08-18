-- Datos de practica: catalogo de un marketplace de accesorios.
USE campuslands_mysql;

INSERT INTO productos_marketplace_intermedio (nombre, categoria, precio, stock, destacado) VALUES
('Collar de Ambar', 'collares', 130.00, 14, TRUE),
('Pulsera de Cuero Trenzado', 'pulseras', 55.00, 0, FALSE),
('Aretes de Plata Larga', 'aretes', 210.00, 7, TRUE),
('Anillo Solitario Zafiro', 'anillos', 320.00, 4, FALSE),
('Bolso Tote de Lona', 'bolsos', 240.00, 0, TRUE),
('Collar Choker Minimalista', 'collares', 95.00, 22, FALSE),
('Pulsera de Perlas', 'pulseras', 48.00, 11, FALSE),
('Aretes de Aro Grandes', 'aretes', 115.00, 0, FALSE),
('Anillo Doble Textura', 'anillos', 190.00, 5, TRUE);
