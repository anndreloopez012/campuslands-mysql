-- DQL: Consultas avanzadas y reportes analíticos para el torneo MOBA
USE db_esports_moba;

-- Consulta 1: Top 5 de equipos con mayor puntaje de liga clasificados o en competencia
SELECT 
    nombre_equipo AS Equipo,
    region AS Region,
    puntos_liga AS Puntos,
    premio_acumulado AS Premio_USD
FROM torneos_moba
WHERE estado IN ('clasificado', 'en_competencia', 'campeon')
ORDER BY puntos_liga DESC
LIMIT 5;

-- Consulta 2: Resumen financiero y promedio de puntos agrupados por estado del equipo
SELECT 
    estado AS Estado_Equipo,
    COUNT(*) AS Total_Equipos,
    SUM(premio_acumulado) AS Bolsa_Premios_Total,
    AVG(puntos_liga) AS Promedio_Puntos
FROM torneos_moba
GROUP BY estado
ORDER BY Bolsa_Premios_Total DESC;

-- Consulta 3: Listado de equipos con una tasa de victoria superior al 60%
SELECT 
    nombre_equipo AS Equipo,
    partidas_ganadas AS Ganadas,
    partidas_perdidas Perdidas,
    ROUND((partidas_ganadas * 100.0 / (partidas_ganadas + partidas_perdidas)), 2) AS Win_Rate_Porc
FROM torneos_moba
WHERE (partidas_ganadas + partidas_perdidas) > 0 
  AND (partidas_ganadas * 100.0 / (partidas_ganadas + partidas_perdidas)) > 60
ORDER BY Win_Rate_Porc DESC;

-- Consulta 4: Rendimiento y acumulación de premios agrupados por región geográfica
SELECT 
    region AS Region_Mundial,
    COUNT(*) AS Cantidad_Equipos,
    SUM(puntos_liga) AS Total_Puntos_Region,
    SUM(premio_acumulado) AS Total_Premios_Region
FROM torneos_moba
GROUP BY region
ORDER BY Total_Premios_Region DESC;

-- Consulta 5: Auditoría de equipos eliminados o con bajo rendimiento para control transaccional
SELECT 
    nombre_equipo AS Equipo,
    region AS Region,
    puntos_liga AS Puntos,
    partidas_perdidas AS Derrotas,
    estado AS Estado_Actual
FROM torneos_moba
WHERE estado = 'eliminado'
ORDER BY partidas_perdidas DESC;