-- Consultas base demostrando manejo de fechas (Funciones DATE).
USE campuslands_mysql;

SELECT titulo, episodio, YEAR(fecha_estreno) AS anio_lanzamiento 
    FROM basico_ejercicio_014_peliculas_scifi 
    ORDER BY fecha_estreno ASC;

SELECT titulo, director, fecha_estreno 
    FROM basico_ejercicio_014_peliculas_scifi 
    WHERE MONTH(fecha_estreno) = 12 
    ORDER BY fecha_estreno ASC;

SELECT titulo, fecha_estreno, (YEAR(CURDATE()) - YEAR(fecha_estreno)) AS anios_desde_estreno 
    FROM basico_ejercicio_014_peliculas_scifi 
    ORDER BY anios_desde_estreno DESC;

SELECT titulo, fecha_estreno, DATEDIFF(fecha_estreno, '1977-05-25') AS dias_diferencia_episodio_iv 
    FROM basico_ejercicio_014_peliculas_scifi 
    WHERE titulo != 'A New Hope' 
    ORDER BY dias_diferencia_episodio_iv ASC;

SELECT titulo, fecha_estreno, DATE_FORMAT(fecha_estreno, '%W, %d de %M de %Y') AS fecha_legible 
    FROM basico_ejercicio_014_peliculas_scifi 
    ORDER BY fecha_estreno DESC;