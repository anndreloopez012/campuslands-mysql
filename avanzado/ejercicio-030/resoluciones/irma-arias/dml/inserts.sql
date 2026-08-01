-- DML: Inserción de datos relacionales para equipo de streaming
USE db_equipo_streaming;

-- Insertar categorías (Entidad relacionada)
INSERT INTO categorias_streaming (nombre_categoria, descripcion) VALUES
('Audio Profesional',	'Microfonos, interfaces y accesorios de captura de sonido'),
('Iluminacion',			'Luces LED, paneles y aros de luz para transmisiones'),
('Captura y Video',		'Camaras DSLR, capturadoras de video y webcams'),
('Perifericos',			'Teclados, mouse y soportes para creadores de contenido');

-- Insertar equipos de streaming (Entidad principal con llave foránea)
INSERT INTO equipos_streaming (codigo_equipo, nombre_equipo, categoria_id, precio_equipo, stock_disponible, estado_equipo) VALUES
('STR-01', 'Microfono Condensador HyperX QuadCast', 1, 150.00, 12, 'disponible'),
('STR-02', 'Panel de Luz LED Elgato Key Light', 2, 200.00, 8, 'disponible'),
('STR-03', 'Tarjeta Capturadora Elgato Cam Link 4K', 3, 130.50, 5, 'en_uso'),
('STR-04', 'Webcam Logitech Brio 4K Ultra HD', 3, 199.99, 15, 'disponible'),
('STR-05', 'Brazo Mecanico para Microfono Rode PSA1', 1, 99.00, 7, 'mantenimiento'),
('STR-06', 'Aro de Luz Ring Light 18 Pulgadas', 2, 65.00, 20, 'disponible'),
('STR-07', 'Interfaz de Audio Focusrite Scarlett Solo', 1, 120.00, 4, 'en_uso'),
('STR-08', 'Stream Deck MK.2 Elgato con 15 Teclas', 4, 150.00, 10, 'disponible');