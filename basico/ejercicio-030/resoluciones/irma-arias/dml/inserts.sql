USE db_equipo_streaming;

-- Inserción de categorías
INSERT INTO categorias_equipo (nombre_categoria, descripcion) VALUES
('Micrófonos', 'Equipos de captura de audio profesional para directos'),
('Cámaras', 'Dispositivos de video y webcams de alta definición'),
('Iluminación', 'Paneles LED y aros de luz para streaming'),
('Capturadoras', 'Tarjetas para transmitir desde consolas o PC secundarias');

-- Inserción de mínimo 8 equipos de streaming relacionados
INSERT INTO equipos_streaming (nombre_equipo, categoria_id, precio, stock, estado, fecha_adquisicion) VALUES
('Micrófono HyperX QuadCast', 1, 139.99, 15, 'disponible', '2026-03-10'),
('Logitech C920 HD Pro Webcam', 2, 69.99, 25, 'disponible', '2026-01-15'),
('Elgato Key Light Air', 3, 129.50, 10, 'disponible', '2026-04-05'),
('Elgato Game Capture HD60 X', 4, 199.99, 5, 'agotado', '2025-12-01'),
('Shure SM7B Studio Microphone', 1, 399.00, 4, 'disponible', '2026-05-20'),
('Sony Alpha ZV-E10 Cámara Mirrorless', 2, 699.99, 3, 'mantenimiento', '2025-11-10'),
('Anillo de Luz Neewer 18"', 3, 45.99, 30, 'disponible', '2026-02-14'),
('Rode PodMic Dynamic Podcasting Mic', 1, 99.00, 12, 'agotado', '2026-06-01');