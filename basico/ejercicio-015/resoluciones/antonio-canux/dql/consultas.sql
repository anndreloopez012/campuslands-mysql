-- Consultas base demostrando relaciones simples (JOIN).
USE campuslands_mysql;

SELECT j.titulo, j.genero, p.nombre AS plataforma 
    FROM basico_ejercicio_015_juegos j 
    JOIN basico_ejercicio_015_plataformas p ON j.plataforma_id = p.id;

SELECT p.nombre AS plataforma, COUNT(j.id) AS total_juegos 
    FROM basico_ejercicio_015_plataformas p 
    LEFT JOIN basico_ejercicio_015_juegos j ON p.id = j.plataforma_id 
    GROUP BY p.id, p.nombre 
    ORDER BY total_juegos DESC;

SELECT j.titulo, j.anio_lanzamiento, j.genero 
    FROM basico_ejercicio_015_juegos j 
    JOIN basico_ejercicio_015_plataformas p ON j.plataforma_id = p.id 
    WHERE p.nombre = 'Nintendo Switch' 
    ORDER BY j.anio_lanzamiento DESC;

SELECT j.titulo, p.nombre AS plataforma, p.fabricante 
    FROM basico_ejercicio_015_juegos j 
    JOIN basico_ejercicio_015_plataformas p ON j.plataforma_id = p.id 
    WHERE j.titulo = 'Cyberpunk 2077';

SELECT j.titulo, j.anio_lanzamiento, p.nombre AS plataforma, p.fabricante 
    FROM basico_ejercicio_015_juegos j 
    JOIN basico_ejercicio_015_plataformas p ON j.plataforma_id = p.id 
    WHERE j.anio_lanzamiento >= 2022 
    ORDER BY j.anio_lanzamiento DESC;