-- DQL: Consultas analíticas con COUNT y SUM para laboratorio de fórmulas químicas
USE db_laboratorio_quimico;

-- 1. Contar el número total de fórmulas químicas registradas en el sistema del laboratorio
SELECT COUNT(*) AS total_formulas_registradas
FROM formulas_quimicas;

-- 2. Calcular la suma total de volumen producido (en ml) de todas las fórmulas activas o catalogadas
SELECT SUM(volumen_producido_ml) AS volumen_total_acumulado_ml
FROM formulas_quimicas
WHERE estado_formula IN ('catalogado', 'validado');

-- 3. Agrupar por clasificación química utilizando COUNT para contar compuestos y SUM para sumar el volumen total por categoría
SELECT clasificacion_quimica, COUNT(*) AS cantidad_compuestos, SUM(volumen_producido_ml) AS volumen_total_categoria_ml
FROM formulas_quimicas
GROUP BY clasificacion_quimica
ORDER BY volumen_total_categoria_ml DESC;

-- 4. Agrupar por estado de la fórmula aplicando COUNT y SUM para conocer el inventario de átomos y volumen por estado operativo
SELECT estado_formula, COUNT(*) AS total_formulas, SUM(numero_atomos_totales) AS suma_total_atomos, SUM(volumen_producido_ml) AS volumen_total_ml
FROM formulas_quimicas
GROUP BY estado_formula
ORDER BY total_formulas DESC;

-- 5. Consulta analítica avanzada con filtros y agregaciones combinadas para compuestos con más de 5 átomos totales
SELECT clasificacion_quimica, COUNT(*) AS compuestos_complejos, SUM(volumen_producido_ml) AS volumen_complejos_ml
FROM formulas_quimicas
WHERE numero_atomos_totales > 5
GROUP BY clasificacion_quimica
ORDER BY compuestos_complejos DESC;