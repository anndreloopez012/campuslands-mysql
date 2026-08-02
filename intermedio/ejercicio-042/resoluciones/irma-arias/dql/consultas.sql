USE playlist_musical_db;

-- 1. Informe general de canciones: Listar cada track con su artista, país de origen, playlist asignada, género y reproducciones en formato de reporte analítico
SELECT c.titulo_cancion, a.nombre_artista, a.pais_origen, p.nombre_playlist, c.genero_musical, c.duracion_segundos, c.reproducciones, c.estado_cancion
FROM canciones c
JOIN artistas a ON c.id_artista = a.id_artista
JOIN playlists p ON c.id_playlist = p.id_playlist
ORDER BY c.reproducciones DESC;

-- 2. Informe agrupado por Playlist: Calcular el total de canciones, el acumulado de reproducciones y la duración promedio en minutos de cada lista de reproducción
SELECT p.nombre_playlist, p.descripcion, COUNT(c.id_cancion) AS total_canciones, SUM(c.reproducciones) AS reproducciones_totales_playlist, ROUND(AVG(c.duracion_segundos) / 60, 2) AS duracion_promedio_minutos
FROM playlists p
JOIN canciones c ON p.id_playlist = c.id_playlist
GROUP BY p.id_playlist, p.nombre_playlist, p.descripcion
ORDER BY reproducciones_totales_playlist DESC;

-- 3. Informe agrupado por Género Musical: Evaluar el impacto de cada género calculando la cantidad de pistas y el total de reproducciones acumuladas
SELECT c.genero_musical, COUNT(c.id_cancion) AS cantidad_canciones, SUM(c.reproducciones) AS total_reproducciones_genero, MAX(c.reproducciones) AS cancion_mas_reproducida
FROM canciones c
GROUP BY c.genero_musical
ORDER BY total_reproducciones_genero DESC;

-- 4. Informe analítico de Artistas: Calcular cuántas canciones tiene cada artista registradas en el sistema y su promedio de reproducciones por tema
SELECT a.nombre_artista, a.pais_origen, COUNT(c.id_cancion) AS canciones_registradas, AVG(c.reproducciones) AS promedio_reproducciones_artista
FROM artistas a
JOIN canciones c ON a.id_artista = c.id_artista
GROUP BY a.id_artista, a.nombre_artista, a.pais_origen
ORDER BY promedio_reproducciones_artista DESC;

-- 5. Informe de Ranking TOP 3 de las canciones más populares globalmente integrando datos completos de sus artistas y playlists
SELECT c.titulo_cancion, a.nombre_artista, p.nombre_playlist, c.genero_musical, c.reproducciones
FROM canciones c
JOIN artistas a ON c.id_artista = a.id_artista
JOIN playlists p ON c.id_playlist = p.id_playlist
ORDER BY c.reproducciones DESC
LIMIT 3;
