-- Datos de practica. Puedes cambiarlos o agregar mas filas.
USE campuslands_mysql;

INSERT INTO Directores (nombre, pais_origen, datos_biograficos) VALUES
('James Wan', 'Australia', '{"premios": ["Saturn Award", "Hollywood Film Award"], "activo_desde": 2000}'),
('Ari Aster', 'Estados Unidos', '{"premios": ["Gotham Award"], "activo_desde": 2011}'),
('Mike Flanagan', 'Estados Unidos', '{"premios": ["Bram Stoker Award"], "activo_desde": 2000}'),
('Guillermo del Toro', 'México', '{"premios": ["Oscar", "BAFTA", "Globo de Oro"], "activo_desde": 1985}'),
('Jordan Peele', 'Estados Unidos', '{"premios": ["Oscar", "Critics Choice"], "activo_desde": 2002}'),
('Robert Eggers', 'Estados Unidos', '{"premios": ["Sundance Award"], "activo_desde": 2014}'),
('John Carpenter', 'Estados Unidos', '{"premios": ["Bram Stoker Award"], "activo_desde": 1962}'),
('Takashi Shimizu', 'Japón', '{"premios": ["Scream Award"], "activo_desde": 1998}'),
('Paco Plaza', 'España', '{"premios": ["Goya Nomination"], "activo_desde": 1995}'),
('Andy Muschietti', 'Argentina', '{"premios": ["Imagen Award"], "activo_desde": 2008}');

INSERT INTO Peliculas (director_id, titulo, anio_estreno, detalles_terror) VALUES
(1, 'El Conjuro', 2013, '{"subgenero": "Paranormal", "rating_clasificacion": "R", "elementos": ["Posesion", "Casas Embrujadas"], "puntuacion_critica": 8.6}'),
(1, 'Saw', 2004, '{"subgenero": "Gore", "rating_clasificacion": "R", "elementos": ["Trampas", "Asesino en Serie"], "puntuacion_critica": 7.6}'),
(2, 'Hereditary', 2018, '{"subgenero": "Terror Psicologico", "rating_clasificacion": "R", "elementos": ["Cultos", "Trauma Familiar"], "puntuacion_critica": 8.9}'),
(2, 'Midsommar', 2019, '{"subgenero": "Folk Horror", "rating_clasificacion": "R", "elementos": ["Rituales", "Luz de Dia"], "puntuacion_critica": 8.3}'),
(3, 'Oculus', 2013, '{"subgenero": "Paranormal", "rating_clasificacion": "R", "elementos": ["Espejos Maldecidos", "Ilusiones"], "puntuacion_critica": 7.3}'),
(4, 'El Espinazo del Diablo', 2001, '{"subgenero": "Gótico", "rating_clasificacion": "PG-13", "elementos": ["Fantasmas", "Guerra Civil"], "puntuacion_critica": 8.5}'),
(5, '¡Huye!', 2017, '{"subgenero": "Suspenso / Terror", "rating_clasificacion": "R", "elementos": ["Control Mental", "Critica Social"], "puntuacion_critica": 9.8}'),
(6, 'La Bruja', 2015, '{"subgenero": "Folk Horror", "rating_clasificacion": "R", "elementos": ["Brujeria", "Folclor"], "puntuacion_critica": 9.0}'),
(7, 'Halloween', 1978, '{"subgenero": "Slasher", "rating_clasificacion": "R", "elementos": ["Asesino Inmortal", "Mascara"], "puntuacion_critica": 9.6}'),
(9, '[REC]', 2007, '{"subgenero": "Metraje Encontrado", "rating_clasificacion": "R", "elementos": ["Infectados", "Claustrofobia"], "puntuacion_critica": 8.8}');