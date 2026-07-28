USE db_peliculas_miedo_irma;

-- Consulta 1: Listado exclusivo de películas de terror actualmente disponibles en cartelera
SELECT 
    titulo AS Pelicula, 
    subgenero AS Subgenero, 
    anio_estreno AS Anio, 
    calificacion_imdb AS RatingIMDb
FROM peliculas_terror
WHERE estado_cartelera = 'Disponible'
ORDER BY calificacion_imdb DESC;

-- Consulta 2: Conteo de películas agrupadas según su estado de cartelera actual
SELECT 
    estado_cartelera AS EstadoCartelera, 
    COUNT(*) AS TotalPeliculas
FROM peliculas_terror
GROUP BY estado_cartelera
ORDER BY TotalPeliculas DESC;

-- Consulta 3: Top 3 de películas mejor calificadas del catálogo (Ranking de terror)
SELECT 
    titulo AS PeliculaDestacada, 
    calificacion_imdb AS CalificacionIMDb, 
    estado_cartelera AS Estado
FROM peliculas_terror
ORDER BY calificacion_imdb DESC
LIMIT 3;

-- Consulta 4: Películas clasificadas en estado 'Archivada' para auditoría de catálogo antiguo
SELECT 
    titulo AS PeliculaArchivada, 
    anio_estreno AS AnioEstreno, 
    calificacion_imdb AS Rating
FROM peliculas_terror
WHERE estado_cartelera = 'Archivada'
ORDER BY anio_estreno ASC;

-- Consulta 5: Promedio de calificación IMDb agrupado por subgénero de terror
SELECT 
    subgenero AS Subgenero, 
    COUNT(*) AS CantidadPeliculas, 
    AVG(calificacion_imdb) AS PromedioIMDb
FROM peliculas_terror
GROUP BY subgenero
ORDER BY PromedioIMDb DESC;