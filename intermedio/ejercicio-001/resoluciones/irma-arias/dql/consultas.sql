-- DQL: Consultas analíticas utilizando INNER JOIN y agregaciones de negocio
USE db_esports_moba_intermedio;

-- Consulta 1: Listado detallado de jugadores activos y el equipo al que pertenecen
SELECT 
    j.gamertag AS Gamertag_Jugador,
    j.nombre_real AS Nombre_Real,
    j.rol AS Rol_Juego,
    e.nombre_equipo AS Equipo,
    e.region AS Region
FROM jugadores j
INNER JOIN equipos e ON j.id_equipo = e.id_equipo
WHERE e.estado_equipo = 'activo'
ORDER BY e.puntos_ranking DESC;

-- Consulta 2: Top de equipos con mayor puntaje de ranking y conteo de sus jugadores registrados
SELECT 
    e.nombre_equipo AS Equipo,
    e.region AS Region,
    e.puntos_ranking AS Puntaje_Ranking,
    COUNT(j.id_jugador) AS Total_Jugadores
FROM equipos e
INNER JOIN jugadores j ON e.id_equipo = j.id_equipo
GROUP BY e.id_equipo, e.nombre_equipo, e.region, e.puntos_ranking
ORDER BY Puntaje_Ranking DESC;

-- Consulta 3: Reporte de jugadores que juegan en la posición de 'Mid' con su respectivo equipo y región
SELECT 
    j.gamertag AS Jugador_Mid,
    e.nombre_equipo AS Equipo,
    e.region AS Region
FROM jugadores j
INNER JOIN equipos e ON j.id_equipo = e.id_equipo
WHERE j.rol = 'Mid'
ORDER BY e.puntos_ranking DESC;

-- Consulta 4: Promedio de puntos de ranking agrupados por región de los equipos participantes
SELECT 
    e.region AS Region,
    COUNT(DISTINCT e.id_equipo) AS Total_Equipos_Region,
    AVG(e.puntos_ranking) AS Promedio_Puntos_Ranking
FROM equipos e
INNER JOIN jugadores j ON e.id_equipo = j.id_equipo
GROUP BY e.region
ORDER BY Promedio_Puntos_Ranking DESC;

-- Consulta 5: Listado de equipos de la región 'Norteamérica' junto con los miembros de su plantilla
SELECT 
    e.nombre_equipo AS Equipo_NA,
    j.gamertag AS Integrante,
    j.rol AS Rol
FROM equipos e
INNER JOIN jugadores j ON e.id_equipo = j.id_equipo
WHERE e.region = 'Norteamérica'
ORDER BY j.rol ASC;