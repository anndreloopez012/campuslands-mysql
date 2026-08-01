-- DML: Inserción de datos para plataformas y juegos gamer
USE db_biblioteca_gamer;

INSERT INTO plataformas (nombre_plataforma, fabricante) VALUES
('PC', 'Microsoft / Valve'),
('PlayStation 5', 'Sony'),
('Nintendo Switch', 'Nintendo'),
('Xbox Series X', 'Microsoft');

INSERT INTO juegos_gamer (codigo_juego, titulo, id_plataforma, precio_dolares, horas_jugadas, estado) VALUES
('GAME-01', 'Cyberpunk 2077', 1, 59.99, 120, 'completado'),
('GAME-02', 'God of War Ragnarok', 2, 69.99, 45, 'completado'),
('GAME-03', 'The Legend of Zelda: TotK', 3, 69.99, 85, 'jugando'),
('GAME-04', 'Halo Infinite', 4, 39.99, 30, 'disponible'),
('GAME-05', 'Elden Ring', 1, 49.99, 150, 'completado'),
('GAME-06', 'Spider-Man 2', 2, 69.99, 25, 'jugando'),
('GAME-07', 'Super Mario Odyssey', 3, 59.99, 40, 'archivado'),
('GAME-08', 'Forza Horizon 5', 4, 49.99, 60, 'disponible');