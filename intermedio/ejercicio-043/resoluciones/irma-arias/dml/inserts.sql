USE peliculas_miedo_db;

INSERT INTO directores (nombre_director, pais_origen) VALUES
('James Wan', 'Australia'),
('Ari Aster', 'Estados Unidos'),
('John Carpenter', 'Estados Unidos'),
('Stanley Kubrick', 'Reino Unido');

INSERT INTO subgeneros (nombre_subgenero, descripcion) VALUES
('Sobrenatural', 'Fantasmas, demonios y posesiones malignas'),
('Slasher', 'Asesinos seriales y persecuciones'),
('Terror Psicológico', 'Paranoia, locura y tensión mental'),
('Found Footage', 'Simulación de material de video encontrado');

INSERT INTO peliculas (titulo_pelicula, anio_estreno, duracion_minutos, calificacion_imdb, id_director, estado_estreno) VALUES
('El Conjuro', 2013, 112, 7.5, 1, 'clasico'),
('Hereditary', 2018, 127, 7.3, 2, 'clasico'),
('Halloween', 1978, 91, 7.7, 3, 'clasico'),
('El Resplandor', 1980, 146, 8.4, 4, 'clasico'),
('La Monja', 2018, 96, 5.3, 1, 'streaming'),
('Midsommar', 2019, 147, 7.1, 2, 'streaming'),
('La Cosa', 1982, 109, 8.2, 3, 'clasico'),
('Insidious', 2010, 103, 6.8, 1, 'clasico');

INSERT INTO pelicula_subgenero (id_pelicula, id_subgenero) VALUES
(1, 1), (1, 3),
(2, 1), (2, 3),
(3, 2),
(4, 3),
(5, 1), (5, 3),
(6, 3),
(7, 1), (7, 3),
(8, 1);
