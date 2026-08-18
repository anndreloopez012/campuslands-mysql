-- Datos de practica. Puedes cambiarlos o agregar mas filas.
USE campuslands_mysql;

INSERT INTO peliculas_sf (titulo, director, fecha_lanzamiento, saga, duracion_minutos, calificacion_imdb, estado) VALUES
('Star Wars: Una Nueva Esperanza', 'George Lucas', '1977-05-25', 'Star Wars', 121, 8.6, 'disponible'),
('Star Wars: El Imperio Contraataca', 'Irvin Kershner', '1980-05-21', 'Star Wars', 124, 8.7, 'disponible'),
('Star Wars: El Retorno del Jedi', 'Richard Marquand', '1983-05-25', 'Star Wars', 131, 8.3, 'disponible'),
('Dune', 'Denis Villeneuve', '2021-10-22', 'Dune', 155, 8.0, 'disponible'),
('Dune: Parte Dos', 'Denis Villeneuve', '2024-03-01', 'Dune', 166, 8.7, 'disponible'),
('Blade Runner', 'Ridley Scott', '1982-06-25', NULL, 117, 8.1, 'disponible'),
('Blade Runner 2049', 'Denis Villeneuve', '2017-10-06', NULL, 164, 8.0, 'disponible'),
('Matrix', 'Lana Wachowski, Lilly Wachowski', '1999-03-31', 'Matrix', 136, 8.7, 'disponible'),
('Interstellar', 'Christopher Nolan', '2014-11-07', NULL, 169, 8.7, 'disponible'),
('2001: Una Odisea del Espacio', 'Stanley Kubrick', '1968-04-03', NULL, 149, 8.3, 'archivada'),
('Avatar 3', 'James Cameron', '2025-12-19', 'Avatar', 190, 0.0, 'proximamente'); -- Película próxima con calificación inicial 0.0