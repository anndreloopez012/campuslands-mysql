CREATE VIEW vw_resumen_general_liga AS
SELECT 
    e.nombre_equipo,
    e.ciudad,
    r.anio_temporada,
    r.puntos,
    r.goles_a_favor,
    r.goles_en_contra,
    (r.goles_a_favor - r.goles_en_contra) AS diferencia_goles
FROM equipos e
JOIN rendimiento_temporada r ON e.id_equipo = r.id_equipo;

CREATE VIEW vw_rendimiento_historico AS
SELECT 
    e.id_equipo,
    e.nombre_equipo,
    COUNT(r.anio_temporada) AS temporadas_jugadas,
    SUM(r.puntos) AS puntos_acumulados_historicos,
    SUM(r.goles_a_favor) AS total_goles_a_favor,
    SUM(r.goles_en_contra) AS total_goles_en_contra,
    ROUND(AVG(r.puntos), 2) AS promedio_puntos_por_temporada
FROM equipos e
JOIN rendimiento_temporada r ON e.id_equipo = r.id_equipo
GROUP BY e.id_equipo, e.nombre_equipo;