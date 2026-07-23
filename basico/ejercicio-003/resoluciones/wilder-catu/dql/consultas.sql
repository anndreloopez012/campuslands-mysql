USE campuslands_mysql;

-- =====================================================
-- 1. Top 5 skins más valiosas
-- =====================================================

SELECT
    nombre_skin AS Skin,
    arma AS Arma,
    valor AS Valor
FROM skins
ORDER BY valor DESC
LIMIT 5;

-- =====================================================
-- 2. Cantidad de skins por rareza
-- =====================================================

SELECT
    rareza AS Rareza,
    COUNT(id_skin) AS Cantidad
FROM skins
GROUP BY rareza
ORDER BY Cantidad DESC;

-- =====================================================
-- 3. Valor promedio por categoría
-- =====================================================

SELECT
    categoria AS Categoria,
    AVG(valor) AS Valor_Promedio
FROM skins
GROUP BY categoria
ORDER BY Valor_Promedio DESC;

-- =====================================================
-- 4. Skins disponibles
-- =====================================================

SELECT
    nombre_skin AS Skin,
    arma AS Arma,
    rareza AS Rareza,
    valor AS Valor
FROM skins
WHERE disponible = TRUE
ORDER BY valor DESC;

-- =====================================================
-- 5. Skin con mayor valor
-- =====================================================

SELECT
    nombre_skin AS Skin,
    arma AS Arma,
    valor AS Valor
FROM skins
ORDER BY valor DESC
LIMIT 1;