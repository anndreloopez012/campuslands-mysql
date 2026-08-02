USE biblioteca_gamer_db;

INSERT INTO plataformas (nombre_plataforma, fabricante) VALUES
('PC', 'Microsoft'),
('PlayStation 5', 'Sony'),
('Nintendo Switch', 'Nintendo'),
('Xbox Series X', 'Microsoft');

INSERT INTO videojuegos (titulo, id_plataforma, precio, calificacion, estado) VALUES
('Cyberpunk 2077', 1, 59.99, 8.5, 'completado'),
('God of War Ragnarok', 2, 69.99, 9.5, 'completado'),
('The Legend of Zelda: TotK', 3, 69.99, 9.8, 'completado'),
('Halo Infinite', 4, 39.99, 7.8, 'pendiente'),
('Baldurs Gate 3', 1, 59.99, 9.7, 'completado'),
('Spider-Man 2', 2, 69.99, 9.0, 'disponible'),
('Metroid Prime Remastered', 3, 39.99, 9.2, 'pendiente'),
('Forza Horizon 5', 4, 49.99, 8.9, 'disponible');
