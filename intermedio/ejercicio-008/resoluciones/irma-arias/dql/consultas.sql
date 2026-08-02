USE futbol_sala_db;

-- 1. Listar jugadores activos con su equipo y sede correspondiente mediante JOINs
SELECT j.nombre_jugador, j.dorsal, e.nombre_equipo, s.nombre_sede AS sede, s.ciudad, j.goles_anotados
FROM jugadores_sala j
JOIN equipos_sala e ON j.id_equipo = e.id_equipo
JOIN sedes_sala s ON e.id_sede = s.id_sede
WHERE j.estado = 'activo'
ORDER BY j.goles_anotados DESC;

-- 2. Conteo de jugadores y total de goles anotados agrupados por equipo y sede
SELECT e.nombre_equipo, s.nombre_sede, COUNT(j.id_jugador) AS total_plantilla, SUM(j.goles_anotados) AS goles_totales
FROM equipos_sala e
JOIN sedes_sala s ON e.id_sede = s.id_sede
LEFT JOIN jugadores_sala j ON e.id_equipo = j.id_equipo
GROUP BY e.nombre_equipo, s.nombre_sede
ORDER BY goles_totales DESC;

-- 3. Ranking TOP 3 de los máximos goleadores del torneo de fútbol sala
SELECT j.nombre_jugador, e.nombre_equipo, j.goles_anotados, j.dorsal
FROM jugadores_sala j
JOIN equipos_sala e ON j.id_equipo = e.id_equipo
ORDER BY j.goles_anotados DESC
LIMIT 3;

-- 4. Filtrar jugadores activos que tengan 10 o más goles anotados en el torneo
SELECT j.nombre_jugador, e.nombre_equipo, j.goles_anotados, j.estado
FROM jugadores_sala j
JOIN equipos_sala e ON j.id_equipo = e.id_equipo
WHERE j.estado = 'activo' AND j.goles_anotados >= 10
ORDER BY j.goles_anotados DESC;

-- 5. Promedio de goles anotados agrupados por la ciudad sede del equipo
SELECT s.ciudad, COUNT(j.id_jugador) AS total_jugadores_ciudad, AVG(j.goles_anotados) AS promedio_goles
FROM sedes_sala s
JOIN equipos_sala e ON s.id_sede = e.id_sede
JOIN jugadores_sala j ON e.id_equipo = j.id_equipo
GROUP BY s.ciudad
ORDER BY promedio_goles DESC;
