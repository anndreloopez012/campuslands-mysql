USE campuslands_mysql;

-- =====================================================
-- CONSULTA 1: Tabla de posiciones
-- =====================================================
SELECT 
    nombre_equipo,
    partidos_jugados,
    partidos_ganados,
    partidos_empatados,
    partidos_perdidos,
    goles_favor,
    goles_contra,
    puntos
FROM equipos_liga_vw
ORDER BY puntos DESC, (goles_favor - goles_contra) DESC;

-- =====================================================
-- CONSULTA 2: Equipos activos con ciudad y entrenador
-- =====================================================
SELECT 
    e.nombre_equipo,
    c.nombre_ciudad,
    en.nombre_entrenador
FROM equipos_liga_vw e
INNER JOIN ciudades_liga_vw c
    ON e.id_ciudad = c.id_ciudad
INNER JOIN entrenadores_liga_vw en
    ON e.id_entrenador = en.id_entrenador
WHERE e.estado = 'Activo';

-- =====================================================
-- CONSULTA 3: Diferencia de goles
-- =====================================================
SELECT 
    nombre_equipo,
    goles_favor,
    goles_contra,
    (goles_favor - goles_contra) AS diferencia_goles
FROM equipos_liga_vw
ORDER BY diferencia_goles DESC;

-- =====================================================
-- CONSULTA 4: Entrenadores y puntos obtenidos
-- =====================================================
SELECT 
    en.nombre_entrenador,
    e.nombre_equipo,
    e.puntos
FROM entrenadores_liga_vw en
INNER JOIN equipos_liga_vw e
    ON en.id_entrenador = e.id_entrenador
ORDER BY e.puntos DESC;

-- =====================================================
-- CONSULTA 5: Resumen general de la liga
-- =====================================================
SELECT 
    COUNT(*) AS total_equipos,
    SUM(partidos_jugados) AS total_partidos,
    SUM(goles_favor) AS total_goles,
    ROUND(AVG(puntos),2) AS promedio_puntos
FROM equipos_liga_vw;

-- =====================================================
-- CONSULTA EXTRA: Equipo con más goles a favor
-- =====================================================
SELECT 
    nombre_equipo,
    goles_favor
FROM equipos_liga_vw
ORDER BY goles_favor DESC
LIMIT 1;