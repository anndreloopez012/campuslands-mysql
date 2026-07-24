-- DQL: Consultas analíticas utilizando LEFT JOIN para evaluar jugadores con o sin partidas
USE db_battle_royale_intermedio;

-- Consulta 1: LEFT JOIN para listar TODOS los jugadores y sus estadísticas (incluyendo los que no han jugado)
SELECT 
    j.nombre_usuario AS Jugador,
    j.rango_actual AS Rango,
    j.nivel_cuenta AS Nivel,
    COALESCE(e.eliminaciones, 0) AS Total_Eliminaciones,
    COALESCE(e.daño_total, 0.00) AS Daño_Acumulado,
    e.posicion_obtenida AS Posicion_Partida
FROM jugadores_br j
LEFT JOIN estadisticas_partidas e ON j.id_jugador = e.id_jugador
ORDER BY j.nivel_cuenta DESC;

-- Consulta 2: Identificar específicamente a los jugadores que AÚN NO tienen registros de partidas (LEFT JOIN + IS NULL)
SELECT 
    j.nombre_usuario AS Jugador_Sin_Partidas,
    j.rango_actual AS Rango,
    j.estado_jugador AS Estado
FROM jugadores_br j
LEFT JOIN estadisticas_partidas e ON j.id_jugador = e.id_jugador
WHERE e.id_estadistica IS NULL;

-- Consulta 3: Top de jugadores con mayor daño total registrado mediante LEFT JOIN
SELECT 
    j.nombre_usuario AS Jugador,
    j.rango_actual AS Rango,
    SUM(e.daño_total) AS Daño_Total_Acumulado
FROM jugadores_br j
LEFT JOIN estadisticas_partidas e ON j.id_jugador = e.id_jugador
GROUP BY j.id_jugador, j.nombre_usuario, j.rango_actual
ORDER BY Daño_Total_Acumulado DESC;

-- Consulta 4: Promedio de eliminaciones por cada rango de jugador utilizando LEFT JOIN y agregaciones
SELECT 
    j.rango_actual AS Rango,
    COUNT(j.id_jugador) AS Cantidad_Jugadores,
    AVG(COALESCE(e.eliminaciones, 0)) AS Promedio_Eliminaciones
FROM jugadores_br j
LEFT JOIN estadisticas_partidas e ON j.id_jugador = e.id_jugador
GROUP BY j.rango_actual
ORDER BY Promedio_Eliminaciones DESC;

-- Consulta 5: Reporte general de partidas ganadas (Posición 1) o podio (Top 3) usando LEFT JOIN
SELECT 
    j.nombre_usuario AS Jugador,
    j.nivel_cuenta AS Nivel,
    e.posicion_obtenida AS Posicion,
    e.fecha_partida AS Fecha
FROM jugadores_br j
LEFT JOIN estadisticas_partidas e ON j.id_jugador = e.id_jugador
WHERE e.posicion_obtenida <= 3
ORDER BY e.posicion_obtenida ASC;