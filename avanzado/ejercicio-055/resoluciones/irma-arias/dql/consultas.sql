USE formulas_quimicas_db;

-- 1. Total de fórmulas y costo acumulado agrupados por tipo de enlace químico
SELECT tipo_enlace, COUNT(*) AS total_formulas, SUM(costo_produccion_usd) AS costo_total_usd
FROM formulas_quimicas
GROUP BY tipo_enlace
ORDER BY costo_total_usd DESC;

-- 2. Conteo total de compuestos según su estado actual en el laboratorio
SELECT estado, COUNT(*) AS cantidad_compuestos
FROM formulas_quimicas
GROUP BY estado;

-- 3. Suma total de átomos y costo general de las fórmulas sintetizadas con alta pureza (>= 96%)
SELECT COUNT(*) AS formulas_aprobadas, SUM(cantidad_atomos) AS total_atomos, SUM(costo_produccion_usd) AS inversion_sintetizada
FROM formulas_quimicas
WHERE estado = 'sintetizado' AND pureza_porcentaje >= 96.00;

-- 4. Conteo de fórmulas y sumatoria de costos agrupadas por estado (excluyendo descartados)
SELECT estado, COUNT(*) AS total_formulas, SUM(costo_produccion_usd) AS inversion_acumulada
FROM formulas_quimicas
WHERE estado != 'descartado'
GROUP BY estado
ORDER BY inversion_acumulada DESC;

-- 5. Conteo global y costo máximo/mínimo/promedio de todo el inventario de compuestos
SELECT COUNT(*) AS total_general_formulas, SUM(costo_produccion_usd) AS costo_global_produccion, AVG(costo_produccion_usd) AS costo_promedio
FROM formulas_quimicas;
