USE biblioteca_gamer_db;

INSERT INTO plataformas (nombre_plataforma, fabricante) VALUES
('PC', 'Microsoft'),
('PlayStation 5', 'Sony'),
('Nintendo Switch', 'Nintendo'),
('Xbox Series X', 'Microsoft');

INSERT INTO desarrolladores (nombre_desarrollador, pais_origen) VALUES
('CD Projekt Red', 'Polonia'),
('FromSoftware', 'Japón'),
('Nintendo EPD', 'Japón'),
('Rockstar North', 'Reino Unido');

INSERT INTO videojuegos (titulo_juego, anio_lanzamiento, precio_usd, horas_jugadas, calificacion_metacritic, id_plataforma, id_desarrollador, estado_biblioteca) VALUES
('The Witcher 3: Wild Hunt', 2015, 39.99, 120, 93, 1, 1, 'completado'),
('Elden Ring', 2022, 59.99, 155, 96, 2, 2, 'completado'),
('The Legend of Zelda: Tears of the Kingdom', 2023, 69.99, 90, 96, 3, 3, 'jugando'),
('Grand Theft Auto V', 2013, 29.99, 210, 97, 4, 4, 'completado'),
('Cyberpunk 2077', 2020, 49.99, 65, 86, 1, 1, 'jugando'),
('Dark Souls III', 2016, 39.99, 85, 89, 2, 2, 'completado'),
('Super Mario Odyssey', 2017, 59.99, 35, 97, 3, 3, 'pendiente'),
('Cyberpunk 2077: Phantom Liberty', 2023, 29.99, 30, 89, 4, 1, 'completado');
