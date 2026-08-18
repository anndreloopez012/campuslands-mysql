-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

SELECT 
    p.nombre_playlist,
    p.orden_reproduccion,
    c.titulo,
    c.duracion_segundos,
    SUM(c.duracion_segundos) OVER (
        PARTITION BY p.nombre_playlist 
        ORDER BY p.orden_reproduccion
    ) AS tiempo_acumulado_seg,
    SUM(c.duracion_segundos) OVER (
        PARTITION BY p.nombre_playlist
    ) AS duracion_total_playlist
FROM PlaylistCanciones p
JOIN Canciones c ON p.cancion_id = c.cancion_id
