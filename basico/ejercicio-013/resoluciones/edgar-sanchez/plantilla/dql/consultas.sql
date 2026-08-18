-- Consulta DQL 1: Películas actualmente disponibles en 'Streaming' con calificación superior a 7.0
SELECT 
    pelicula_id,
    titulo,
    subgenero,
    director,
    calificacion_audiencia,
    estado_disponibilidad
FROM peliculas_terror
WHERE estado_disponibilidad = 'Streaming' 
  AND calificacion_audiencia > 7.0
ORDER BY calificacion_audiencia DESC;

-- Consulta DQL 2: Películas activas para emisión inmediata ('En Cartelera' o 'Streaming')
SELECT 
    titulo,
    subgenero,
    anio_estreno,
    estado_disponibilidad
FROM peliculas_terror
WHERE estado_disponibilidad IN ('En Cartelera', 'Streaming')
ORDER BY anio_estreno DESC;

-- Consulta DQL 3: Métricas de catálogo agrupadas por estado de disponibilidad
SELECT 
    estado_disponibilidad,
    COUNT(pelicula_id) AS cantidad_peliculas,
    ROUND(AVG(calificacion_audiencia), 2) AS promedio_calificacion
FROM peliculas_terror
GROUP BY estado_disponibilidad
ORDER BY cantidad_peliculas DESC;