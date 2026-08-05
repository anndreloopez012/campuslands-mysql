
USE campuslands_mysql;

-- 1. Películas disponibles
SELECT
    titulo AS Pelicula,
    director AS Director,
    estado AS Estado
FROM peliculas_miedo
WHERE estado = 'Disponible';

-- 2. Películas prestadas
SELECT
    titulo,
    anio_lanzamiento,
    estado
FROM peliculas_miedo
WHERE estado = 'Prestada';

-- 3. Películas en mantenimiento
SELECT
    titulo,
    genero,
    estado
FROM peliculas_miedo
WHERE estado = 'Mantenimiento';

-- 4. Cantidad de películas por estado
SELECT
    estado AS Estado,
    COUNT(*) AS Total
FROM peliculas_miedo
GROUP BY estado
ORDER BY Total DESC;

-- 5. Películas disponibles con calificación mayor a 8
SELECT
    titulo,
    calificacion
FROM peliculas_miedo
WHERE estado = 'Disponible'
AND calificacion > 8
ORDER BY calificacion DESC;

-- 6. Catálogo completo ordenado por estado
SELECT
    titulo,
    estado
FROM peliculas_miedo
ORDER BY estado, titulo;