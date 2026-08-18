SELECT 
    m.nombre AS mision,
    j.gamertag,
    p.puntuacion_obtenida,
    ROW_NUMBER() OVER(PARTITION BY p.id_mision ORDER BY p.puntuacion_obtenida DESC) AS posicion_exacta,
    DENSE_RANK() OVER(PARTITION BY p.id_mision ORDER BY p.puntuacion_obtenida DESC) AS rango_puntuacion
FROM partidas p
INNER JOIN jugadores j ON p.id_jugador = j.id
INNER JOIN misiones m ON p.id_mision = m.id;