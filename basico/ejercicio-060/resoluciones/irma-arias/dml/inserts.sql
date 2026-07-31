USE db_equipo_streaming;

-- Inserción de categorías de equipos
INSERT INTO categorias_equipo (nombre_categoria, descripcion) VALUES
('Audio Profesional', 'Micrófonos, interfaces y accesorios de sonido para transmisión'),
('Iluminación LED', 'Paneles de luz, anillos y barras lumínicas para estudios'),
('Captura de Video', 'Tarjetas capturadoras y cámaras web de alta definición'),
('Periféricos y Control', 'Stream decks, teclados macro y accesorios de control');

-- Inserción de mínimo 8 registros de equipos de streaming relacionados
INSERT INTO equipos_streaming (codigo_serial, nombre_equipo, categoria_id, precio_usd, stock, estado) VALUES
('SER-001', 'Micrófono Condensador HyperX QuadCast', 1, 149.99, 12, 'disponible'),
('SER-002', 'Panel de Luz Key Light LED Elgato', 2, 59.99, 8, 'disponible'),
('SER-003', 'Tarjeta Capturadora 4K Cam Link', 3, 129.50, 5, 'en_uso'),
('SER-004', 'Stream Deck con 15 Teclas LCD', 4, 149.00, 10, 'disponible'),
('SER-005', 'Brazo Mecánico Articulado para Micrófono', 1, 35.00, 20, 'disponible'),
('SER-006', 'Cámara Web Logitech Brio Ultra HD', 3, 199.99, 4, 'mantenimiento'),
('SER-007', 'Anillo de Luz RGB de 18 Pulgadas', 2, 45.00, 15, 'disponible'),
('SER-008', 'Interfaz de Audio XLR Focusrite Scarlett', 1, 169.00, 0, 'retirado');