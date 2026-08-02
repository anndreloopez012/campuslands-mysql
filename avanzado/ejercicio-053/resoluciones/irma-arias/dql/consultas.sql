USE arquitectura_3d_db;

-- 1. Filtrar proyectos que ya se encuentran completados ordenados por calificación del cliente
SELECT nombre_proyecto, software_modelado, calificacion_cliente, costo_usd
FROM proyectos_arquitectura
WHERE estado = 'completado'
ORDER BY calificacion_cliente DESC;

-- 2. Conteo de proyectos y costo promedio agrupados por software de modelado
SELECT software_modelado, COUNT(*) AS total_proyectos, AVG(costo_usd) AS costo_promedio
FROM proyectos_arquitectura
GROUP BY software_modelado
ORDER BY costo_promedio DESC;

-- 3. Ranking TOP 3 de los proyectos con mayor costo en USD
SELECT nombre_proyecto, software_modelado, costo_usd, estado
FROM proyectos_arquitectura
ORDER BY costo_usd DESC
LIMIT 3;

-- 4. Filtrar proyectos en proceso o en revisión con área mayor a 500 metros cuadrados
SELECT nombre_proyecto, software_modelado, area_metros2, estado
FROM proyectos_arquitectura
WHERE area_metros2 > 500.00 AND estado != 'completado'
ORDER BY area_metros2 DESC;

-- 5. Inversión total generada (suma de costos) agrupada por estado actual del proyecto
SELECT estado, COUNT(*) AS cantidad_proyectos, SUM(costo_usd) AS inversion_total
FROM proyectos_arquitectura
GROUP BY estado;
