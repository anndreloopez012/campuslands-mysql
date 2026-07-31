USE db_paracaidismo;

-- Consulta 1: Listar saltos que se encuentren en estado 'completado' ordenados por altura de mayor a menor
SELECT id, nombre_paracaidista, tipo_salto, altura_pies, duracion_caida_libre_seg, costo_usd, estado
FROM saltos_paracaidismo
WHERE estado = 'completado'
ORDER BY altura_pies DESC;

-- Consulta 2: Resumen agrupado por tipo de salto, mostrando la cantidad de registros y el promedio de duración en caída libre
SELECT tipo_salto, COUNT(*) AS total_saltos, ROUND(AVG(duracion_caida_libre_seg), 1) AS promedio_caida_libre_seg
FROM saltos_paracaidismo
GROUP BY tipo_salto
ORDER BY total_saltos DESC;

-- Consulta 3: Top 3 de saltos con mayor altura registrada en la academia (Ranking de altura)
SELECT nombre_paracaidista, tipo_salto, altura_pies, costo_usd, estado
FROM saltos_paracaidismo
ORDER BY altura_pies DESC
LIMIT 3;

-- Consulta 4: Filtrar saltos cuyo tipo sea 'Tandem' o 'AFF' y cuyo costo supere los 200 USD
SELECT nombre_paracaidista, tipo_salto, altura_pies, costo_usd, estado
FROM saltos_paracaidismo
WHERE tipo_salto IN ('Tandem', 'AFF') AND costo_usd > 200.00
ORDER BY costo_usd ASC;

-- Consulta 5: Resumen global evaluando la cantidad total de saltos, el costo máximo y la inversión total estimada
SELECT COUNT(*) AS total_registros_saltos, MAX(costo_usd) AS costo_maximo_usd, SUM(costo_usd) AS ingresos_totales_estimados_usd
FROM saltos_paracaidismo;