USE campuslands_mysql;

-- 1. Listado completo ordenado por dificultad
SELECT titulo, tipo_gesta, dificultad, region, completada
FROM gestas_basico
ORDER BY dificultad, titulo;

-- 2. Gestas principales pendientes
SELECT titulo, dificultad, region
FROM gestas_basico
WHERE tipo_gesta = 'principal' AND completada = FALSE;

-- 3. Gestas con mejor recompensa de oro
SELECT titulo, tipo_gesta, recompensa_oro
FROM gestas_basico
ORDER BY recompensa_oro DESC
LIMIT 3;

-- 4. Experiencia promedio otorgada por dificultad
SELECT dificultad, COUNT(*) AS total_gestas, AVG(experiencia_otorgada) AS experiencia_promedio
FROM gestas_basico
GROUP BY dificultad
ORDER BY experiencia_promedio DESC;

-- 5. Gestas completadas por tipo
SELECT tipo_gesta, COUNT(*) AS completadas
FROM gestas_basico
WHERE completada = TRUE
GROUP BY tipo_gesta
ORDER BY completadas DESC;

-- 6. Gestas disponibles en una region especifica
SELECT titulo, tipo_gesta, dificultad
FROM gestas_basico
WHERE region = 'Ruinas de Ashen';
