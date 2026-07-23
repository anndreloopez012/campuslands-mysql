USE campuslands_mysql;

-- =====================================================
-- 1. Top 5 motos más costosas
-- =====================================================

SELECT
    marca AS Marca,
    modelo AS Modelo,
    precio AS Precio
FROM motos
ORDER BY precio DESC
LIMIT 5;

-- =====================================================
-- 2. Cantidad de motos por marca
-- =====================================================

SELECT
    marca AS Marca,
    COUNT(id_moto) AS Cantidad
FROM motos
GROUP BY marca
ORDER BY Cantidad DESC;

-- =====================================================
-- 3. Precio promedio por categoría
-- =====================================================

SELECT
    categoria AS Categoria,
    AVG(precio) AS Precio_Promedio
FROM motos
GROUP BY categoria
ORDER BY Precio_Promedio DESC;

-- =====================================================
-- 4. Motos disponibles
-- =====================================================

SELECT
    marca AS Marca,
    modelo AS Modelo,
    precio AS Precio,
    kilometraje AS Kilometraje
FROM motos
WHERE disponible = TRUE
ORDER BY precio DESC;

-- =====================================================
-- 5. Moto con mayor kilometraje
-- =====================================================

SELECT
    marca AS Marca,
    modelo AS Modelo,
    kilometraje AS Kilometraje
FROM motos
ORDER BY kilometraje DESC
LIMIT 1;