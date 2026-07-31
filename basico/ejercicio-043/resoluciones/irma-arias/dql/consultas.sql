USE db_peliculas_terror;

-- Consulta 1: Filtrar todas las películas que se encuentran con estado 'disponible' ordenadas por calificación de mayor a menor
SELECT id, titulo, director, anio_estreno, subgenero, calificacion_imdb, estado
FROM peliculas
WHERE estado = 'disponible'
ORDER BY calificacion_imdb DESC;

-- Consulta 2: Resumen agrupado por estado de las películas, mostrando cuántas hay en cada categoría y la calificación promedio
SELECT estado, COUNT(*) AS total_peliculas, AVG(calificacion_imdb) AS calificacion_promedio
FROM peliculas
GROUP BY estado
ORDER BY total_peliculas DESC;

-- Consulta 3: Top 4 de películas de terror mejor calificadas en el catálogo general (Ranking)
SELECT titulo, director, anio_estreno, subgenero, calificacion_imdb, estado
FROM peliculas
ORDER BY calificacion_imdb DESC
LIMIT 4;

-- Consulta 4: Filtrar películas cuyo subgénero sea 'Sobrenatural' o 'Slasher' y tengan una calificación mayor o igual a 7.5
SELECT titulo, director, subgenero, calificacion_imdb, estado
FROM peliculas
WHERE subgenero IN ('Sobrenatural', 'Slasher') AND calificacion_imdb >= 7.5
ORDER BY anio_estreno ASC;

-- Consulta 5: Agrupar por subgénero musical/cinematográfico analizando el promedio de calificación y el año de estreno más antiguo
SELECT subgenero, COUNT(*) AS cantidad, MIN(anio_estreno) AS anio_mas_antiguo, ROUND(AVG(calificacion_imdb), 2) AS promedio_imdb
FROM peliculas
GROUP BY subgenero;