-- Datos de practica. se puede cambiar o agregar mas filas.
USE campuslands_mysql;

-- Insertar géneros
INSERT INTO generos (nombre) VALUES
('RPG'),
('Acción'),
('Aventura'),
('Estrategia'),
('Simulación'),
('Deportes');

-- Insertar juegos
INSERT INTO juegos (titulo, desarrollador, fecha_lanzamiento, id_genero, calificacion_metacritic, estado) VALUES
('The Witcher 3: Wild Hunt', 'CD Projekt Red', '2015-05-19', (SELECT id FROM generos WHERE nombre = 'RPG'), 93.0, 'completado'),
('Cyberpunk 2077', 'CD Projekt Red', '2020-12-10', (SELECT id FROM generos WHERE nombre = 'RPG'), 86.0, 'jugando'),
('Grand Theft Auto V', 'Rockstar Games', '2013-09-17', (SELECT id FROM generos WHERE nombre = 'Acción'), 97.0, 'disponible'),
('Red Dead Redemption 2', 'Rockstar Games', '2018-10-26', (SELECT id FROM generos WHERE nombre = 'Aventura'), 97.0, 'completado'),
('Starcraft II: Wings of Liberty', 'Blizzard Entertainment', '2010-07-27', (SELECT id FROM generos WHERE nombre = 'Estrategia'), 93.0, 'completado'),
('FIFA 23', 'EA Sports', '2022-09-30', (SELECT id FROM generos WHERE nombre = 'Deportes'), 77.0, 'disponible'),
('The Sims 4', 'Maxis', '2014-09-02', (SELECT id FROM generos WHERE nombre = 'Simulación'), 70.0, 'jugando'),
('God of War', 'Santa Monica Studio', '2018-04-20', (SELECT id FROM generos WHERE nombre = 'Acción'), 94.0, 'completado'),
('Horizon Zero Dawn', 'Guerrilla Games', '2017-02-28', (SELECT id FROM generos WHERE nombre = 'RPG'), 89.0, 'pendiente'),
('Minecraft', 'Mojang Studios', '2011-11-18', (SELECT id FROM generos WHERE nombre = 'Simulación'), 93.0, 'disponible'),
('Baldur''s Gate 3', 'Larian Studios', '2023-08-03', (SELECT id FROM generos WHERE nombre = 'RPG'), 96.0, 'jugando'),
('Elden Ring', 'FromSoftware', '2022-02-25', (SELECT id FROM generos WHERE nombre = 'RPG'), 96.0, 'completado');