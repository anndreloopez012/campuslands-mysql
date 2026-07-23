SELECT 
    nickname,
    rango,
    partidas_jugadas,
    bajas,
    ROUND(bajas / partidas_jugadas, 2) AS promedio_bajas_por_partida
FROM jugadores_ranking
WHERE partidas_jugadas >= 50
ORDER BY promedio_bajas_por_partida DESC
LIMIT 5;



DELETE FROM jugadores_ranking
WHERE nivel < 5 
  AND victorias = 0 
  AND partidas_jugadas <= 10;


  SELECT 
    rango,
    COUNT(jugador_id) AS total_jugadores,
    ROUND(AVG(puntos_ranking), 2) AS promedio_puntos,
    SUM(bajas) AS total_bajas
FROM jugadores_ranking
GROUP BY rango
HAVING total_jugadores > 2
ORDER BY promedio_puntos DESC;