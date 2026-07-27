-- Datos de practica. Puedes cambiarlos o agregar mas filas.
USE campuslands_mysql;

INSERT INTO Streamers (alias, rol, correo) VALUES
('PixelPro', 'Main Streamer', 'pixel@streamteam.com'),
('GamerX', 'Co-Host', 'gamerx@streamteam.com'),
('TechGuru', 'Soporte Tecnico', 'tech@streamteam.com');

INSERT INTO Equipamiento (streamer_id, tipo, marca_modelo) VALUES
(1, 'Micrófono', 'Shure SM7B'),
(1, 'Cámara', 'Sony Alpha 6400'),
(2, 'Capturadora', 'Elgato HD60 X'),
(3, 'Mezclador de Audio', 'GoXLR');

INSERT INTO Transmisiones (streamer_id, titulo, categoria, duracion_minutos) VALUES
(1, 'Maratón de Rust Survival', 'Just Chatting / Gaming', 240),
(1, 'Probando nuevos lanzamientos', 'Indie Games', 180),
(2, 'Torneo Comunitario 2v2', 'Esports', 300);