-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

-- 1. Seleccionar todas las películas disponibles, ordenadas por título.
SELECT id, titulo, director, año_lanzamiento, genero, calificacion_imdb
FROM peliculas_miedo
WHERE estado = 'disponible'
ORDER BY titulo ASC;

-- 2. Contar el número de películas por género.
SELECT genero, COUNT(*) AS total_peliculas
FROM peliculas_miedo
GROUP BY genero
ORDER BY total_peliculas DESC;

-- 3. Encontrar las 3 películas mejor calificadas (según IMDb).
SELECT titulo, director, calificacion_imdb, año_lanzamiento
FROM peliculas_miedo
ORDER BY calificacion_imdb DESC
LIMIT 3;

-- 4. Listar películas lanzadas antes del año 1980.
SELECT titulo, director, año_lanzamiento, genero
FROM peliculas_miedo
WHERE año_lanzamiento < 1980
ORDER BY año_lanzamiento ASC;

-- 5. Mostrar películas dirigidas por 'Stanley Kubrick' que estén disponibles.
SELECT titulo, año_lanzamiento, calificacion_imdb
FROM peliculas_miedo
WHERE director = 'Stanley Kubrick' AND estado = 'disponible';

-- 6. Calcular la duración promedio de las películas por género.
SELECT genero, AVG(duracion_minutos) AS duracion_promedio_minutos
FROM peliculas_miedo
GROUP BY genero
ORDER BY duracion_promedio_minutos DESC;
