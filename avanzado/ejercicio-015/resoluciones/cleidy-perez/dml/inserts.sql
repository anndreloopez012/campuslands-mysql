-- Datos de practica. Puedes cambiarlos o agregar mas filas.
USE campuslands_mysql;

INSERT INTO Plataformas (nombre, desarrollador) VALUES
('Steam', 'Valve'),
('PlayStation 5', 'Sony'),
('Xbox Series X', 'Microsoft'),
('Nintendo Switch', 'Nintendo'),
('Epic Games', 'Epic Games'),
('GOG', 'CD Projekt'),
('EA App', 'Electronic Arts'),
('Ubisoft Connect', 'Ubisoft'),
('Battle.net', 'Blizzard'),
('Apple Arcade', 'Apple');

INSERT INTO Videojuegos (plataforma_id, titulo, genero, horas_jugadas) VALUES
(1, 'Elden Ring', 'RPG', 180),
(1, 'Cyberpunk 2077', 'RPG', 120),
(2, 'God of War Ragnarok', 'Accion', 65),
(2, 'The Last of Us Part II', 'Accion', 45),
(3, 'Halo Infinite', 'FPS', 90),
(3, 'Forza Horizon 5', 'Carreras', 110),
(4, 'Zelda: Tears of the Kingdom', 'Aventura', 210),
(4, 'Super Mario Odyssey', 'Plataformas', 50),
(5, 'Alan Wake 2', 'Terror', 30),
(6, 'The Witcher 3', 'RPG', 250);