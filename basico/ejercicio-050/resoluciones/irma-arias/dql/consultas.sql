USE db_estudio_tatuajes;

-- Consulta 1: Listar tatuajes que se encuentren completados o en proceso, ordenados por costo de mayor a menor
SELECT id, nombre_cliente, estilo_tatuaje, tamanio_cm2, costo_usd, tiempo_estimado_horas, estado
FROM tatuajes_estudio
WHERE estado IN ('completado', 'en_proceso')
ORDER BY costo_usd DESC;

-- Consulta 2: Resumen agrupado por estilo de tatuaje, mostrando la cantidad de trabajos y el costo promedio por diseño
SELECT estilo_tatuaje, COUNT(*) AS total_trabajos, ROUND(AVG(costo_usd), 2) AS costo_promedio_usd
FROM tatuajes_estudio
GROUP BY estilo_tatuaje
ORDER BY total_trabajos DESC;

-- Consulta 3: Top 3 de tatuajes más costosos realizados o agendados en el estudio (Ranking financiero)
SELECT nombre_cliente, estilo_tatuaje, tamanio_cm2, costo_usd, estado
FROM tatuajes_estudio
ORDER BY costo_usd DESC
LIMIT 3;

-- Consulta 4: Filtrar tatuajes cuyo estilo sea 'Realismo' o 'Tradicional' y cuyo costo sea mayor o igual a 200 USD
SELECT nombre_cliente, estilo_tatuaje, tamanio_cm2, costo_usd, estado
FROM tatuajes_estudio
WHERE estilo_tatuaje IN ('Realismo', 'Tradicional') AND costo_usd >= 200.00
ORDER BY costo_usd ASC;

-- Consulta 5: Resumen global evaluando la cantidad total de registros, el tiempo máximo invertido y los ingresos totales generados o proyectados
SELECT COUNT(*) AS total_citas_estudio, MAX(tiempo_estimado_horas) AS max_horas_invertidas, SUM(costo_usd) AS ingresos_totales_usd
FROM tatuajes_estudio;