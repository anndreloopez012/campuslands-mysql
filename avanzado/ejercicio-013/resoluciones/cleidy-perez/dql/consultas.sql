-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

SELECT 
    p.titulo,
    p.anio_estreno,
    p.detalles_terror->>'$.subgenero' AS subgenero,
    p.detalles_terror->>'$.puntuacion_critica' AS critica
FROM Peliculas p;
