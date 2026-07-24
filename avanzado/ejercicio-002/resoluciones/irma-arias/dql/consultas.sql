-- DQL: Consultas analíticas y prueba de ejecución de procedimientos almacenados
USE db_battle_royale_avanzado;

-- Prueba de ejecución del Procedimiento Almacenado (Simula una partida ganada con estadísticas)
CALL sp_actualizar_puntos_jugador('ShadowKing', 150, 12);

-- Consulta 1: Top 5 de jugadores del ranking ordenados por puntos de liga descendente
SELECT 
    gamertag AS Jugador,
    rango_actual AS Rango,
    puntos_liga AS Puntos_Liga,
    eliminaciones_totales AS Kills
FROM ranking_pro
WHERE estado != 'suspendido'
ORDER BY puntos_liga DESC
LIMIT 5;

-- Consulta 2: Promedio de puntos de liga y eliminaciones agrupadas por rango actual
SELECT 
    rango_actual AS Rango,
    COUNT(*) AS Total_Jugadores,
    AVG(puntos_liga) AS Promedio_Puntos,
    AVG(eliminaciones_totales) AS Promedio_Kills
FROM ranking_pro
GROUP BY rango_actual
ORDER BY Promedio_Puntos DESC;

-- Consulta 3: Listado de jugadores con rendimiento destacado (más de 200 eliminaciones y activos o leyenda)
SELECT 
    gamertag AS Jugador,
    rango_actual AS Rango,
    eliminaciones_totales AS Total_Kills,
    partidas_jugadas AS Partidas
FROM ranking_pro
WHERE eliminaciones_totales > 200 AND estado IN ('activo', 'leyenda')
ORDER BY Total_Kills DESC;

-- Consulta 4: Conteo de jugadores clasificados según su estado en el sistema
SELECT 
    estado AS Estado_Cuenta,
    COUNT(*) AS Cantidad_Jugadores,
    SUM(puntos_liga) AS Suma_Puntos_Estado
FROM ranking_pro
GROUP BY estado
ORDER BY Cantidad_Jugadores DESC;

-- Consulta 5: Auditoría y reporte de precisión de Kills por partida para jugadores con más de 50 partidas
SELECT 
    gamertag AS Jugador,
    partidas_jugadas AS Partidas,
    eliminaciones_totales AS Eliminaciones,
    ROUND((eliminaciones_totales / partidas_jugadas), 2) AS Promedio_Kills_Por_Partida
FROM ranking_pro
WHERE partidas_jugadas >= 50
ORDER BY Promedio_Kills_Por_Partida DESC;