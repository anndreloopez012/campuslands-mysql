USE estudio_tatuajes_db;

-- 1. Total de citas y costo promedio agrupados por estilo de tatuaje (solo completados)
SELECT estilo_tatuaje, COUNT(*) AS total_citas, AVG(costo_usd) AS costo_promedio
FROM citas_tatuajes
WHERE estado = 'completado'
GROUP BY estilo_tatuaje
ORDER BY costo_promedio DESC;

-- 2. Ranking TOP 3 de los tatuajes más costosos del estudio
SELECT nombre_cliente, estilo_tatuaje, costo_usd
FROM citas_tatuajes
ORDER BY costo_usd DESC
LIMIT 3;

-- 3. Conteo de citas según su estado actual en el estudio
SELECT estado, COUNT(*) AS cantidad_citas
FROM citas_tatuajes
GROUP BY estado;

-- 4. Listado de citas de larga duración (más de 4 horas) que fueron completadas
SELECT nombre_cliente, estilo_tatuaje, horas_estimadas, costo_usd
FROM citas_tatuajes
WHERE horas_estimadas > 4 AND estado = 'completado'
ORDER BY horas_estimadas DESC;

-- 5. Inversión total generada (suma de costos) por estilo de tatuaje
SELECT estilo_tatuaje, SUM(costo_usd) AS ingreso_total
FROM citas_tatuajes
WHERE estado = 'completado'
GROUP BY estilo_tatuaje
ORDER BY ingreso_total DESC;
