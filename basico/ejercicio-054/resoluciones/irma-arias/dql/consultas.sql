USE db_soldadura_industrial;

-- Consulta 1: Listar todos los cordones de soldadura restantes, ordenados por longitud de mayor a menor
SELECT id, codigo_cordon, tipo_proceso, material_base, longitud_mm, amperaje_usado, estado
FROM trabajos_soldadura
ORDER BY longitud_mm DESC;

-- Consulta 2: Resumen agrupado por tipo de proceso de soldadura, mostrando cuántos registros quedaron activos y la longitud promedio
SELECT tipo_proceso, COUNT(*) AS total_cordones, ROUND(AVG(longitud_mm), 2) AS longitud_promedio_mm
FROM trabajos_soldadura
GROUP BY tipo_proceso
ORDER BY total_cordones DESC;

-- Consulta 3: Top 3 de cordones con mayor amperaje utilizado en los procesos vigentes
SELECT codigo_cordon, tipo_proceso, material_base, amperaje_usado, estado
FROM trabajos_soldadura
ORDER BY amperaje_usado DESC
LIMIT 3;

-- Consulta 4: Filtrar trabajos cuyo proceso sea 'MIG' o 'TIG' y cuyo amperaje sea mayor o igual a 120
SELECT codigo_cordon, tipo_proceso, material_base, longitud_mm, amperaje_usado, estado
FROM trabajos_soldadura
WHERE tipo_proceso IN ('MIG', 'TIG') AND amperaje_usado >= 120
ORDER BY amperaje_usado ASC;

-- Consulta 5: Resumen global evaluando la cantidad total de registros vigentes, el amperaje máximo y la longitud total sumada
SELECT COUNT(*) AS total_registros_activos, MAX(amperaje_usado) AS amperaje_maximo, SUM(longitud_mm) AS longitud_total_soldada_mm
FROM trabajos_soldadura;