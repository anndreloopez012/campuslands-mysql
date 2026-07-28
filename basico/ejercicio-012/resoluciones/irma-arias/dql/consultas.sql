USE db_playlist_musical_irma;

-- Consulta 1: Listado general de canciones disponibles ordenadas por reproducciones
SELECT 
    titulo AS Cancion, 
    artista AS Artista, 
    genero AS GeneroMusical, 
    reproducciones AS TotalReproducciones
FROM canciones
WHERE estado = 'Disponible'
ORDER BY reproducciones DESC;

-- Consulta 2: Top 3 de canciones más reproducidas (Ranking musical)
SELECT 
    titulo AS CancionDestacada, 
    artista AS Artista, 
    reproducciones AS Reproducciones
FROM canciones
ORDER BY reproducciones DESC
LIMIT 3;

-- Consulta 3: Conteo y duración promedio de canciones agrupadas por género musical
SELECT 
    genero AS Genero, 
    COUNT(*) AS CantidadCanciones, 
    AVG(duracion_minutos) AS DuracionPromedioMin
FROM canciones
GROUP BY genero
ORDER BY CantidadCanciones DESC;

-- Consulta 4: Canciones con una duración mayor a 4 minutos orientadas a larga escucha
SELECT 
    titulo AS CancionExtensa, 
    artista AS Artista, 
    duracion_minutos AS DuracionMin
FROM canciones
WHERE duracion_minutos > 4.00
ORDER BY duracion_minutos DESC;

-- Consulta 5: Resumen de canciones agrupadas por su estado actual en la playlist
SELECT 
    estado AS EstadoPlaylist, 
    COUNT(*) AS TotalCanciones
FROM canciones
GROUP BY estado;