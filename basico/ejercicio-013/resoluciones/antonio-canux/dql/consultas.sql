-- Consultas base demostrando filtros por estado.
USE campuslands_mysql;

SELECT titulo, director, anio_estreno, estado 
    FROM basico_ejercicio_013_peliculas 
    WHERE estado = 'Disponible';

SELECT estado, COUNT(id) AS cantidad_peliculas 
    FROM basico_ejercicio_013_peliculas 
    GROUP BY estado 
    ORDER BY cantidad_peliculas DESC;

SELECT titulo, director, estado 
    FROM basico_ejercicio_013_peliculas 
    WHERE estado != 'Disponible' 
    ORDER BY estado ASC;

SELECT titulo, director, anio_estreno, estado 
    FROM basico_ejercicio_013_peliculas 
    WHERE anio_estreno < 1990 AND estado = 'Descatalogada';

SELECT titulo, anio_estreno, estado 
    FROM basico_ejercicio_013_peliculas 
    WHERE estado IN ('Disponible', 'Alquilada') 
    ORDER BY anio_estreno DESC;