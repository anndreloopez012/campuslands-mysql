-- Consultas base. Completa o reemplaza segun el enunciado.
SELECT 
    m.nombre AS mision,
    j.gamertag,
    p.puntuacion_obtenida,
    ROW_NUMBER() OVER(PARTITION BY p.id_mision ORDER BY p.puntuacion_obtenida DESC) AS posicion_exacta,
    DENSE_RANK() OVER(PARTITION BY p.id_mision ORDER BY p.puntuacion_obtenida DESC) AS rango_puntuacion
FROM partidas p
INNER JOIN jugadores j ON p.id_jugador = j.id
INNER JOIN misiones m ON p.id_mision = m.id;

SELECT 
    j.gamertag,
    m.nombre AS mision,
    p.puntuacion_obtenida,
    ROUND(AVG(p.puntuacion_obtenida) OVER(PARTITION BY p.id_mision), 2) AS promedio_mision,
    p.puntuacion_obtenida - ROUND(AVG(p.puntuacion_obtenida) OVER(PARTITION BY p.id_mision), 2) AS diferencia_vs_promedio
FROM partidas p
INNER JOIN jugadores j ON p.id_jugador = j.id
INNER JOIN misiones m ON p.id_mision = m.id;