-- DQL: Consultas analíticas y reportes de la playlist
USE db_playlist_avanzado;

-- 1. Listado general de canciones ordenadas por reproducciones de mayor a menor
SELECT id, codigo_cancion, titulo, artista, genero_musical, duracion_minutos, reproducciones, estado
FROM canciones_playlist
ORDER BY reproducciones DESC;

-- 2. Filtrar únicamente las canciones favoritas o activas ordenadas por artista
SELECT codigo_cancion, titulo, artista, genero_musical, reproducciones, estado
FROM canciones_playlist
WHERE estado IN ('activa', 'favorita')
ORDER BY artista ASC;

-- 3. Agrupar por género musical para ver el total de canciones y la suma de reproducciones por género
SELECT genero_musical, COUNT(*) AS total_canciones, SUM(reproducciones) AS total_reproducciones_genero
FROM canciones_playlist
GROUP BY genero_musical
ORDER BY total_reproducciones_genero DESC;

-- 4. Top 3 de canciones más reproducidas en la playlist (Ranking de éxito)
SELECT codigo_cancion, titulo, artista, reproducciones, estado
FROM canciones_playlist
ORDER BY reproducciones DESC
LIMIT 3;

-- 5. Métricas globales de la playlist (Duración promedio y reproducciones totales acumuladas)
SELECT ROUND(AVG(duracion_minutos), 2) AS duracion_promedio_min, SUM(reproducciones) AS reproducciones_globales_playlist, COUNT(*) AS total_tracks
FROM canciones_playlist;