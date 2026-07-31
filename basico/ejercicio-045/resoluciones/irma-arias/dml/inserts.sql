USE db_biblioteca_gamer;

-- Inserción de plataformas (Tabla padre)
INSERT INTO plataformas (nombre_plataforma, fabricante, anio_lanzamiento) VALUES
('PC Gaming', 'Microsoft / Varios', 1981),
('PlayStation 5', 'Sony', 2020),
('Nintendo Switch', 'Nintendo', 2017),
('Xbox Series X', 'Microsoft', 2020);

-- Inserción de mínimo 8 videojuegos relacionados (Tabla hija)
INSERT INTO videojuegos (titulo, plataforma_id, genero, precio, horas_jugadas, estado) VALUES
('Cyberpunk 2077', 1, 'RPG', 59.99, 85.5, 'completado'),
('God of War Ragnarök', 2, 'Acción', 69.99, 45.0, 'completado'),
('The Legend of Zelda: Tears of the Kingdom', 3, 'Aventura', 69.99, 110.2, 'jugando'),
('Halo Infinite', 4, 'Shooter', 39.99, 25.0, 'pendiente'),
('Baldur Gate 3', 1, 'RPG', 59.99, 140.0, 'jugando'),
('Marvels Spider-Man 2', 2, 'Acción', 69.99, 30.5, 'completado'),
('Metroid Dread', 3, 'Plataformas', 49.99, 12.0, 'abandonado'),
('Forza Horizon 5', 4, 'Carreras', 49.99, 60.0, 'jugando');