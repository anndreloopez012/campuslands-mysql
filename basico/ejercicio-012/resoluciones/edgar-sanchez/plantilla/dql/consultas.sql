-- Consulta DQL 1: Listar las canciones marcadas como favoritas ordenadas por reproducciones
SELECT 
    cancion_id,
    titulo,
    artista,
    genero,
    reproducciones
FROM playlist_canciones
WHERE es_favorita = TRUE
ORDER BY reproducciones DESC;

-- Consulta DQL 2: Métricas de reproducción y duración acumulada (en minutos) agrupadas por género
SELECT 
    genero,
    COUNT(cancion_id) AS total_canciones,
    SUM(reproducciones) AS reproducciones_totales,
    ROUND(SUM(duracion_segundos) / 60.0, 2) AS duracion_total_minutos
FROM playlist_canciones
GROUP BY genero
ORDER BY reproducciones_totales DESC;

-- Consulta DQL 3: Canciones con duración superior al promedio general de la playlist
SELECT 
    titulo,
    artista,
    duracion_segundos,
    genero
FROM playlist_canciones
WHERE duracion_segundos > (SELECT AVG(duracion_segundos) FROM playlist_canciones)
ORDER BY duracion_segundos DESC;