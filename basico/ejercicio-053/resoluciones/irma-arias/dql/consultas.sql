USE db_arquitectura_3d;

-- Consulta 1: Listar todos los proyectos ordenados por presupuesto de mayor a menor para verificar las actualizaciones monetarias
SELECT id, nombre_proyecto, tipo_inmueble, superficie_m2, presupuesto_usd, software_bim, estado
FROM proyectos_arquitectura
ORDER BY presupuesto_usd DESC;

-- Consulta 2: Resumen agrupado por estado actual del proyecto, mostrando la cantidad de obras y la suma de presupuestos
SELECT estado, COUNT(*) AS total_proyectos, ROUND(SUM(presupuesto_usd), 2) AS presupuesto_total_estado
FROM proyectos_arquitectura
GROUP BY estado
ORDER BY total_proyectos DESC;

-- Consulta 3: Top 3 de proyectos con mayor superficie en metros cuadrados (Ranking estructural)
SELECT nombre_proyecto, tipo_inmueble, superficie_m2, software_bim, estado
FROM proyectos_arquitectura
ORDER BY superficie_m2 DESC
LIMIT 3;

-- Consulta 4: Filtrar proyectos que utilicen 'Revit' o 'Archicad' y cuyo presupuesto supere los 400,000 USD
SELECT nombre_proyecto, tipo_inmueble, superficie_m2, presupuesto_usd, software_bim, estado
FROM proyectos_arquitectura
WHERE software_bim IN ('Revit', 'Archicad') AND presupuesto_usd > 400000.00
ORDER BY presupuesto_usd ASC;

-- Consulta 5: Resumen global evaluando la cantidad total de proyectos registrados, el presupuesto máximo y la superficie promedio
SELECT COUNT(*) AS total_registros, MAX(presupuesto_usd) AS presupuesto_maximo_usd, ROUND(AVG(superficie_m2), 2) AS superficie_promedio_m2
FROM proyectos_arquitectura;