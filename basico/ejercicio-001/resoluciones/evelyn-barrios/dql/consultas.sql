-- dql/consultas.sql
--
-- Consultas para obtener información útil del torneo.

USE torneo_moba;

-- 1. Ranking de jugadores por KDA (Kill/Death/Assist Ratio)
-- Se calcula el KDA como (Asesinatos + Asistencias) / Muertes.
-- Se maneja el caso de 0 muertes para evitar división por cero.
SELECT
    j.nickname AS Jugador,
    e.nombre_equipo AS Equipo,
    SUM(ep.asesinatos) AS Total_Asesinatos,
    SUM(ep.muertes) AS Total_Muertes,
    SUM(ep.asistencias) AS Total_Asistencias,
    (SUM(ep.asesinatos) + SUM(ep.asistencias)) / IF(SUM(ep.muertes) = 0, 1, SUM(ep.muertes)) AS KDA
FROM jugadores j
JOIN equipos e ON j.id_equipo = e.id_equipo
JOIN estadisticas_partida ep ON j.id_jugador = ep.id_jugador
GROUP BY j.id_jugador
ORDER BY KDA DESC;

-- 2. Top 5 jugadores con más asesinatos en una sola partida
SELECT
    j.nickname AS Jugador,
    e.nombre_equipo AS Equipo,
    ep.asesinatos AS Asesinatos_Partida
FROM estadisticas_partida ep
JOIN jugadores j ON ep.id_jugador = j.id_jugador
JOIN equipos e ON j.id_equipo = e.id_equipo
ORDER BY Asesinatos_Partida DESC
LIMIT 5;

-- 3. Jugadores por equipo
-- Muestra un listado de jugadores agrupados por su equipo.
SELECT
    e.nombre_equipo AS Equipo,
    GROUP_CONCAT(j.nickname ORDER BY j.rol SEPARATOR ', ') AS Jugadores
FROM equipos e
JOIN jugadores j ON e.id_equipo = j.id_equipo
GROUP BY e.id_equipo
ORDER BY e.nombre_equipo;

-- 4. Rendimiento promedio por rol
SELECT
    j.rol AS Rol,
    AVG(ep.asesinatos) AS Promedio_Asesinatos,
    AVG(ep.muertes) AS Promedio_Muertes,
    AVG(ep.asistencias) AS Promedio_Asistencias
FROM jugadores j
JOIN estadisticas_partida ep ON j.id_jugador = ep.id_jugador
GROUP BY j.rol
ORDER BY Rol;

-- 5. Jugadores con estado 'Activo' que no han jugado partidas
SELECT
    j.nickname AS Jugador,
    e.nombre_equipo AS Equipo
FROM jugadores j
LEFT JOIN estadisticas_partida ep ON j.id_jugador = ep.id_jugador
JOIN equipos e ON j.id_equipo = e.id_equipo
WHERE j.estado = 'Activo' AND ep.id_estadistica IS NULL;
--aqui