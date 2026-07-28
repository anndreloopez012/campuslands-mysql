USE db_futbol_sala_irma;

-- Consulta 1: Tabla de posiciones general ordenada por puntos
SELECT 
    nombre_club AS Club, 
    partidos_jugados AS PJ, 
    goles_favor AS GF, 
    goles_contra AS GC, 
    puntos AS Pts
FROM equipos_sala
ORDER BY puntos DESC, GF DESC;

-- Consulta 2: Listado de equipos activos en el torneo
SELECT nombre_club AS ClubActivo, estado AS Estado
FROM equipos_sala
WHERE estado = 'Activo';

-- Consulta 3: Top 3 de equipos más goleadores del torneo de fútbol sala
SELECT nombre_club AS Club, goles_favor AS GolesAnotados
FROM equipos_sala
ORDER BY goles_favor DESC
LIMIT 3;

-- Consulta 4: Equipos con mejor defensa (menor cantidad de goles en contra)
SELECT nombre_club AS Club, goles_contra AS GolesRecibidos
FROM equipos_sala
ORDER BY goles_contra ASC;

-- Consulta 5: Reporte detallado calculando la diferencia de goles para cada club
SELECT 
    nombre_club AS Equipo, 
    goles_favor - goles_contra AS DiferenciaGoles, 
    puntos AS PuntosTotales
FROM equipos_sala
ORDER BY DiferenciaGoles DESC;