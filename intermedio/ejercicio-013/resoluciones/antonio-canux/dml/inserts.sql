-- Datos de practica para catalogo de peliculas de miedo y reparto (M:N).
USE campuslands_mysql;

INSERT INTO intermedio_ejercicio_013_peliculas (titulo, director, anio_estreno) 
    VALUES ('El Resplandor', 'Stanley Kubrick', 1980),
    ('El Exorcista', 'William Friedkin', 1973),
    ('El Conjuro', 'James Wan', 2013),
    ('Halloween', 'John Carpenter', 1978),
    ('Hereditary', 'Ari Aster', 2018);

INSERT INTO intermedio_ejercicio_013_actores (nombre, nacionalidad) 
    VALUES ('Jack Nicholson', 'Estadounidense'),
    ('Shelley Duvall', 'Estadounidense'),
    ('Linda Blair', 'Estadounidense'),
    ('Vera Farmiga', 'Estadounidense'),
    ('Patrick Wilson', 'Estadounidense'),
    ('Jamie Lee Curtis', 'Estadounidense'),
    ('Donald Pleasence', 'Britanica'),
    ('Toni Collette', 'Australiana'),
    ('Alex Wolff', 'Estadounidense');

INSERT INTO intermedio_ejercicio_013_reparto (pelicula_id, actor_id, personaje) 
    VALUES (1, 1, 'Jack Torrance'),
    (1, 2, 'Wendy Torrance'),
    (2, 3, 'Regan MacNeil'),
    (3, 4, 'Lorraine Warren'),
    (3, 5, 'Ed Warren'),
    (4, 6, 'Laurie Strode'),
    (4, 7, 'Dr. Sam Loomis'),
    (5, 8, 'Annie Graham'),
    (5, 9, 'Peter Graham');