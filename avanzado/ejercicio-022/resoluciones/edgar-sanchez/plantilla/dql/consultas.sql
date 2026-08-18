DROP VIEW IF EXISTS vw_resumen_produccion_proyectos;
DROP VIEW IF EXISTS vw_metricas_rendimiento_render;
DROP VIEW IF EXISTS vw_carga_trabajo_artistas;

CREATE VIEW vw_resumen_produccion_proyectos AS
SELECT 
    p.proyecto_id,
    p.nombre_proyecto,
    dir.nombre_artista AS director_proyecto,
    p.fps,
    p.resolucion_target,
    p.estado_proyecto,
    COUNT(DISTINCT e.escena_id) AS total_escenas,
    COALESCE(SUM(e.duracion_frames), 0) AS total_frames_proyecto,
    ROUND(COALESCE(SUM(e.duracion_frames), 0) / p.fps, 2) AS duracion_total_segundos,
    COALESCE(SUM(a.poligono_count), 0) AS total_poligonos_escena
FROM proyectos_animacion p
INNER JOIN artistas_3d dir ON p.director_id = dir.artista_id
LEFT JOIN escenas_3d e ON p.proyecto_id = e.proyecto_id
LEFT JOIN animaciones_assets a ON e.escena_id = a.escena_id
GROUP BY 
    p.proyecto_id, 
    p.nombre_proyecto, 
    dir.nombre_artista, 
    p.fps, 
    p.resolucion_target, 
    p.estado_proyecto;

CREATE VIEW vw_metricas_rendimiento_render AS
SELECT 
    p.nombre_proyecto,
    e.numero_escena,
    e.nombre_escena,
    e.complejidad,
    COUNT(rf.render_id) AS frames_renderizados,
    ROUND(AVG(rf.tiempo_render_segundos), 2) AS promedio_tiempo_frame_seg,
    ROUND(AVG(rf.ram_usada_gb), 2) AS promedio_ram_gb,
    ROUND(SUM(rf.tiempo_render_segundos) / 3600, 2) AS tiempo_total_render_horas
FROM escenas_3d e
INNER JOIN proyectos_animacion p ON e.proyecto_id = p.proyecto_id
INNER JOIN render_frames rf ON e.escena_id = rf.escena_id
WHERE rf.estado_frame = 'Completado'
GROUP BY 
    p.nombre_proyecto, 
    e.numero_escena, 
    e.nombre_escena, 
    e.complejidad;

CREATE VIEW vw_carga_trabajo_artistas AS
SELECT 
    art.artista_id,
    art.nombre_artista,
    art.especialidad,
    COUNT(DISTINCT a.asset_id) AS total_assets_asignados,
    COALESCE(SUM(a.poligono_count), 0) AS poligonos_totales_gestionados,
    COUNT(DISTINCT e.proyecto_id) AS proyectos_involucrados
FROM artistas_3d art
LEFT JOIN animaciones_assets a ON art.artista_id = a.artista_asignado_id
LEFT JOIN escenas_3d e ON a.escena_id = e.escena_id
GROUP BY 
    art.artista_id, 
    art.nombre_artista, 
    art.especialidad;



    
SELECT 
    nombre_proyecto,
    director_proyecto,
    total_escenas,
    total_frames_proyecto,
    duracion_total_segundos,
    total_poligonos_escena,
    estado_proyecto
FROM vw_resumen_produccion_proyectos
ORDER BY proyecto_id ASC;

SELECT 
    nombre_proyecto,
    numero_escena,
    nombre_escena,
    complejidad,
    frames_renderizados,
    promedio_tiempo_frame_seg,
    promedio_ram_gb,
    tiempo_total_render_horas
FROM vw_metricas_rendimiento_render
ORDER BY promedio_tiempo_frame_seg DESC;

SELECT 
    nombre_artista,
    especialidad,
    total_assets_asignados,
    poligonos_totales_gestionados,
    proyectos_involucrados
FROM vw_carga_trabajo_artistas
ORDER BY poligonos_totales_gestionados DESC;