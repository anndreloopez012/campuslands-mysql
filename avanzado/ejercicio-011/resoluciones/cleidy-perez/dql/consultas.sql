-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

WITH VictoriasJugador AS (
    SELECT 
        ganador_id,
        COUNT(*) AS victorias
    FROM Partidos
    GROUP BY ganador_id
)
SELECT 
    j.nombre,
    j.ranking_nacional,
    j.mano_dominante,
    COALESCE(v.victorias, 0) AS total_victorias
FROM Jugadores j
LEFT JOIN VictoriasJugador v ON j.jugador_id = v.ganador_id
ORDER BY total_victorias DESC;
