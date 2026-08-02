USE soldadura_db;

-- 1. Filtrar trabajos aprobados ordenados por calidad de inspección de forma descendente
SELECT tipo_soldadura, material_base, calidad_inspeccion, costo_usd
FROM trabajos_soldadura
WHERE estado = 'aprobado'
ORDER BY calidad_inspeccion DESC;

-- 2. Conteo de trabajos y costo promedio agrupados por tipo de soldadura
SELECT tipo_soldadura, COUNT(*) AS total_trabajos, AVG(costo_usd) AS costo_promedio
FROM trabajos_soldadura
GROUP BY tipo_soldadura
ORDER BY costo_promedio DESC;

-- 3. Ranking TOP 3 de los trabajos de soldadura más costosos
SELECT tipo_soldadura, material_base, costo_usd, estado
FROM trabajos_soldadura
ORDER BY costo_usd DESC
LIMIT 3;

-- 4. Filtrar trabajos con amperaje mayor a 130 y calidad mayor o igual a 9.0
SELECT tipo_soldadura, material_base, amperaje, calidad_inspeccion
FROM trabajos_soldadura
WHERE amperaje > 130 AND calidad_inspeccion >= 9.0
ORDER BY amperaje DESC;

-- 5. Inversión total generada (suma de costos) agrupada por estado actual del trabajo
SELECT estado, COUNT(*) AS cantidad_trabajos, SUM(costo_usd) AS inversion_total
FROM trabajos_soldadura
GROUP BY estado;
