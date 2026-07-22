
-- DQL: Consultas y reportes del torneo MOBA
-- Autor: Irma Yaneht Arias García

USE db_moba_torneo;

-- Consulta 1: Ranking del Top 5 de jugadores con mejor puntaje KDA (activos)
SELECT 
    nickname AS Jugador,
    equipo AS Equipo,
    rol AS Rol_Principal,
    puntaje_kda AS KDA
FROM jugadores_moba
WHERE estado = 'activo'
ORDER BY puntaje_kda DESC
LIMIT 5;

-- Consulta 2: Promedio de KDA y total de partidas jugadas agrupadas por rol
SELECT 
    rol AS Rol,
    COUNT(*) AS Total_Jugadores,
    ROUND(AVG(puntaje_kda), 2) AS Promedio_KDA,
    SUM(partidas_jugadas) AS Total_Partidas_Rol
FROM jugadores_moba
GROUP BY rol
ORDER BY Promedio_KDA DESC;

-- Consulta 3: Rendimiento por equipo mostrando el promedio de efectividad (KDA)
SELECT 
    equipo AS Nombre_Equipo,
    COUNT(id) AS Integrantes_Activos,
    ROUND(AVG(puntaje_kda), 2) AS KDA_Promedio_Equipo
FROM jugadores_moba
WHERE estado = 'activo'
GROUP BY equipo
ORDER BY KDA_Promedio_Equipo DESC;

-- Consulta 4: Listado de jugadores con más de 25 partidas jugadas y alto rendimiento (KDA mayor a 4.0)
SELECT 
    nombre_jugador AS Nombre_Real,
    nickname AS Nickname,
    partidas_jugadas AS Partidas,
    puntaje_kda AS KDA
FROM jugadores_moba
WHERE partidas_jugadas > 25 AND puntaje_kda > 4.00
ORDER BY partidas_jugadas DESC;

-- Consulta 5: Reporte general de jugadores excluyendo a los eliminados, ordenados por fecha de inscripción
SELECT 
    nickname AS Nickname,
    equipo AS Equipo,
    estado AS Estado_Actual,
    fecha_inscripcion AS Fecha_Inscripcion
FROM jugadores_moba
WHERE estado != 'eliminado'
ORDER BY fecha_inscripcion ASC;