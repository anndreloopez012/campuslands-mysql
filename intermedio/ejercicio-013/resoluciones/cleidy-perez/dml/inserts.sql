-- Datos de practica. Puedes cambiarlos o agregar mas filas.
USE campuslands_mysql;

INSERT INTO Peliculas (titulo, director, anio_estreno, duracion_minutos) VALUES
('El Conjuro', 'James Wan', 2013, 112),
('Hereditary', 'Ari Aster', 2018, 127),
('Saw', 'James Wan', 2004, 103),
('Midsommar', 'Ari Aster', 2019, 147),
('¡Huye!', 'Jordan Peele', 2017, 104),
('La Bruja', 'Robert Eggers', 2015, 92),
('Halloween', 'John Carpenter', 1978, 91),
('[REC]', 'Paco Plaza', 2007, 78),
('El Espinazo del Diablo', 'Guillermo del Toro', 2001, 106),
('Oculus', 'Mike Flanagan', 2013, 104);

INSERT INTO PeliculasGeneros (pelicula_id, genero, subgenero) VALUES
(1, 'Paranormal', 'Casas Embrujadas'),
(1, 'Sobrenatural', 'Posesion'),
(2, 'Terror Psicologico', 'Cultos'),
(2, 'Folk Horror', 'Drama Familiar'),
(3, 'Gore', 'Trampas'),
(4, 'Folk Horror', 'Rituales'),
(5, 'Suspenso', 'Control Mental'),
(6, 'Folk Horror', 'Brujeria'),
(7, 'Slasher', 'Asesino en Serie'),
(8, 'Metraje Encontrado', 'Infectados');