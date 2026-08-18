-- Consultas demostrando el uso de tablas puente (Muchos a Muchos).
USE campuslands_mysql;

SELECT p.titulo, a.nombre AS actor, r.personaje 
    FROM intermedio_ejercicio_013_peliculas p 
    JOIN intermedio_ejercicio_013_reparto r ON p.id = r.pelicula_id 
    JOIN intermedio_ejercicio_013_actores a ON r.actor_id = a.id 
    WHERE p.titulo = 'El Conjuro';

SELECT a.nombre AS actor, p.titulo, r.personaje, p.anio_estreno 
    FROM intermedio_ejercicio_013_actores a 
    JOIN intermedio_ejercicio_013_reparto r ON a.id = r.actor_id 
    JOIN intermedio_ejercicio_013_peliculas p ON r.pelicula_id = p.id 
    WHERE a.nombre = 'Vera Farmiga';

SELECT p.titulo, COUNT(r.actor_id) AS total_actores 
    FROM intermedio_ejercicio_013_peliculas p LEFT 
    JOIN intermedio_ejercicio_013_reparto r ON p.id = r.pelicula_id 
    GROUP BY p.id, p.titulo 
    ORDER BY total_actores DESC;

SELECT DISTINCT a.nacionalidad 
    FROM intermedio_ejercicio_013_actores a 
    JOIN intermedio_ejercicio_013_reparto r ON a.id = r.actor_id 
    JOIN intermedio_ejercicio_013_peliculas p ON r.pelicula_id = p.id 
    WHERE p.titulo = 'Halloween';

SELECT p.titulo, p.director, GROUP_CONCAT(a.nombre SEPARATOR ', ') AS elenco_principal 
    FROM intermedio_ejercicio_013_peliculas p 
    JOIN intermedio_ejercicio_013_reparto r ON p.id = r.pelicula_id 
    JOIN intermedio_ejercicio_013_actores a ON r.actor_id = a.id GROUP BY p.id, p.titulo, p.director 
    ORDER BY p.anio_estreno ASC;