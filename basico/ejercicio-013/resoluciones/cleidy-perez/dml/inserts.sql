-- Datos de practica. Puedes cambiarlos o agregar mas filas.
USE campuslands_mysql;

INSERT INTO directores (nombre, pais) VALUES
('James Wan', 'Australia'),
('John Carpenter', 'Estados Unidos'),
('Ari Aster', 'Estados Unidos');

INSERT INTO peliculas (id_director, titulo, subgenero, anio_estreno, estado) VALUES
(1, 'El Conjuro', 'Paranormal', 2013, 'Disponible'),
(1, 'La Noche del Demonio 6', 'Paranormal', 2026, 'Proximamente'),
(2, 'Halloween', 'Slasher', 1978, 'Disponible'),
(2, 'La Cosa (The Thing)', 'Terror Corporal', 1982, 'Retirada'),
(3, 'Midsommar', 'Terror Folclórico', 2019, 'Disponible');

INSERT INTO resenas (id_pelicula, usuario, calificacion, comentario) VALUES
(1, 'spooky_user', 5, 'Un clásico moderno del género paranormal.'),
(1, 'dark_fan', 4, 'Asusta bastante, muy buenas actuaciones.'),
(3, 'slasher_king', 5, 'La mejor película de Michael Myers.'),
(5, 'horror_lover', 4, 'Terror a plena luz del día, magistral.');
