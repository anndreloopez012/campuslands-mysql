-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

SELECT 
    pc.nombre_playlist,
    u.nombre_usuario AS creador,
    COUNT(pc.id_cancion) AS total_canciones,
    ROUND(SUM(c.duracion_segundos) / 60.0, 2) AS duracion_total_minutos
FROM playlist_canciones pc
JOIN usuarios u ON pc.id_usuario = u.id_usuario
JOIN canciones c ON pc.id_cancion = c.id_cancion
GROUP BY pc.nombre_playlist, u.nombre_usuario;
