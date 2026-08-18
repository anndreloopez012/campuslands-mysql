-- Consultas y vistas avanzadas para la liga de fútbol
USE campuslands_mysql;

-- 1. VISTA AVANZADA: Tabla general de posiciones (Calcula puntos y diferencia de goles dinámicamente)
CREATE OR REPLACE VIEW vista_tabla_posiciones AS
SELECT 
    equipo,
    partidos_jugados,
    partidos_ganados,
    partidos_empatados,
    partidos_perdidos,
    goles_favor,
    goles_contra,
    (goles_favor - goles_contra) AS diferencia_goles,
    ((partidos_ganados * 3) + (partidos_empatados * 1)) AS puntos,
    estado
FROM ejercicio_007_liga_futbol;

-- Consulta sobre la vista avanzada (Ordenada por puntos y diferencia de goles)
SELECT * FROM vista_tabla_posiciones 
ORDER BY puntos DESC, diferencia_goles DESC;


-- 2. VISTA AVANZADA: Rendimiento ofensivo y defensivo de equipos activos
CREATE OR REPLACE VIEW vista_rendimiento_equipos AS
SELECT 
    equipo,
    ROUND((goles_favor / partidos_jugados), 2) AS promedio_goles_favor,
    ROUND((goles_contra / partidos_jugados), 2) AS promedio_goles_contra,
    estado
FROM ejercicio_007_liga_futbol
WHERE estado = 'activo';

-- Consulta usando la vista 2 (Los 3 equipos con mejor promedio goleador)
SELECT * FROM vista_rendimiento_equipos 
ORDER BY promedio_goles_favor DESC 
LIMIT 3;


-- 3. VISTA AVANZADA: Equipos con problemas (sancionados o descendidos)
CREATE OR REPLACE VIEW vista_equipos_criticos AS
SELECT equipo, estado, partidos_perdidos
FROM ejercicio_007_liga_futbol
WHERE estado IN ('descendido', 'sancionado');

-- Consulta sobre la vista 3
SELECT * FROM vista_equipos_criticos 
ORDER BY partidos_perdidos DESC;


-- 4. Consulta directa 1: Filtrar equipos invictos o con pocas derrotas (menos de 3 derrotas)
SELECT equipo, partidos_ganados, partidos_perdidos, 
       ((partidos_ganados * 3) + partidos_empatados) AS puntos
FROM ejercicio_007_liga_futbol
WHERE partidos_perdidos <= 2
ORDER BY puntos DESC;


-- 5. Consulta directa 2: Resumen estadístico global de la liga
SELECT 
    COUNT(*) AS total_equipos,
    SUM(goles_favor) AS total_goles_anotados,
    ROUND(AVG(goles_favor), 2) AS media_goles_por_equipo
FROM ejercicio_007_liga_futbol;