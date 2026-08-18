-- Consultas de Reportes: Agrupaciones, Matematicas y Categorizacion.
USE campuslands_mysql;

SELECT c.titulo, c.artista, SUM(r.streams_totales) AS total_reproducciones 
    FROM intermedio_ejercicio_012_canciones c 
    JOIN intermedio_ejercicio_012_reproducciones r ON c.id = r.cancion_id 
    GROUP BY c.id, c.titulo, c.artista 
    ORDER BY total_reproducciones DESC;

SELECT c.genero, COUNT(DISTINCT c.id) AS cantidad_canciones, SUM(r.streams_totales) AS volumen_total_streams 
    FROM intermedio_ejercicio_012_canciones c 
    JOIN intermedio_ejercicio_012_reproducciones r ON c.id = r.cancion_id 
    GROUP BY c.genero 
    ORDER BY volumen_total_streams DESC;

SELECT r.plataforma, SUM(r.streams_totales) AS streams_generados, ROUND((SUM(r.streams_totales) / (SELECT SUM(streams_totales) 
    FROM intermedio_ejercicio_012_reproducciones)) * 100, 2) AS porcentaje_mercado 
    FROM intermedio_ejercicio_012_reproducciones r 
    GROUP BY r.plataforma 
    ORDER BY streams_generados DESC;

SELECT c.titulo, c.artista, SUM(r.streams_totales) AS total_streams 
    FROM intermedio_ejercicio_012_canciones c 
    JOIN intermedio_ejercicio_012_reproducciones r ON c.id = r.cancion_id 
    GROUP BY c.id, c.titulo, c.artista 
    ORDER BY total_streams DESC 
    LIMIT 3;

SELECT CASE WHEN c.anio_lanzamiento <= 2010 THEN 'Clasico (Pre-2010)' ELSE 'Moderno (Post-2010)' END AS categoria_epoca, SUM(r.streams_totales) AS total_reproducciones 
    FROM intermedio_ejercicio_012_canciones c 
    JOIN intermedio_ejercicio_012_reproducciones r ON c.id = r.cancion_id 
    GROUP BY categoria_epoca 
    ORDER BY total_reproducciones DESC;