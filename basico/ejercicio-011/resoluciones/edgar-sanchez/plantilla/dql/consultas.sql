-- Consulta DQL 1: Validar efectividad de jugadores activos ordenados por puntos de ranking
SELECT 
    jugador_id,
    nombre_completo,
    categoria,
    mano_dominante,
    puntos_ranking,
    (partidos_ganados + partidos_perdidos) AS total_partidos
FROM jugadores_pingpong
WHERE estado_actividad = 'Activo'
ORDER BY puntos_ranking DESC;

-- Consulta DQL 2: Agrupamiento por categoría para verificar recuento de jugadores por lateralidad
SELECT 
    categoria,
    mano_dominante,
    COUNT(jugador_id) AS cantidad_jugadores,
    AVG(puntos_ranking) AS promedio_puntos
FROM jugadores_pingpong
GROUP BY categoria, mano_dominante
ORDER BY categoria ASC;

-- Consulta DQL 3: Filtrar jugadores jóvenes (Sub-15 y Sub-18) con ranking superior a 1600 puntos
SELECT 
    documento_identidad,
    nombre_completo,
    categoria,
    puntos_ranking
FROM jugadores_pingpong
WHERE categoria IN ('Sub-15', 'Sub-18') 
  AND puntos_ranking > 1600;