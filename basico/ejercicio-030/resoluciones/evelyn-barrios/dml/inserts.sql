-- dml/inserts.sql
-- Inserción de datos de prueba para las tablas de streamers y equipos.

USE streaming_setup;

-- Insertar streamers
INSERT INTO streamers (nombre_usuario, plataforma_principal) VALUES
('EvelynStream', 'Twitch'),
('JuanPlays', 'YouTube'),
('AnaLive', 'Twitch');

-- Insertar equipos asociados a los streamers
INSERT INTO equipos (streamer_id, nombre_equipo, tipo_equipo, marca, precio, estado) VALUES
(1, 'Sony Alpha a6400', 'Cámara', 'Sony', 999.99, 'Usado'),
(1, 'Shure SM7B', 'Micrófono', 'Shure', 399.00, 'Nuevo'),
(1, 'Elgato Key Light', 'Iluminación', 'Elgato', 199.50, 'Usado'),
(2, 'Logitech C920', 'Cámara', 'Logitech', 79.99, 'Usado'),
(2, 'Blue Yeti', 'Micrófono', 'Blue', 129.99, 'En Reparación'),
(2, 'PC Gamer Ryzen 7', 'PC', 'Custom', 2500.00, 'Usado'),
(3, 'Razer Kiyo Pro', 'Cámara', 'Razer', 199.99, 'Nuevo'),
(3, 'GoXLR Mini', 'Consola', 'TC-Helicon', 249.00, 'Usado'),
(3, 'HyperX QuadCast S', 'Micrófono', 'HyperX', 159.99, 'Nuevo');