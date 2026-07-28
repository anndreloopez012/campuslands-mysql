USE db_biblioteca_gamer_irma;

-- Insertar plataformas
INSERT INTO plataformas (nombre_plataforma, fabricante, anio_lanzamiento) VALUES
('PC Gaming', 'Varios', 1980),
('PlayStation 5', 'Sony', 2020),
('Nintendo Switch', 'Nintendo', 2017),
('Xbox Series X', 'Microsoft', 2020);

-- Insertar 8 videojuegos vinculados mediante la relación simple (plataforma_id)
INSERT INTO videojuegos (titulo, genero, precio, plataforma_id, estado_biblioteca) VALUES
('Cyberpunk 2077', 'RPG', 59.99, 1, 'Terminado'),
('God of War Ragnarok', 'Aventura', 69.99, 2, 'Terminado'),
('The Legend of Zelda: Tears of the Kingdom', 'Aventura', 69.99, 3, 'Comprado'),
('Halo Infinite', 'Acccion', 39.99, 4, 'Pendiente'),
('Elden Ring', 'RPG', 49.99, 1, 'Terminado'),
('Spider-Man 2', 'Aventura', 69.99, 2, 'Comprado'),
('Super Mario Odyssey', 'Indie', 49.99, 3, 'Terminado'),
('Forza Horizon 5', 'Deportes', 29.99, 4, 'Pendiente');