USE db_ejercicio_031;

-- Consulta 1: Listar registros activos ordenados por valor de mayor a menor
SELECT id, nombre_item, categoria, valor, cantidad, fecha_registro 
FROM registros_base 
WHERE estado = 'activo' 
ORDER BY valor DESC;

-- Consulta 2: Resumen agrupado por categoría con conteo y promedio de valores
SELECT categoria, COUNT(*) AS total_items, AVG(valor) AS promedio_valor
FROM registros_base
GROUP BY categoria;

-- Consulta 3: Top 3 de registros con mayor valor económico (Ranking)
SELECT nombre_item, categoria, valor, estado
FROM registros_base
ORDER BY valor DESC
LIMIT 3;

-- Consulta 4: Filtrar elementos activos cuya cantidad sea mayor o igual a 10
SELECT nombre_item, categoria, valor, cantidad
FROM registros_base
WHERE estado = 'activo' AND cantidad >= 10;

-- Consulta 5: Conteo y stock total agrupado por estado actual
SELECT estado, COUNT(*) AS total_registros, SUM(cantidad) AS cantidad_total
FROM registros_base
GROUP BY estado;