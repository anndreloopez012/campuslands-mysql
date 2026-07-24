-- DQL: Consultas y reportes analíticos para el inventario de skins
USE db_shooter_skins;

-- Consulta 1: Top 5 de las skins más costosas del inventario disponibles para intercambio
SELECT 
    nombre_skin AS Skin,
    arma_asociada AS Arma,
    rareza AS Rareza,
    precio_mercado AS Precio_USD
FROM inventario_skins
WHERE disponible_intercambio = TRUE
ORDER BY precio_mercado DESC
LIMIT 5;

-- Consulta 2: Valor total del inventario y precio promedio agrupado por rareza
SELECT 
    rareza AS Rareza,
    COUNT(*) AS Cantidad_Skins,
    SUM(precio_mercado) AS Valor_Total,
    AVG(precio_mercado) AS Precio_Promedio
FROM inventario_skins
GROUP BY rareza
ORDER BY Valor_Total DESC;

-- Consulta 3: Listado de skins filtradas por un arma específica (ej. AWP)
SELECT 
    nombre_skin AS Skin,
    rareza AS Rareza,
    desgaste AS Estado_Desgaste,
    precio_mercado AS Precio
FROM inventario_skins
WHERE arma_asociada = 'AWP'
ORDER BY precio_mercado DESC;

-- Consulta 4: Conteo de skins según su estado de disponibilidad para intercambio
SELECT 
    disponible_intercambio AS Intercambiable,
    COUNT(*) AS Total_Skins,
    SUM(precio_mercado) AS Valor_Acumulado
FROM inventario_skins
GROUP BY disponible_intercambio;

-- Consulta 5: Reporte detallado de skins con rareza épica o legendaria en estado óptimo (Factory New / Minimal Wear)
SELECT 
    nombre_skin AS Skin,
    arma_asociada AS Arma,
    rareza AS Rareza,
    desgaste AS Desgaste,
    precio_mercado AS Precio
FROM inventario_skins
WHERE rareza IN ('epica', 'legendaria') 
  AND desgaste IN ('factory_new', 'minimal_wear')
ORDER BY precio_mercado DESC;