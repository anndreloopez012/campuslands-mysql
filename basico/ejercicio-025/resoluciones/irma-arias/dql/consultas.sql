
USE db_laboratorio_quimico_irma;

-- Consulta 1: Conteo total de fórmulas y sumatoria de costos y volúmenes por cada tipo de compuesto
SELECT 
    tipo_compuesto AS TipoCompuesto, 
    COUNT(*) AS TotalFormulas, 
    SUM(volumen_litros) AS VolumenTotalLitros, 
    SUM(costo_produccion_usd) AS InversionTotalUSD
FROM formulas_quimicas
GROUP BY tipo_compuesto
ORDER BY InversionTotalUSD DESC;

-- Consulta 2: Indicadores globales filtrados exclusivamente para fórmulas que se encuentran en estado 'Activa'
SELECT 
    COUNT(*) AS FormulasActivasTotales, 
    SUM(volumen_litros) AS VolumenActivoLitros, 
    SUM(costo_produccion_usd) AS CostoActivoUSD
FROM formulas_quimicas
WHERE estado_formula = 'Activa';

-- Consulta 3: Conteo y volumen total agrupados por el estado actual de la fórmula química
SELECT 
    estado_formula AS EstadoFormula, 
    COUNT(*) AS CantidadRegistros, 
    SUM(volumen_litros) AS VolumenAcumuladoLitros
FROM formulas_quimicas
GROUP BY estado_formula
ORDER BY VolumenAcumuladoLitros DESC;

-- Consulta 4: Top 3 de compuestos químicos con mayor inversión en costos de producción
SELECT 
    nombre_formula AS FormulaQuimica, 
    tipo_compuesto AS Tipo, 
    volumen_litros AS VolumenLitros, 
    costo_produccion_usd AS CostoUSD
FROM formulas_quimicas
ORDER BY costo_produccion_usd DESC
LIMIT 3;

-- Consulta 5: Conteo detallado de fórmulas cuyo volumen supera los 150 litros agrupadas por tipo
SELECT 
    tipo_compuesto AS TipoCompuesto, 
    COUNT(*) AS FormulasVolumenAlto, 
    SUM(costo_produccion_usd) AS CostoParcialUSD
FROM formulas_quimicas
WHERE volumen_litros > 150.00
GROUP BY tipo_compuesto;