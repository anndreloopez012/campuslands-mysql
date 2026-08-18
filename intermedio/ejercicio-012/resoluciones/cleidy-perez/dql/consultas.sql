-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

SELECT 
    p.nombre_playlist,
    COUNT(p.cancion_id) AS total_canciones,
    SEC_TO_TIME(SUM(c.duracion_segundos)) AS duracion_total,
    ROUND(AVG(c.duracion_segundos), 0) AS duracion_promedio_seg
FROM PlaylistCanciones p
JOIN Canciones c ON p.cancion_id = c.cancion_id
GROUP BY p.nombre_playlist
ORDER BY duracion_total DESC;
