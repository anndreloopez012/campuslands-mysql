

INSERT INTO plataformas (nombre_plataforma, empresa_desarrolladora, tipo_hardware) VALUES
('Steam', 'Valve', 'PC'),
('PlayStation 5', 'Sony', 'Consola'),
('Nintendo Switch', 'Nintendo', 'Portátil'),
('Xbox Series X', 'Microsoft', 'Consola');

INSERT INTO videojuegos (plataforma_id, titulo, genero, horas_jugadas, precio_compra_usd, completado) VALUES
(1, 'Elden Ring', 'RPG', 120, 59.99, TRUE),
(1, 'Cyberpunk 2077', 'RPG', 85, 49.99, TRUE),
(1, 'Hades', 'Acción', 45, 24.99, TRUE),
(2, 'God of War Ragnarök', 'Acción', 50, 69.99, TRUE),
(2, 'Spider-Man 2', 'Acción', 25, 69.99, FALSE),
(3, 'The Legend of Zelda: Tears of the Kingdom', 'Aventura', 110, 69.99, TRUE),
(3, 'Super Mario Odyssey', 'Aventura', 30, 59.99, FALSE),
(4, 'Starfield', 'RPG', 60, 69.99, FALSE);