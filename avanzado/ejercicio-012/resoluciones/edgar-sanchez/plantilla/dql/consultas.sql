SELECT 
    art.nombre_artista,
    alb.titulo_album,
    c.titulo_cancion,
    art.genero_principal,
    c.reproducciones_totales,
    RANK() OVER (
        PARTITION BY art.genero_principal 
        ORDER BY c.reproducciones_totales DESC
    ) AS ranking_por_genero,
    DENSE_RANK() OVER (
        PARTITION BY art.artista_id 
        ORDER BY c.reproducciones_totales DESC
    ) AS ranking_por_artista
FROM canciones c
INNER JOIN albumes alb ON c.album_id = alb.album_id
INNER JOIN artistas art ON alb.artista_id = art.artista_id
ORDER BY art.genero_principal, ranking_por_genero;

SELECT 
    p.nombre_playlist,
    cp.orden_reproduccion,
    c.titulo_cancion,
    art.nombre_artista,
    c.duracion_segundos,
    SUM(c.duracion_segundos) OVER (
        PARTITION BY p.playlist_id 
        ORDER BY cp.orden_reproduccion 
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS duracion_acumulada_segundos,
    AVG(c.duracion_segundos) OVER (
        PARTITION BY p.playlist_id
    ) AS promedio_duracion_playlist_segundos
FROM playlists p
INNER JOIN canciones_playlist cp ON p.playlist_id = cp.playlist_id
INNER JOIN canciones c ON cp.cancion_id = c.cancion_id
INNER JOIN albumes alb ON c.album_id = alb.album_id
INNER JOIN artistas art ON alb.artista_id = art.artista_id
ORDER BY p.playlist_id, cp.orden_reproduccion;