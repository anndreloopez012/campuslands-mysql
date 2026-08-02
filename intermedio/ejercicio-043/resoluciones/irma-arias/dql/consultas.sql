USE peliculas_miedo_db;

-- 1. Listar todas las películas de terror conectando su director, país de origen y los subgéneros asociados a través de la tabla puente
SELECT p.titulo_pelicula, p.anio_estreno, d.nombre_director, d.pais_origen, s.nombre_subgenero, p.calificacion_imdb, p.estado_estreno
FROM peliculas p
JOIN directores d ON p.id_director = d.id_director
JOIN pelicula_subgenero ps ON p.id_pelicula = ps.id_pelicula
JOIN subgeneros s ON ps.id_subgenero = s.id_subgenero
ORDER BY p.calificacion_imdb DESC;

-- 2. Análisis agrupado por Subgénero: Calcular cuántas películas pertenecen a cada subgénero y su calificación IMDb promedio
SELECT s.nombre_subgenero, s.descripcion, COUNT(ps.id_pelicula) AS total_peliculas, AVG(p.calificacion_imdb) AS calificacion_promedio
FROM subgeneros s
JOIN pelicula_subgenero ps ON s.id_subgenero = ps.id_subgenero
JOIN peliculas p ON ps.id_pelicula = p.id_pelicula
GROUP BY s.id_subgenero, s.nombre_subgenero, s.descripcion
ORDER BY total_peliculas DESC;

-- 3. Análisis agrupado por Director: Evaluar la cantidad de películas dirigidas y la calificación máxima alcanzada en su filmografía de miedo
SELECT d.nombre_director, d.pais_origen, COUNT(p.id_pelicula) AS peliculas_dirigidas, MAX(p.calificacion_imdb) AS mejor_calificacion_imdb
FROM directores d
JOIN peliculas p ON d.id_director = p.id_director
GROUP BY d.id_director, d.nombre_director, d.pais_origen
ORDER BY mejor_calificacion_imdb DESC;

-- 4. Filtrar películas cuyo estado sea 'clasico' y cuya calificación IMDb sea superior o igual a 7.5
SELECT p.titulo_pelicula, d.nombre_director, p.anio_estreno, p.calificacion_imdb, p.estado_estreno
FROM peliculas p
JOIN directores d ON p.id_director = d.id_director
WHERE p.estado_estreno = 'clasico' AND p.calificacion_imdb >= 7.5
ORDER BY p.calificacion_imdb DESC;

-- 5. Ranking TOP 3 de las películas de miedo mejor calificadas en IMDb integrando datos completos de sus directores
SELECT p.titulo_pelicula, d.nombre_director, p.anio_estreno, p.calificacion_imdb
FROM peliculas p
JOIN directores d ON p.id_director = d.id_director
ORDER BY p.calificacion_imdb DESC
LIMIT 3;
