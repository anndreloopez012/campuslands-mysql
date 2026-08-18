-- Consultas base. Completa o reemplaza segun el enunciado.
WITH MejoresPartidas AS (
    SELECT 
        j.gamertag,
        m.nombre AS mision,
        p.puntuacion_obtenida,
        ROW_NUMBER() OVER(PARTITION BY p.id_jugador ORDER BY p.puntuacion_obtenida DESC) AS ranking
    FROM partidas p
    INNER JOIN jugadores j ON p.id_jugador = j.id
    INNER JOIN misiones m ON p.id_mision = m.id
)
SELECT gamertag, mision, puntuacion_obtenida 
FROM MejoresPartidas 
WHERE ranking = 1;
