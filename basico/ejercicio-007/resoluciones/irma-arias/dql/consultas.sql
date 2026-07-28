USE db_liga_futbol_irma;

-- Consulta 1: Tabla de posiciones general ordenada por puntos de forma descendente (Líderes de la liga)
SELECT nombre_equipo, ciudad, puntos, (goles_a_favor - goles_en_contra) AS diferencia_goles
FROM equipos
ORDER BY puntos DESC, diferencia_goles DESC;

-- Consulta 2: Top 5 de equipos con mayor cantidad de goles a favor (equipos más goleadores)
SELECT nombre_equipo, goles_a_favor AS total_goles
FROM equipos
ORDER BY goles_a_favor DESC
LIMIT 5;

-- Consulta 3: Equipos ordenados alfabéticamente por su nombre
SELECT nombre_equipo, ciudad, estado
FROM equipos
ORDER BY nombre_equipo ASC;

-- Consulta 4: Equipos con la defensa menos goleada (menos goles en contra)
SELECT nombre_equipo, goles_en_contra AS goles_recibidos
FROM equipos
ORDER BY goles_en_contra ASC;

-- Consulta 5: Reporte general ordenado por puntos y desempatado por goles a favor con alias claros
SELECT 
    nombre_equipo AS Equipo, 
    puntos AS Pts, 
    goles_a_favor AS GF, 
    goles_en_contra AS GC, 
    estado AS EstadoEquipo
FROM equipos
WHERE estado = 'Activo'
ORDER BY puntos DESC, GF DESC;