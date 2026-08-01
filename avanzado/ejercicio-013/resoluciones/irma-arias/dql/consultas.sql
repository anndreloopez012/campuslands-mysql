-- DQL: Consultas analíticas y filtros por estado para el catálogo de terror
USE db_peliculas_miedo;

-- 1. Listado general de películas ordenadas por calificación de IMDB de mayor a menor
SELECT id, codigo_pelicula, titulo, subgenero, anio_estreno, calificacion_imdb, vistas, estado
FROM peliculas_terror
ORDER BY calificacion_imdb DESC;

-- 2. Filtrar únicamente las películas con estado 'disponible' ordenadas por número de vistas
SELECT codigo_pelicula, titulo, subgenero, anio_estreno, calificacion_imdb, vistas, estado
FROM peliculas_terror
WHERE estado = 'disponible'
ORDER BY vistas DESC;

-- 3. Agrupar por estado de la película para ver la cantidad en cada categoría y el promedio de vistas
SELECT estado, COUNT(*) AS total_peliculas, ROUND(AVG(vistas), 2) AS promedio_vistas_estado
FROM peliculas_terror
GROUP BY estado
ORDER BY total_peliculas DESC;

-- 4. Top 3 de películas con mejor calificación de IMDB que se encuentran disponibles (Ranking de terror)
SELECT codigo_pelicula, titulo, subgenero, calificacion_imdb, vistas, estado
FROM peliculas_terror
WHERE estado = 'disponible'
ORDER BY calificacion_imdb DESC
LIMIT 3;

-- 5. Resumen analítico por subgénero aplicando conteo y calificación promedio máxima
SELECT subgenero, COUNT(*) AS cantidad_titulos, MAX(calificacion_imdb) AS mejor_calificacion
FROM peliculas_terror
GROUP BY subgenero
ORDER BY mejor_calificacion DESC;