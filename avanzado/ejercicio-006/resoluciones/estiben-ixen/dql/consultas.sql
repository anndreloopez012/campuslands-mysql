USE campuslands_mysql;

-- =====================================================
-- CONSULTA 1
-- Autos disponibles
-- =====================================================

EXPLAIN
SELECT
    marca,
    modelo,
    velocidad_maxima,
    precio
FROM autos
WHERE estado = 'Disponible';

SELECT
    marca AS Marca,
    modelo AS Modelo,
    velocidad_maxima AS Velocidad_Maxima,
    precio AS Precio
FROM autos
WHERE estado = 'Disponible';



-- =====================================================
-- CONSULTA 2
-- Top 5 autos más rápidos
-- =====================================================

EXPLAIN
SELECT
    marca,
    modelo,
    velocidad_maxima
FROM autos
ORDER BY velocidad_maxima DESC
LIMIT 5;

SELECT
    marca AS Marca,
    modelo AS Modelo,
    velocidad_maxima AS Velocidad_Maxima
FROM autos
ORDER BY velocidad_maxima DESC
LIMIT 5;



-- =====================================================
-- CONSULTA 3
-- Precio promedio por país de origen
-- =====================================================

EXPLAIN
SELECT
    pais_origen,
    AVG(precio)
FROM autos
GROUP BY pais_origen
ORDER BY AVG(precio) DESC;

SELECT
    pais_origen AS Pais,
    AVG(precio) AS Precio_Promedio
FROM autos
GROUP BY pais_origen
ORDER BY Precio_Promedio DESC;



-- =====================================================
-- CONSULTA 4
-- Autos con más de 1500 HP
-- =====================================================

EXPLAIN
SELECT
    marca,
    modelo,
    potencia_hp,
    velocidad_maxima
FROM autos
WHERE potencia_hp > 1500;

SELECT
    marca AS Marca,
    modelo AS Modelo,
    potencia_hp AS Potencia_HP,
    velocidad_maxima AS Velocidad
FROM autos
WHERE potencia_hp > 1500;



-- =====================================================
-- CONSULTA 5
-- Valor total del inventario disponible
-- =====================================================

EXPLAIN
SELECT
    SUM(precio)
FROM autos
WHERE estado='Disponible';

SELECT
    SUM(precio) AS Valor_Total_Inventario
FROM autos
WHERE estado='Disponible';



-- =====================================================
-- CONSULTA 6
-- Cantidad de vehículos por estado
-- =====================================================

EXPLAIN
SELECT
    estado,
    COUNT(*)
FROM autos
GROUP BY estado;

SELECT
    estado AS Estado,
    COUNT(*) AS Total_Autos
FROM autos
GROUP BY estado;