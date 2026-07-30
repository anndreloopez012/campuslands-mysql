USE db_mercado_accesorios;

-- Consulta 1: Listar accesorios que ingresaron a partir del año 2026 ordenados por fecha de forma descendente
SELECT id, nombre_accesorio, categoria, precio, stock, fecha_ingreso 
FROM accesorios 
WHERE fecha_ingreso >= '2026-01-01' 
ORDER BY fecha_ingreso DESC;

-- Consulta 2: Resumen agrupado por categoría, mostrando la cantidad de accesorios y el precio promedio
SELECT categoria, COUNT(*) AS total_accesorios, AVG(precio) AS precio_promedio
FROM accesorios
GROUP BY categoria;

-- Consulta 3: Top 3 de accesorios con mayor stock disponible (Ranking de inventario)
SELECT nombre_accesorio, categoria, stock, precio, estado
FROM accesorios
ORDER BY stock DESC
LIMIT 3;

-- Consulta 4: Filtrar accesorios que estén disponibles y cuyo precio sea menor o igual a 50.00
SELECT nombre_accesorio, categoria, precio, stock, fecha_ingreso
FROM accesorios
WHERE estado = 'disponible' AND precio <= 50.00;

-- Consulta 5: Conteo y stock total agrupado por el estado actual del accesorio
SELECT estado, COUNT(*) AS cantidad_registros, SUM(stock) AS stock_total
FROM accesorios
GROUP BY estado;