-- dql/consultas.sql
-- Consultas para analizar los datos de ventas del marketplace.

USE marketplace_accesorios;

-- 1. Reporte de ventas totales por mes.
-- Útil para ver la tendencia de ingresos a lo largo del tiempo.
SELECT 
    DATE_FORMAT(fecha_venta, '%Y-%m') AS anio_mes,
    SUM(precio_unitario * cantidad) AS ingresos_totales
FROM ventas
GROUP BY anio_mes
ORDER BY anio_mes;

-- 2. Productos vendidos en el mes de junio de 2025.
-- Filtra las ventas para un período específico.
SELECT producto_nombre, categoria, cantidad, fecha_venta
FROM ventas
WHERE MONTH(fecha_venta) = 6 AND YEAR(fecha_venta) = 2025;

-- 3. Total de ingresos por día.
SELECT 
    fecha_venta,
    SUM(precio_unitario * cantidad) AS total_diario
FROM ventas
GROUP BY fecha_venta
ORDER BY fecha_venta DESC;

-- 4. Cantidad de productos vendidos por categoría en los últimos 90 días.
SELECT categoria, SUM(cantidad) AS total_unidades_vendidas
FROM ventas
WHERE fecha_venta >= CURDATE() - INTERVAL 90 DAY
GROUP BY categoria;

-- 5. Top 3 de los días con mayores ventas.
SELECT 
    fecha_venta,
    SUM(precio_unitario * cantidad) AS ingresos
FROM ventas
GROUP BY fecha_venta
ORDER BY ingresos DESC
LIMIT 3;