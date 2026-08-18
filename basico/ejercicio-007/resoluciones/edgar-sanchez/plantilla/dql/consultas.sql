-- Consulta 1: Tabla de posiciones estándar (Ordenamiento primario por puntos y secundario por diferencia de goles)
SELECT 
    nombre_equipo,
    partidos_jugados,
    puntos,
    (goles_a_favor - goles_en_contra) AS diferencia_goles
FROM equipos_liga
ORDER BY puntos DESC, diferencia_goles DESC;

-- Consulta 2: Equipos ordenados alfabéticamente por ciudad y luego por nombre
SELECT 
    ciudad,
    nombre_equipo,
    puntos
FROM equipos_liga
ORDER BY ciudad ASC, nombre_equipo ASC;

-- Consulta 3: Ranking ofensivo (Mayor cantidad de goles anotados)
SELECT 
    nombre_equipo,
    goles_a_favor,
    victorias
FROM equipos_liga
ORDER BY goles_a_favor DESC;

-- Consulta 4: Ranking defensivo (Menor cantidad de goles recibidos)
SELECT 
    nombre_equipo,
    goles_en_contra,
    derrotas
FROM equipos_liga
ORDER BY goles_en_contra ASC;