CREATE VIEW vw_tabla_clasificacion AS
SELECT 
    e.nombre_equipo,
    COUNT(p.partido_id) AS partidos_jugados,
    SUM(CASE 
        WHEN (p.equipo_local_id = e.equipo_id AND p.goles_local > p.goles_visitante) OR 
             (p.equipo_visitante_id = e.equipo_id AND p.goles_visitante > p.goles_local) THEN 1 
        ELSE 0 
    END) AS victorias,
    SUM(CASE 
        WHEN p.goles_local = p.goles_visitante THEN 1 
        ELSE 0 
    END) AS empates,
    SUM(CASE 
        WHEN (p.equipo_local_id = e.equipo_id AND p.goles_local < p.goles_visitante) OR 
             (p.equipo_visitante_id = e.equipo_id AND p.goles_visitante < p.goles_local) THEN 1 
        ELSE 0 
    END) AS derrotas,
    SUM(CASE 
        WHEN p.equipo_local_id = e.equipo_id THEN p.goles_local 
        ELSE p.goles_visitante 
    END) AS goles_a_favor,
    SUM(CASE 
        WHEN p.equipo_local_id = e.equipo_id THEN p.goles_visitante 
        ELSE p.goles_local 
    END) AS goles_en_contra,
    (SUM(CASE WHEN p.equipo_local_id = e.equipo_id THEN p.goles_local ELSE p.goles_visitante END) - 
     SUM(CASE WHEN p.equipo_local_id = e.equipo_id THEN p.goles_visitante ELSE p.goles_local END)) AS diferencia_goles,
    SUM(CASE 
        WHEN (p.equipo_local_id = e.equipo_id AND p.goles_local > p.goles_visitante) OR 
             (p.equipo_visitante_id = e.equipo_id AND p.goles_visitante > p.goles_local) THEN 3
        WHEN p.goles_local = p.goles_visitante THEN 1
        ELSE 0 
    END) AS puntos
FROM equipos_futbol e
LEFT JOIN partidos_liga p ON e.equipo_id IN (p.equipo_local_id, p.equipo_visitante_id)
GROUP BY e.equipo_id, e.nombre_equipo
ORDER BY puntos DESC, diferencia_goles DESC, goles_a_favor DESC;

CREATE VIEW vw_lideres_estadisticas_jugadores AS
SELECT 
    j.nombre_completo AS jugador,
    e.nombre_equipo,
    j.posicion,
    COUNT(r.partido_id) AS partidos_disputados,
    SUM(r.minutos_jugados) AS total_minutos,
    SUM(r.goles_anotados) AS total_goles,
    SUM(r.asistencias) AS total_asistencias,
    (SUM(r.goles_anotados) + SUM(r.asistencias)) AS participaciones_directas_gol,
    ROUND(SUM(r.goles_anotados) / NULLIF(COUNT(r.partido_id), 0), 2) AS promedio_goles_por_partido
FROM jugadores_futbol j
INNER JOIN equipos_futbol e ON j.equipo_id = e.equipo_id
LEFT JOIN rendimiento_jugadores_partido r ON j.jugador_id = r.jugador_id
GROUP BY j.jugador_id, j.nombre_completo, e.nombre_equipo, j.posicion
ORDER BY participaciones_directas_gol DESC, total_goles DESC;

CREATE VIEW vw_resumen_nomina_y_rendimiento_clubes AS
SELECT 
    e.nombre_equipo,
    COUNT(DISTINCT j.jugador_id) AS cantidad_jugadores,
    SUM(j.salario_anual_usd) AS masa_salarial_total_usd,
    ROUND(AVG(j.salario_anual_usd), 2) AS salario_promedio_usd,
    COALESCE(SUM(r.goles_anotados), 0) AS goles_totales_plantilla
FROM equipos_futbol e
LEFT JOIN jugadores_futbol j ON e.equipo_id = j.equipo_id
LEFT JOIN rendimiento_jugadores_partido r ON j.jugador_id = r.jugador_id
GROUP BY e.equipo_id, e.nombre_equipo
ORDER BY masa_salarial_total_usd DESC;

SELECT * FROM vw_tabla_clasificacion;

SELECT * FROM vw_lideres_estadisticas_jugadores;

SELECT * FROM vw_resumen_nomina_y_rendimiento_clubes;