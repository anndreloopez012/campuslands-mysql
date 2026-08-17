USE campuslands_mysql;

SELECT titulo, director, 
           detalles_json->>'$.calificaciones.imdb' AS puntaje_imdb 
    FROM avanzado_ejercicio_013_peliculas 
    ORDER BY CAST(detalles_json->>'$.calificaciones.imdb' AS DECIMAL(3,1)) DESC;

SELECT titulo, anio_estreno 
    FROM avanzado_ejercicio_013_peliculas 
    WHERE JSON_EXTRACT(detalles_json, '$.basada_en_hechos_reales') = true;

SELECT titulo, director, 
           detalles_json->>'$.subgeneros' AS subgeneros_registrados 
    FROM avanzado_ejercicio_013_peliculas 
    WHERE JSON_CONTAINS(detalles_json, '"Slasher"', '$.subgeneros');

SELECT director, JSON_ARRAYAGG(titulo) AS peliculas_dirigidas_json 
    FROM avanzado_ejercicio_013_peliculas 
    GROUP BY director;

SELECT p.titulo, actor.nombre_actor 
    FROM avanzado_ejercicio_013_peliculas p, 
    JSON_TABLE(p.detalles_json, '$.reparto[*]' COLUMNS (nombre_actor VARCHAR(100) PATH '$')) AS actor 
    ORDER BY p.titulo ASC;