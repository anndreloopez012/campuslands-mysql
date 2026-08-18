-- Datos de practica para biblioteca gamer (Plataformas y Juegos).
USE campuslands_mysql;

INSERT INTO basico_ejercicio_015_plataformas (nombre, fabricante) 
    VALUES ('PlayStation 5', 'Sony'),
    ('Xbox Series X', 'Microsoft'),
    ('Nintendo Switch', 'Nintendo'),
    ('PC', 'Varios');

INSERT INTO basico_ejercicio_015_juegos (plataforma_id, titulo, genero, anio_lanzamiento) 
    VALUES (1, 'God of War Ragnarok', 'Accion-Aventura', 2022),
    (1, 'Spider-Man 2', 'Accion', 2023),
    (2, 'Halo Infinite', 'Shooter', 2021),
    (2, 'Forza Horizon 5', 'Carreras', 2021),
    (3, 'The Legend of Zelda: Tears of the Kingdom', 'Aventura', 2023),
    (3, 'Super Mario Odyssey', 'Plataformas', 2017),
    (4, 'Cyberpunk 2077', 'RPG', 2020),
    (4, 'Half-Life: Alyx', 'Realidad Virtual', 2020),
    (4, 'Age of Empires IV', 'Estrategia', 2021),
    (3, 'Animal Crossing: New Horizons', 'Simulacion', 2020);