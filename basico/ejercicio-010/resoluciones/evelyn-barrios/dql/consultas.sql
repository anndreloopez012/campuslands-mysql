-- basico/ejercicio-010 - evelyn-barrios
-- Práctica de funciones de agregación y GROUP BY
USE campuslands_mysql;

-- Consulta 1: Calcular el total de ingresos por ventas.
-- Multiplicamos el precio por la cantidad para cada venta y sumamos todo.
SELECT
    SUM(precio_unitario * cantidad_vendida) AS 'ingresos_totales'
FROM ventas_electronica;

-- Consulta 2: Contar cuántos productos diferentes se han vendido en total.
-- Usamos COUNT(DISTINCT ...) para no contar el mismo producto varias veces.
SELECT
    COUNT(DISTINCT producto) AS 'tipos_de_producto_vendidos'
FROM ventas_electronica;

-- Consulta 3: Calcular los ingresos totales y la cantidad de productos vendidos por categoría.
-- Agrupamos por categoría y aplicamos SUM y COUNT a cada grupo.
SELECT
    categoria,
    SUM(precio_unitario * cantidad_vendida) AS 'ingresos_por_categoria',
    SUM(cantidad_vendida) AS 'unidades_vendidas'
FROM ventas_electronica
GROUP BY categoria
ORDER BY ingresos_por_categoria DESC;

-- Consulta 4: Encontrar el precio del producto más caro y el más barato.
-- Usamos MAX() y MIN() sobre la columna de precios.
SELECT
    MAX(precio_unitario) AS 'producto_mas_caro',
    MIN(precio_unitario) AS 'producto_mas_barato'
FROM ventas_electronica;

-- Consulta 5: Calcular el precio promedio de los productos por categoría.
-- Agrupamos por categoría y usamos AVG() para obtener el promedio de precio unitario.
SELECT
    categoria,
    AVG(precio_unitario) AS 'precio_promedio'
FROM ventas_electronica
GROUP BY categoria
ORDER BY precio_promedio DESC;