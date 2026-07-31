USE db_peliculas_terror;

-- Inserción de mínimo 8 registros variados de películas de miedo
INSERT INTO peliculas (titulo, director, anio_estreno, subgenero, calificacion_imdb, estado) VALUES
('El Conjunto Diabólico', 'James Wan', 2013, 'Sobrenatural', 7.5, 'disponible'),
('Halloween', 'John Carpenter', 1978, 'Slasher', 7.7, 'disponible'),
('El Exorcista', 'William Friedkin', 1973, 'Sobrenatural', 8.1, 'disponible'),
('Hereditary', 'Ari Aster', 2018, 'Psicológico', 7.3, 'agotada'),
('La Masacre de Texas', 'Tobe Hooper', 1974, 'Slasher', 7.4, 'disponible'),
('Sonríe', 'Parker Finn', 2022, 'Psicológico', 6.5, 'proximamente'),
('Exterminio', 'Danny Boyle', 2002, 'Zombie', 7.6, 'suspendida'),
('El Aro', 'Gore Verbinski', 2002, 'Sobrenatural', 7.1, 'disponible');