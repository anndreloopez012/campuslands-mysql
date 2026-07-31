USE db_animacion_3d;

-- Consulta 1: Listar todas las escenas ordenadas por la cantidad de fotogramas de menor a mayor (ASC por defecto)
SELECT id, nombre_escena, software_3d, fotogramas_totales, tiempo_render_horas, complejidad_poligonal, estado
FROM proyectos_animacion
ORDER BY fotogramas_totales ASC;

-- Consulta 2: Ordenar los proyectos de mayor a menor tiempo de renderizado (DESC) para identificar los más costosos en procesamiento
SELECT nombre_escena, software_3d, tiempo_render_horas, complejidad_poligonal, estado
FROM proyectos_animacion
ORDER BY tiempo_render_horas DESC;

-- Consulta 3: Ordenamiento multi-columna: ordenar primero por software en orden alfabético y secundariamente por tiempo de render de mayor a menor
SELECT nombre_escena, software_3d, tiempo_render_horas, estado
FROM proyectos_animacion
ORDER BY software_3d ASC, tiempo_render_horas DESC;

-- Consulta 4: Filtrar escenas que ya estén 'renderizadas' y ordenarlas por fotogramas totales de forma descendente (Top de animaciones largas completas)
SELECT nombre_escena, software_3d, fotogramas_totales, tiempo_render_horas, estado
FROM proyectos_animacion
WHERE estado = 'renderizado'
ORDER BY fotogramas_totales DESC;

-- Consulta 5: Resumen agrupado por software 3D, mostrando el promedio de horas de render ordenado del promedio más alto al más bajo
SELECT software_3d, COUNT(*) AS total_escenas, ROUND(AVG(tiempo_render_horas), 1) AS promedio_horas_render
FROM proyectos_animacion
GROUP BY software_3d
ORDER BY promedio_horas_render DESC;