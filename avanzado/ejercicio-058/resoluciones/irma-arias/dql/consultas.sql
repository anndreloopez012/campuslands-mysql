USE academia_tech_db;

-- 1. Filtrar cursos que se encuentran activos ordenados por calificación promedio
SELECT nombre_curso, tecnologia, calificacion_promedio, costo_usd
FROM cursos_academia
WHERE estado = 'activo'
ORDER BY calificacion_promedio DESC;

-- 2. Conteo de cursos y costo promedio agrupados por estado actual del curso
SELECT estado, COUNT(*) AS total_cursos, AVG(costo_usd) AS costo_promedio
FROM cursos_academia
GROUP BY estado
ORDER BY total_cursos DESC;

-- 3. Ranking TOP 3 de los cursos activos más costosos
SELECT nombre_curso, tecnologia, costo_usd, duracion_semanas
FROM cursos_academia
WHERE estado = 'activo'
ORDER BY costo_usd DESC
LIMIT 3;

-- 4. Filtrar cursos finalizados o pausados con una duración mayor o igual a 6 semanas
SELECT nombre_curso, tecnologia, duracion_semanas, estado
FROM cursos_academia
WHERE estado IN ('finalizado', 'pausado') AND duracion_semanas >= 6
ORDER BY duracion_semanas DESC;

-- 5. Inversión acumulada (suma de costos) de los cursos activos agrupados por tecnología
SELECT tecnologia, COUNT(*) AS cantidad_cursos, SUM(costo_usd) AS inversion_total
FROM cursos_academia
WHERE estado = 'activo'
GROUP BY tecnologia
ORDER BY inversion_total DESC;
