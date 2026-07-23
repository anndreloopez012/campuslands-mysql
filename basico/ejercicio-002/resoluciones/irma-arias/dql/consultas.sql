
-- DQL: Consultas analíticas y reportes para el Ranking Battle Royale
USE db_battle_royale;

-- Consulta 1: Top 5 de mejores jugadores ordenados por puntaje total descendente
SELECT 
    gamertag AS Jugador,
    nivel AS Nivel,
    puntaje_total AS Puntaje_Global,
    victorias AS Total_Victorias
FROM jugadores_ranking
WHERE estado = 'activo'
ORDER BY puntaje_total DESC
LIMIT 5;

-- Consulta 2: Promedio general de KDA y puntaje de los jugadores activos
SELECT 
    COUNT(*) AS Total_Jugadores_Activos,
    AVG(puntaje_total) AS Promedio_Puntaje,
    AVG(kda) AS Promedio_KDA
FROM jugadores_ranking
WHERE estado = 'activo';

-- Consulta 3: Listado de jugadores con mayor tasa de efectividad de victorias (> 15%)
SELECT 
    gamertag AS Jugador,
    partidas_jugadas AS Partidas,
    victorias AS Victorias,
    ROUND((victorias * 100.0 / partidas_jugadas), 2) AS Porcentaje_Victoria_Porc
FROM jugadores_ranking
WHERE partidas_jugadas > 0 AND (victorias * 100.0 / partidas_jugadas) > 15
ORDER BY Porcentaje_Victoria_Porc DESC;

-- Consulta 4: Conteo de jugadores agrupados por su estado actual
SELECT 
    estado AS Estado_Jugador,
    COUNT(*) AS Cantidad_Total,
    AVG(nivel) AS Nivel_Promedio
FROM jugadores_ranking
GROUP BY estado
ORDER BY Cantidad_Total DESC;

-- Consulta 5: Búsqueda avanzada de jugadores veteranos (nivel > 40) ordenados por KDA
SELECT 
    gamertag AS Jugador,
    nivel AS Nivel,
    kda AS KDA_Ratio,
    fecha_registro AS Fecha_De_Ingreso
FROM jugadores_ranking
WHERE nivel > 40 AND estado = 'activo'
ORDER BY kda DESC;