-- DQL: Consultas analíticas y manejo de fechas para la saga de ciencia ficción
USE db_saga_scifi;

-- 1. Listado general de eventos ordenados cronológicamente por fecha estelar
SELECT id, codigo_evento, titulo_evento, tipo_mision, fecha_estelar, duracion_dias, presupuesto_millones, estado
FROM eventos_scifi
ORDER BY fecha_estelar ASC;

-- 2. Filtrar eventos cuya fecha estelar sea posterior al año 2047, ordenados por mayor presupuesto
SELECT codigo_evento, titulo_evento, tipo_mision, fecha_estelar, presupuesto_millones, estado
FROM eventos_scifi
WHERE fecha_estelar > '2047-01-01'
ORDER BY presupuesto_millones DESC;

-- 3. Agrupar por estado de la misión para ver la cantidad de eventos y el presupuesto total invertido
SELECT estado, COUNT(*) AS total_misiones, SUM(presupuesto_millones) AS presupuesto_total_estado
FROM eventos_scifi
GROUP BY estado
ORDER BY presupuesto_total_estado DESC;

-- 4. Top 3 de misiones espaciales con mayor presupuesto en la saga
SELECT codigo_evento, titulo_evento, tipo_mision, fecha_estelar, presupuesto_millones, estado
FROM eventos_scifi
ORDER BY presupuesto_millones DESC
LIMIT 3;

-- 5. Resumen global del universo de ciencia ficción (Duración promedio en días y presupuesto global acumulado)
SELECT ROUND(AVG(duracion_dias), 2) AS promedio_duracion_dias, SUM(presupuesto_millones) AS presupuesto_global_saga, COUNT(*) AS total_misiones_registradas
FROM eventos_scifi;