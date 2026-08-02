USE liga_futbol_db;

-- 1. Listar jugadores activos con el nombre de su equipo y estadio mediante JOIN
SELECT j.nombre_jugador, j.posicion, e.nombre_equipo AS equipo, e.estadio, j.goles_anotados
FROM jugadores_liga j
JOIN equipos_liga e ON j.id_equipo = e.id_equipo
WHERE j.estado = 'activo'
ORDER BY j.goles_anotados DESC;

-- 2. Conteo de jugadores y total de goles anotados agrupados por cada equipo de la liga
SELECT e.nombre_equipo, COUNT(j.id_jugador) AS total_jugadores, SUM(j.goles_anotados) AS goles_totales
FROM equipos_liga e
LEFT JOIN jugadores_liga j ON e.id_equipo = j.id_equipo
GROUP BY e.nombre_equipo
ORDER BY goles_totales DESC;

-- 3. Ranking TOP 3 de los máximos goleadores de la liga con su respectivo equipo
SELECT j.nombre_jugador, e.nombre_equipo, j.goles_anotados, j.posicion
FROM jugadores_liga j
JOIN equipos_liga e ON j.id_equipo = e.id_equipo
ORDER BY j.goles_anotados DESC
LIMIT 3;

-- 4. Filtrar mediocampistas o delanteros activos que tengan más de 5 goles anotados
SELECT j.nombre_jugador, j.posicion, e.nombre_equipo, j.goles_anotados
FROM jugadores_liga j
JOIN equipos_liga e ON j.id_equipo = e.id_equipo
WHERE j.posicion IN ('Mediocampista', 'Delantero') AND j.goles_anotados > 5
ORDER BY j.goles_anotados DESC;

-- 5. Promedio de goles y tarjetas amarillas agrupados por la posición en el campo
SELECT posicion, COUNT(*) AS total_en_posicion, AVG(goles_anotados) AS promedio_goles, AVG(tarjetas_amarillas) AS promedio_tarjetas
FROM jugadores_liga
GROUP BY posicion
ORDER BY promedio_goles DESC;
