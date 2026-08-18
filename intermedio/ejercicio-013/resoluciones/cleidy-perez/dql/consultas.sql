-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

SELECT 
    p.titulo,
    p.director,
    p.anio_estreno,
    GROUP_CONCAT(pg.genero SEPARATOR ', ') AS generos
FROM Peliculas p
JOIN PeliculasGeneros pg ON p.pelicula_id = pg.pelicula_id
GROUP BY p.pelicula_id, p.titulo, p.director, p.anio_estreno;

SELECT 
    p.titulo,
    pg.genero,
    pg.subgenero
FROM Peliculas p
JOIN PeliculasGeneros pg ON p.pelicula_id = pg.pelicula_id
WHERE pg.genero = 'Folk Horror';
