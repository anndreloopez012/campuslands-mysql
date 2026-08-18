-- Consultas base demostrando el modelado de la entidad musical.
USE campuslands_mysql;

SELECT titulo, artista, genero, anio_lanzamiento 
    FROM basico_ejercicio_012_playlist 
    ORDER BY anio_lanzamiento DESC;

SELECT genero, COUNT(id) AS cantidad_canciones 
    FROM basico_ejercicio_012_playlist 
    GROUP BY genero 
    ORDER BY cantidad_canciones DESC;

SELECT titulo, artista, anio_lanzamiento 
    FROM basico_ejercicio_012_playlist 
    WHERE anio_lanzamiento < 2000;

SELECT ROUND(SUM(duracion_segundos) / 60, 2) AS duracion_total_minutos 
    FROM basico_ejercicio_012_playlist;

SELECT titulo, artista, duracion_segundos 
    FROM basico_ejercicio_012_playlist 
    ORDER BY duracion_segundos DESC 
    LIMIT 1;