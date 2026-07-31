USE db_pingpong_torneo;

-- Consulta 1: Ranking general de jugadores activos ordenados por sus puntos de mayor a menor
SELECT id, nombre_jugador, nivel_categoria, partidos_ganados, partidos_perdidos, ranking_puntos, fecha_registro 
FROM jugadores_pingpong 
WHERE estado = 'activo' 
ORDER BY ranking_puntos DESC;

-- Consulta 2: Resumen agrupado por nivel de categoría, mostrando el total de jugadores y promedio de puntos de ranking
SELECT nivel_categoria, COUNT(*) AS total_jugadores, AVG(ranking_puntos) AS promedio_ranking
FROM jugadores_pingpong
GROUP BY nivel_categoria;

-- Consulta 3: Top 3 de jugadores con mayor cantidad de partidos ganados (Ranking de efectividad)
SELECT nombre_jugador, nivel_categoria, partidos_ganados, partidos_perdidos, ranking_puntos, estado
FROM jugadores_pingpong
ORDER BY partidos_ganados DESC
LIMIT 3;

-- Consulta 4: Filtrar jugadores activos que tengan un ranking superior a 2000 puntos y más de 25 victorias
SELECT nombre_jugador, nivel_categoria, partidos_ganados, partidos_perdidos, ranking_puntos
FROM jugadores_pingpong
WHERE estado = 'activo' AND ranking_puntos > 2000 AND partidos_ganados > 25;

-- Consulta 5: Conteo y total acumulado de partidos ganados agrupados por el estado actual de los jugadores
SELECT estado, COUNT(*) AS cantidad_jugadores, SUM(partidos_ganados) AS total_victorias_estado
FROM jugadores_pingpong
GROUP BY estado;