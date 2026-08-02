USE animacion_3d_db;

-- 1. Ordenar proyectos completados por calificación técnica de forma descendente
SELECT nombre_proyecto, software_3d, calificacion_tecnica, presupuesto_usd
FROM proyectos_animacion
WHERE estado = 'completado'
ORDER BY calificacion_tecnica DESC;

-- 2. Ranking TOP 3 de los proyectos con mayor tiempo de render en horas
SELECT nombre_proyecto, software_3d, tiempo_render_horas
FROM proyectos_animacion
ORDER BY tiempo_render_horas DESC
LIMIT 3;

-- 3. Ordenar proyectos por presupuesto de menor a mayor (ASC)
SELECT nombre_proyecto, software_3d, presupuesto_usd, estado
FROM proyectos_animacion
ORDER BY presupuesto_usd ASC;

-- 4. Conteo y promedio de presupuesto agrupados por software 3D ordenados por inversión promedio
SELECT software_3d, COUNT(*) AS total_proyectos, AVG(presupuesto_usd) AS presupuesto_promedio
FROM proyectos_animacion
GROUP BY software_3d
ORDER BY presupuesto_promedio DESC;

-- 5. Listado ordenado alfabéticamente por nombre de proyecto y por tiempo de render
SELECT nombre_proyecto, software_3d, tiempo_render_horas, estado
FROM proyectos_animacion
ORDER BY software_3d ASC, tiempo_render_horas DESC;
