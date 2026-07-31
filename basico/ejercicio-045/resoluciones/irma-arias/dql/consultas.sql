USE db_biblioteca_gamer;

-- Consulta 1: Listar todos los videojuegos uniendo la información de su plataforma mediante un INNER JOIN, ordenados por horas jugadas de mayor a menor
SELECT v.id, v.titulo, p.nombre_plataforma, v.genero, v.precio, v.horas_jugadas, v.estado
FROM videojuegos v
INNER JOIN plataformas p ON v.plataforma_id = p.id
ORDER BY v.horas_jugadas DESC;

-- Consulta 2: Resumen agrupado por plataforma (usando JOIN y funciones de agregación) mostrando cantidad de juegos y total de horas invertidas
SELECT p.nombre_plataforma, COUNT(v.id) AS total_juegos, SUM(v.horas_jugadas) AS horas_totales_plataforma
FROM plataformas p
LEFT JOIN videojuegos v ON p.id = v.plataforma_id
GROUP BY p.nombre_plataforma;

-- Consulta 3: Top 3 de videojuegos con mayor cantidad de horas jugadas en toda la biblioteca
SELECT v.titulo, p.nombre_plataforma, v.genero, v.horas_jugadas, v.estado
FROM videojuegos v
INNER JOIN plataformas p ON v.plataforma_id = p.id
ORDER BY v.horas_jugadas DESC
LIMIT 3;

-- Consulta 4: Filtrar videojuegos cuyo estado sea 'completado' o 'jugando' y tengan un precio menor a 65.00
SELECT v.titulo, p.nombre_plataforma, v.precio, v.estado
FROM videojuegos v
INNER JOIN plataformas p ON v.plataforma_id = p.id
WHERE v.estado IN ('completado', 'jugando') AND v.precio < 65.00
ORDER BY v.precio DESC;

-- Consulta 5: Agrupar por género de videojuego calculando el precio promedio y el total de horas jugadas de forma global
SELECT genero, COUNT(*) AS cantidad_juegos, ROUND(AVG(precio), 2) AS precio_promedio, SUM(horas_jugadas) AS horas_genero
FROM videojuegos
GROUP BY genero
ORDER BY horas_genero DESC;