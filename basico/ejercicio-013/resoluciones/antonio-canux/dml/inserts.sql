-- Datos de practica para catalogo de peliculas de miedo (10 registros con varios estados).
USE campuslands_mysql;

INSERT INTO basico_ejercicio_013_peliculas (titulo, director, anio_estreno, estado) 
    VALUES ('El Exorcista', 'William Friedkin', 1973, 'Disponible'),
    ('El Resplandor', 'Stanley Kubrick', 1980, 'Alquilada'),
    ('Hereditary', 'Ari Aster', 2018, 'Disponible'),
    ('Pesadilla en la calle Elm', 'Wes Craven', 1984, 'Descatalogada'),
    ('El Conjuro', 'James Wan', 2013, 'Alquilada'),
    ('Halloween', 'John Carpenter', 1978, 'Disponible'),
    ('¡Huye! (Get Out)', 'Jordan Peele', 2017, 'Mantenimiento'),
    ('El proyecto de la bruja de Blair', 'Daniel Myrick', 1999, 'Disponible'),
    ('It (Eso)', 'Andy Muschietti', 2017, 'Alquilada'),
    ('La Masacre de Texas', 'Tobe Hooper', 1974, 'Descatalogada');