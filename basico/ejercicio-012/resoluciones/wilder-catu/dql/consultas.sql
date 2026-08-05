
USE campuslands_mysql;

-- 1. Mostrar todas las canciones
SELECT
    titulo,
    artista,
    genero
FROM playlist_musical;

-- 2. Mostrar canciones activas
SELECT
    titulo,
    artista,
    estado
FROM playlist_musical
WHERE estado = 'Activa';

-- 3. Total de canciones por género
SELECT
    genero AS Genero,
    COUNT(*) AS Total_Canciones
FROM playlist_musical
GROUP BY genero
ORDER BY Total_Canciones DESC;

-- 4. Top 5 canciones con más reproducciones
SELECT
    titulo,
    artista,
    reproducciones
FROM playlist_musical
ORDER BY reproducciones DESC
LIMIT 5;

-- 5. Duración total de la playlist
SELECT
    SUM(duracion_segundos) AS Duracion_Total_Segundos
FROM playlist_musical;

-- 6. Canciones agregadas más recientemente
SELECT
    titulo,
    fecha_agregada
FROM playlist_musical
ORDER BY fecha_agregada DESC;