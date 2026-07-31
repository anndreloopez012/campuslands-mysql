USE db_playlist_musical;

-- Consulta 1: Listar canciones activas o favoritas ordenadas por reproducciones de mayor a menor
SELECT id, titulo_cancion, artista, genero, duracion_segundos, reproducciones, fecha_agregada 
FROM canciones_playlist 
WHERE estado IN ('activa', 'favorita') 
ORDER BY reproducciones DESC;

-- Consulta 2: Resumen agrupado por género musical, mostrando el total de canciones y el promedio de duración en segundos
SELECT genero, COUNT(*) AS total_canciones, AVG(duracion_segundos) AS promedio_duracion_seg
FROM canciones_playlist
GROUP BY genero;

-- Consulta 3: Top 3 de canciones más reproducidas de la playlist (Ranking de popularidad)
SELECT titulo_cancion, artista, genero, reproducciones, estado
FROM canciones_playlist
ORDER BY reproducciones DESC
LIMIT 3;

-- Consulta 4: Filtrar canciones cuyo género sea 'Pop' o 'Rock' y superen las 10,000 reproducciones
SELECT titulo_cancion, artista, genero, reproducciones, estado
FROM canciones_playlist
WHERE genero IN ('Pop', 'Rock') AND reproducciones > 10000;

-- Consulta 5: Conteo y total acumulado de reproducciones agrupado por el estado de las canciones en la playlist
SELECT estado, COUNT(*) AS cantidad_canciones, SUM(reproducciones) AS reproducciones_totales_estado
FROM canciones_playlist
GROUP BY estado;