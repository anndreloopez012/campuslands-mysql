-- dql/consultas.sql
-- Consultas para analizar el inventario del laboratorio.

USE laboratorio_quimico;

-- 1. Cantidad total de compuestos por tipo.
-- Utiliza COUNT para saber cuántos items diferentes hay de cada tipo.
SELECT 
    tipo_compuesto, 
    COUNT(*) AS numero_de_compuestos
FROM inventario_compuestos
GROUP BY tipo_compuesto
ORDER BY numero_de_compuestos DESC;

-- 2. Suma total de gramos disponibles por tipo de compuesto.
-- Utiliza SUM para calcular el peso total de cada categoría de compuesto.
SELECT 
    tipo_compuesto, 
    SUM(cantidad_disponible_gramos) AS total_gramos_disponibles
FROM inventario_compuestos
GROUP BY tipo_compuesto;

-- 3. Compuestos en el 'Estante A-1' y su cantidad total.
SELECT nombre_compuesto, formula_quimica, cantidad_disponible_gramos
FROM inventario_compuestos
WHERE ubicacion_almacen = 'Estante A-1';

-- 4. Top 3 compuestos más pesados (con mayor cantidad en gramos).
SELECT nombre_compuesto, cantidad_disponible_gramos
FROM inventario_compuestos
ORDER BY cantidad_disponible_gramos DESC
LIMIT 3;

-- 5. Número total de items en el inventario y peso total combinado.
SELECT 
    COUNT(*) AS total_items_inventario,
    SUM(cantidad_disponible_gramos) AS peso_total_inventario_gramos
FROM inventario_compuestos;