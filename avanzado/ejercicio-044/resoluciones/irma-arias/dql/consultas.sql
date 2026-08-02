USE saga_scifi_db;

-- 1. Películas estrenadas después del año 2020 ordenadas por fecha
SELECT titulo, fecha_estreno, recaudacion_millones
FROM peliculas_saga
WHERE fecha_estreno > '2020-01-01' AND estado = 'estrenado'
ORDER BY fecha_estreno ASC;

-- 2. Ranking TOP 3 de las películas con mayor recaudación
SELECT titulo, recaudacion_millones
FROM peliculas_saga
ORDER BY recaudacion_millones DESC
LIMIT 3;

-- 3. Conteo y promedio de recaudación agrupado por estado de la película
SELECT estado, COUNT(*) AS total_peliculas, AVG(recaudacion_millones) AS promedio_recaudacion
FROM peliculas_saga
GROUP BY estado;

-- 4. Películas clásicas estrenadas antes del año 2000
SELECT titulo, fecha_estreno, director
FROM peliculas_saga
WHERE fecha_estreno < '2000-01-01'
ORDER BY fecha_estreno ASC;

-- 5. Filtrar proyectos en post-producción
SELECT titulo, fecha_estreno, estado
FROM peliculas_saga
WHERE estado = 'post-produccion';
