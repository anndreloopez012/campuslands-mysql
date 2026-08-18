-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

SELECT 
    p.titulo,
    p.subgenero,
    p.anio_estreno,
    d.nombre AS director,
    p.estado
FROM peliculas p
JOIN directores d ON p.id_director = d.id_director
WHERE p.estado = 'Disponible'
ORDER BY p.anio_estreno DESC;
