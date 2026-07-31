USE db_laboratorio_quimico;

-- Consulta 1: Conteo total de fórmulas químicas registradas y la suma total del costo de producción global
SELECT COUNT(*) AS total_formulas_registradas, ROUND(SUM(costo_produccion_usd), 2) AS costo_total_produccion
FROM formulas_quimicas;

-- Consulta 2: Conteo y sumatoria de gramos agrupados por categoría química (ej. cuántos compuestos hay por tipo y cuántos gramos suman)
SELECT categoria, COUNT(*) AS cantidad_compuestos, ROUND(SUM(cantidad_gramos), 2) AS total_gramos_categoria
FROM formulas_quimicas
GROUP BY categoria
ORDER BY total_gramos_categoria DESC;

-- Consulta 3: Conteo y costo total agrupado exclusivamente por el estado operativo de los compuestos (ej. cuántos activos y cuánto cuestan)
SELECT estado, COUNT(*) AS total_por_estado, ROUND(SUM(costo_produccion_usd), 2) AS inversion_total_estado
FROM formulas_quimicas
GROUP BY estado
ORDER BY inversion_total_estado DESC;

-- Consulta 4: Conteo de compuestos y suma de costos filtrando solo aquellos cuya categoría sea 'Ácido' o 'Orgánico'
SELECT categoria, COUNT(*) AS compuestos_especializados, ROUND(SUM(costo_produccion_usd), 2) AS costo_acumulado_especializado
FROM formulas_quimicas
WHERE categoria IN ('Ácido', 'Orgánico')
GROUP BY categoria
ORDER BY costo_acumulado_especializado DESC;

-- Consulta 5: Resumen general evaluando cuántos compuestos están activos y la suma total de gramos en stock operativo
SELECT COUNT(*) AS compuestos_activos_total, ROUND(SUM(cantidad_gramos), 2) AS gramos_totales_activos
FROM formulas_quimicas
WHERE estado = 'activo';