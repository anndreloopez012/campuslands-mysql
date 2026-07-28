USE db_pingpong_irma;

-- Consulta 1: Ranking general de jugadores activos ordenados por sus puntos
SELECT 
    nombre_jugador AS Jugador, 
    nivel_experiencia AS Nivel, 
    ranking_puntos AS PuntosRanking, 
    estado AS EstadoActual
FROM jugadores_pingpong
WHERE estado = 'Activo'
ORDER BY ranking_puntos DESC;

-- Consulta 2: Conteo de jugadores agrupados por su nivel de experiencia validado
SELECT 
    nivel_experiencia AS NivelExperiencia, 
    COUNT(*) AS TotalJugadores
FROM jugadores_pingpong
GROUP BY nivel_experiencia
ORDER BY TotalJugadores DESC;

-- Consulta 3: Top 3 de mejores jugadores de ping pong según el puntaje de ranking
SELECT 
    nombre_jugador AS TopJugador, 
    ranking_puntos AS Puntaje
FROM jugadores_pingpong
ORDER BY ranking_puntos DESC
LIMIT 3;

-- Consulta 4: Reporte de rendimiento calculando la diferencia de sets para cada competidor
SELECT 
    nombre_jugador AS Competidor, 
    sets_ganados AS SetsFavor, 
    sets_perdidos AS SetsContra, 
    sets_ganados - sets_perdidos AS DiferenciaSets
FROM jugadores_pingpong
ORDER BY DiferenciaSets DESC;

-- Consulta 5: Conteo de jugadores según su estado actual (Activo, Lesionado, Retirado)
SELECT 
    estado AS Estado, 
    COUNT(*) AS CantidadJugadores
FROM jugadores_pingpong
GROUP BY estado;