-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

-- 1. Seleccionar todas las canciones disponibles, ordenadas por título.
SELECT id, titulo, artista, genero, reproducciones
FROM canciones
WHERE estado = 'disponible'
ORDER BY titulo ASC;

-- 2. Contar el número total de canciones por artista y mostrar el promedio de reproducciones.
SELECT artista, COUNT(*) AS total_canciones, AVG(reproducciones) AS promedio_reproducciones
FROM canciones
GROUP BY artista
ORDER BY promedio_reproducciones DESC;

-- 3. Encontrar las 3 canciones con más reproducciones.
SELECT titulo, artista, reproducciones
FROM canciones
ORDER BY reproducciones DESC
LIMIT 3;

-- 4. Listar canciones de un género específico (ej. 'Rock') que tengan más de 1,000,000,000 reproducciones.
SELECT titulo, artista, album, reproducciones
FROM canciones
WHERE genero = 'Rock' AND reproducciones > 1000000000
ORDER BY reproducciones DESC;

-- 5. Calcular la duración total de todas las canciones en segundos y en minutos.
SELECT SUM(duracion_segundos) AS duracion_total_segundos,
       SUM(duracion_segundos) / 60 AS duracion_total_minutos
FROM canciones;

-- 6. Mostrar todas las canciones que fueron lanzadas antes de 1980.
SELECT titulo, artista, fecha_lanzamiento
FROM canciones
WHERE fecha_lanzamiento < '1980-01-01'
ORDER BY fecha_lanzamiento ASC;
