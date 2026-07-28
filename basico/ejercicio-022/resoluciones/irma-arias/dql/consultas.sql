USE db_animacion_3d_irma;

-- Consulta 1: Shots ordenados de mayor a menor tiempo de renderizado para control de recursos
SELECT 
    id AS CodigoShot, 
    titulo_shot AS Shot3D, 
    software_3d AS Software, 
    tiempo_render_horas AS HorasRender, 
    estado_shot AS Estado
FROM proyectos_animacion
ORDER BY tiempo_render_horas DESC;

-- Consulta 2: Ordenamiento múltiple por complejidad de geometría (polígonos) y luego por tiempo de render
SELECT 
    titulo_shot AS Shot3D, 
    software_3d AS Software, 
    poligonos_millones AS PoligonosMillones, 
    tiempo_render_horas AS HorasRender
FROM proyectos_animacion
ORDER BY poligonos_millones DESC, tiempo_render_horas DESC;

-- Consulta 3: Top 3 de shots con menor cantidad de poligonos (optimización de recursos)
SELECT 
    titulo_shot AS ShotOptimizado, 
    software_3d AS Software, 
    poligonos_millones AS PoligonosMillones, 
    estado_shot AS Estado
FROM proyectos_animacion
ORDER BY poligonos_millones ASC
LIMIT 3;

-- Consulta 4: Resumen agrupado por software ordenado alfabéticamente por el nombre de la herramienta
SELECT 
    software_3d AS Software3D, 
    COUNT(*) AS TotalShots, 
    AVG(tiempo_render_horas) AS PromedioHorasRender, 
    MAX(poligonos_millones) AS MaxPoligonosMillones
FROM proyectos_animacion
GROUP BY software_3d
ORDER BY software_3d ASC;

-- Consulta 5: Listado de shots ordenados por estado alfabéticamente y de forma descendente por horas de render
SELECT 
    estado_shot AS EstadoShot, 
    titulo_shot AS Shot3D, 
    software_3d AS Software, 
    tiempo_render_horas AS HorasRender
FROM proyectos_animacion
ORDER BY estado_shot ASC, tiempo_render_horas DESC;