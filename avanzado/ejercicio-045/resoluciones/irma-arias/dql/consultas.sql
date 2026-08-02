USE biblioteca_gamer_db;

-- 1. Listado de videojuegos con el nombre de su plataforma usando JOIN
SELECT v.titulo, p.nombre_plataforma, v.precio, v.estado
FROM videojuegos v
JOIN plataformas p ON v.id_plataforma = p.id_plataforma;

-- 2. Conteo de juegos y calificación promedio agrupados por plataforma
SELECT p.nombre_plataforma, COUNT(*) AS total_juegos, AVG(v.calificacion) AS promedio_calificacion
FROM videojuegos v
JOIN plataformas p ON v.id_plataforma = p.id_plataforma
GROUP BY p.nombre_plataforma
ORDER BY promedio_calificacion DESC;

-- 3. Ranking TOP 3 de los juegos mejor calificados
SELECT v.titulo, p.nombre_plataforma, v.calificacion
FROM videojuegos v
JOIN plataformas p ON v.id_plataforma = p.id_plataforma
ORDER BY v.calificacion DESC
LIMIT 3;

-- 4. Filtrar videojuegos según su estado en la biblioteca gamer
SELECT v.titulo, v.estado, v.precio
FROM videojuegos v
WHERE v.estado = 'completado'
ORDER BY v.precio DESC;

-- 5. Promedio y total de inversión (precio) por estado de los juegos
SELECT estado, COUNT(*) AS cantidad, SUM(precio) AS inversion_total
FROM videojuegos
GROUP BY estado;
