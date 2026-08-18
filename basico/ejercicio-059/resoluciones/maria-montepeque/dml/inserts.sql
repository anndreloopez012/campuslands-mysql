-- Datos de practica: pedidos de un marketplace de accesorios.
USE campuslands_mysql;

INSERT INTO pedidos_accesorios_basico (producto, categoria, precio, fecha_pedido, fecha_entrega_estimada, estado) VALUES
('Collar de Ambar', 'collares', 130.00, '2026-01-05', '2026-01-10', 'entregado'),
('Pulsera de Cuero Trenzado', 'pulseras', 55.00, '2026-01-12', '2026-01-16', 'entregado'),
('Aretes de Plata Larga', 'aretes', 210.00, '2026-01-20', '2026-01-27', 'enviado'),
('Anillo Solitario Zafiro', 'anillos', 320.00, '2026-02-01', '2026-02-06', 'pendiente'),
('Bolso Tote de Lona', 'bolsos', 240.00, '2026-02-08', '2026-02-18', 'enviado'),
('Collar Choker Minimalista', 'collares', 95.00, '2026-02-15', '2026-02-19', 'entregado'),
('Pulsera de Perlas', 'pulseras', 48.00, '2026-02-20', '2026-02-24', 'cancelado'),
('Aretes de Aro Grandes', 'aretes', 115.00, '2026-03-01', '2026-03-06', 'pendiente'),
('Anillo Doble Textura', 'anillos', 190.00, '2026-03-05', '2026-03-12', 'enviado');
