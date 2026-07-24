USE db_taller_motos_indexes;

-- 1. Consultar reparaciones filtrando por costo utilizando el índice creado
SELECT cliente, moto, costo 
FROM reparaciones 
WHERE costo > 400.00 
ORDER BY costo DESC;

-- 2. Mostrar reparaciones optimizadas con la relación de mecánicos mediante índice foráneo
SELECT r.cliente, r.moto, r.costo, m.nombre AS mecanico 
FROM reparaciones r 
INNER JOIN mecanicos m ON r.id_mecanico = m.id 
ORDER BY r.costo DESC;

-- 3. Costo promedio y total acumulado por mecánico
SELECT m.nombre, COUNT(r.id) AS total_reparaciones, ROUND(AVG(r.costo), 2) AS costo_promedio, SUM(r.costo) AS costo_total 
FROM mecanicos m 
LEFT JOIN reparaciones r ON m.id = r.id_mecanico 
GROUP BY m.id, m.nombre 
ORDER BY costo_total DESC;

-- 4. Filtrar mecánicos cuyo promedio de costo de reparación supere los 400 dólares usando HAVING
SELECT m.nombre, ROUND(AVG(r.costo), 2) AS promedio_reparacion 
FROM mecanicos m 
INNER JOIN reparaciones r ON m.id = r.id_mecanico 
GROUP BY m.id, m.nombre 
HAVING AVG(r.costo) > 400.00;

-- 5. Top 3 de reparaciones más costosas del taller
SELECT cliente, moto, costo 
FROM reparaciones 
ORDER BY costo DESC 
LIMIT 3;