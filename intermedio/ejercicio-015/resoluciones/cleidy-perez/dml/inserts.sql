-- Datos de practica. Puedes cambiarlos o agregar mas filas.
USE campuslands_mysql;
INSERT INTO Plataformas (plataforma_id, nombre, desarrollador) VALUES
(1, 'Steam', 'Valve'),
(2, 'PlayStation 5', 'Sony'),
(3, 'Xbox Series X', 'Microsoft'),
(4, 'Nintendo Switch', 'Nintendo'),
(5, 'Epic Games', 'Epic Games'),
(6, 'GOG', 'CD Projekt'),
(7, 'EA App', 'Electronic Arts'),
(8, 'Ubisoft Connect', 'Ubisoft'),
(9, 'Battle.net', 'Blizzard'),
(10, 'Apple Arcade', 'Apple')
ON DUPLICATE KEY UPDATE 
    nombre = VALUES(nombre), 
    desarrollador = VALUES(desarrollador);

INSERT INTO Videojuegos (juego_id, plataforma_id, titulo, genero, horas_jugadas) VALUES
(1, 1, 'Elden Ring', 'RPG', 180),
(2, 1, 'Cyberpunk 2077', 'RPG', 120),
(3, 2, 'God of War Ragnarok', 'Accion', 65),
(4, 2, 'The Last of Us Part II', 'Accion', 45),
(5, 3, 'Halo Infinite', 'FPS', 90),
(6, 3, 'Forza Horizon 5', 'Carreras', 110),
(7, 4, 'Zelda: Tears of the Kingdom', 'Aventura', 210),
(8, 4, 'Super Mario Odyssey', 'Plataformas', 50),
(9, 5, 'Alan Wake 2', 'Terror', 30),
(10, 6, 'The Witcher 3', 'RPG', 250)
ON DUPLICATE KEY UPDATE
    horas_jugadas = VALUES(horas_jugadas);