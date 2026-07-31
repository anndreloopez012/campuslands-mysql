USE db_mercado_accesorios;

-- Consulta 1: Listar todos los accesorios ordenados por fecha de ingreso de los más recientes a los más antiguos
SELECT id, codigo_sku, nombre_accesorio, categoria, precio_usd, stock, fecha_ingreso, estado
FROM accesorios_mercado
ORDER BY fecha_ingreso DESC;

-- Consulta 2: Filtrar accesorios ingresados durante el año 2026 ordenados por precio
SELECT codigo_sku, nombre_accesorio, categoria, precio_usd, fecha_ingreso, estado
FROM accesorios_mercado
WHERE YEAR(fecha_ingreso) = 2026
ORDER BY precio_usd DESC;

-- Consulta 3: Resumen agrupado por categoría, mostrando cuántos accesorios hay registrados y cuál es la fecha de ingreso más antigua por categoría
SELECT categoria, COUNT(*) AS total_accesorios, MIN(fecha_ingreso) AS ingreso_mas_antiguo
FROM accesorios_mercado
GROUP BY categoria
ORDER BY total_accesorios DESC;

-- Consulta 4: Filtrar accesorios que ingresaron antes del año 2026 (históricos) con stock mayor o igual a 0
SELECT codigo_sku, nombre_accesorio, categoria, fecha_ingreso, estado
FROM accesorios_mercado
WHERE fecha_ingreso < '2026-01-01'
ORDER BY fecha_ingreso ASC;

-- Consulta 5: Resumen global evaluando el total de accesorios ingresados en el primer cuatrimestre de 2026 (enero a abril) y sumando su stock
SELECT COUNT(*) AS total_ingresos_cuatrimestre, SUM(stock) AS stock_total_cuatrimestre
FROM accesorios_mercado
WHERE fecha_ingreso BETWEEN '2026-01-01' AND '2026-04-30';