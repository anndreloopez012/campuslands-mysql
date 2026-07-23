USE campuslands_mysql;

-- ======================================================
-- 1. Top 5 reparaciones más costosas
-- ======================================================

SELECT
    cliente AS Cliente,
    marca AS Marca,
    tipo_servicio AS Servicio,
    costo AS Costo
FROM servicios_motos
ORDER BY costo DESC
LIMIT 5;

-- ======================================================
-- 2. Cantidad de motos atendidas por estado
-- ======================================================

SELECT
    estado AS Estado,
    COUNT(id_servicio) AS Cantidad_Servicios
FROM servicios_motos
GROUP BY estado
ORDER BY Cantidad_Servicios DESC;

-- ======================================================
-- 3. Costo promedio por tipo de servicio
-- ======================================================

SELECT
    tipo_servicio AS Servicio,
    AVG(costo) AS Costo_Promedio
FROM servicios_motos
GROUP BY tipo_servicio
ORDER BY Costo_Promedio DESC;

-- ======================================================
-- 4. Motos actualmente en reparación
-- ======================================================

SELECT
    cliente AS Cliente,
    placa AS Placa,
    marca AS Marca,
    costo AS Costo
FROM servicios_motos
WHERE estado = 'En reparacion'
ORDER BY costo DESC;

-- ======================================================
-- 5. Cliente con mayor costo acumulado en servicios
-- ======================================================

SELECT
    cliente AS Cliente,
    SUM(costo) AS Total_Gastado
FROM servicios_motos
GROUP BY cliente
ORDER BY Total_Gastado DESC
LIMIT 1;