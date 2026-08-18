-- Datos de practica: ofertas relampago de un marketplace de accesorios.
-- Las fechas se calculan relativas a NOW() a proposito: este ejercicio
-- es sobre automatizacion basada en tiempo, asi que interesa que
-- algunas ofertas ya esten vencidas sin importar cuando se ejecute
-- este script.
USE campuslands_mysql;

INSERT INTO ofertas_marketplace_avanzado (producto, categoria, precio_original, precio_oferta, fecha_inicio, fecha_fin, estado) VALUES
('Collar de Ambar', 'collares', 130.00, 90.00, DATE_SUB(NOW(), INTERVAL 30 DAY), DATE_SUB(NOW(), INTERVAL 5 DAY), 'programada'),
('Pulsera de Cuero Trenzado', 'pulseras', 55.00, 38.00, DATE_SUB(NOW(), INTERVAL 20 DAY), DATE_SUB(NOW(), INTERVAL 2 DAY), 'activa'),
('Aretes de Plata Larga', 'aretes', 210.00, 160.00, DATE_SUB(NOW(), INTERVAL 10 DAY), DATE_ADD(NOW(), INTERVAL 5 DAY), 'activa'),
('Anillo Solitario Zafiro', 'anillos', 320.00, 240.00, DATE_SUB(NOW(), INTERVAL 5 DAY), DATE_ADD(NOW(), INTERVAL 10 DAY), 'activa'),
('Bolso Tote de Lona', 'bolsos', 240.00, 175.00, DATE_ADD(NOW(), INTERVAL 2 DAY), DATE_ADD(NOW(), INTERVAL 15 DAY), 'programada'),
('Collar Choker Minimalista', 'collares', 95.00, 68.00, DATE_SUB(NOW(), INTERVAL 15 DAY), DATE_SUB(NOW(), INTERVAL 1 DAY), 'activa'),
('Pulsera de Perlas', 'pulseras', 48.00, 32.00, DATE_ADD(NOW(), INTERVAL 1 DAY), DATE_ADD(NOW(), INTERVAL 8 DAY), 'programada'),
('Aretes de Aro Grandes', 'aretes', 115.00, 88.00, DATE_SUB(NOW(), INTERVAL 8 DAY), DATE_ADD(NOW(), INTERVAL 3 DAY), 'activa');
