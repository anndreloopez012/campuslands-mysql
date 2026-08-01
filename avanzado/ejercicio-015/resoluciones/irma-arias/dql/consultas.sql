-- DQL: Consultas analíticas y reportes relacionales para la biblioteca gamer
USE db_biblioteca_gamer;

-- 1. Listado general de juegos mostrando su plataforma mediante INNER JOIN ordenados por horas jugadas
SELECT j.codigo_juego, j.titulo, p.nombre_plataforma, p.fabricante, j.precio_dolares, j.horas_jugadas, j.estado
FROM juegos_gamer j
INNER JOIN plataformas p ON j.id_plataforma = p.id
ORDER BY j.horas_jugadas DESC;

-- 2. Filtrar juegos cuyo estado sea 'completado' o 'jugando' vinculados a su plataforma
SELECT j.codigo_juego, j.titulo, p.nombre_plataforma, j.horas_jugadas, j.estado
FROM juegos_gamer j
INNER JOIN plataformas p ON j.id_plataforma = p.id
WHERE j.estado IN ('completado', 'jugando')
ORDER BY j.titulo ASC;

-- 3. Agrupar por plataforma para conocer la cantidad de títulos y el total de horas invertidas
SELECT p.nombre_plataforma, COUNT(j.id) AS total_juegos, SUM(j.horas_jugadas) AS horas_totales_plataforma
FROM plataformas p
LEFT JOIN juegos_gamer j ON p.id = j.id_plataforma
GROUP BY p.id, p.nombre_plataforma
ORDER BY horas_totales_plataforma DESC;

-- 4. Top 3 de juegos con mayor cantidad de horas jugadas en toda la biblioteca
SELECT j.codigo_juego, j.titulo, p.nombre_plataforma, j.horas_jugadas, j.estado
FROM juegos_gamer j
INNER JOIN plataformas p ON j.id_plataforma = p.id
ORDER BY j.horas_jugadas DESC
LIMIT 3;

-- 5. Resumen financiero global de la biblioteca gamer (Inversión total y costo promedio por juego)
SELECT COUNT(*) AS total_titulos_biblioteca, SUM(precio_dolares) AS inversion_total_dolares, ROUND(AVG(precio_dolares), 2) AS precio_promedio_juego
FROM juegos_gamer;