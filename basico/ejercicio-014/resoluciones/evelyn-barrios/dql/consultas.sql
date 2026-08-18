-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

-- 1. Seleccionar todas las películas disponibles, ordenadas por fecha de lanzamiento ascendente.
SELECT id, titulo, director, fecha_lanzamiento, saga, calificacion_imdb
FROM peliculas_sf
WHERE estado = 'disponible'
ORDER BY fecha_lanzamiento ASC;

-- 2. Contar el número de películas por saga (incluyendo las que no pertenecen a una saga).
SELECT IFNULL(saga, 'Sin Saga') AS nombre_saga, COUNT(*) AS total_peliculas
FROM peliculas_sf
GROUP BY saga
ORDER BY total_peliculas DESC;

-- 3. Encontrar las películas lanzadas en la década de los 80s (1980-1989).
SELECT titulo, director, fecha_lanzamiento, calificacion_imdb
FROM peliculas_sf
WHERE YEAR(fecha_lanzamiento) BETWEEN 1980 AND 1989
ORDER BY fecha_lanzamiento ASC;

-- 4. Listar películas que tienen una duración mayor a 150 minutos y están disponibles.
SELECT titulo, director, duracion_minutos, fecha_lanzamiento
FROM peliculas_sf
WHERE duracion_minutos > 150 AND estado = 'disponible'
ORDER BY duracion_minutos DESC;

-- 5. Mostrar la película más antigua y la más reciente en el catálogo.
SELECT 'Más Antigua' AS tipo, titulo, director, fecha_lanzamiento FROM peliculas_sf ORDER BY fecha_lanzamiento ASC LIMIT 1
UNION ALL
SELECT 'Más Reciente' AS tipo, titulo, director, fecha_lanzamiento FROM peliculas_sf ORDER BY fecha_lanzamiento DESC LIMIT 1;

-- 6. Calcular el promedio de calificación IMDb para las películas de la saga 'Star Wars'.
SELECT saga, AVG(calificacion_imdb) AS promedio_calificacion_imdb
FROM peliculas_sf
WHERE saga = 'Star Wars'
GROUP BY saga;