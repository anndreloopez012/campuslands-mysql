
-- DQL: Consultas analíticas y uso de funciones personalizadas para el inventario de skins
USE db_skins_shooter_avanzado;

-- Consulta 1: Listado general utilizando la función personalizada fn_calcular_valor_real para evaluar costos
SELECT 
    nombre_skin AS Skin,
    arma_asociada AS Arma,
    rareza AS Rareza,
    precio_monedas AS Precio_Base,
    nivel_desgaste AS Desgaste,
    fn_calcular_valor_real(precio_monedas, nivel_desgaste) AS Precio_Real_Ajustado
FROM inventario_skins
ORDER BY Precio_Real_Ajustado DESC;

-- Consulta 2: Top 5 de skins más caras o valiosas excluyendo las archivadas
SELECT 
    nombre_skin AS Skin,
    rareza AS Rareza,
    estado_inventario AS Estado,
    precio_monedas AS Valor
FROM inventario_skins
WHERE estado_inventario != 'archivado'
ORDER BY precio_monedas DESC
LIMIT 5;

-- Consulta 3: Agrupación por nivel de rareza calculando estadísticas del inventario
SELECT 
    rareza AS Categoria_Rareza,
    COUNT(*) AS Total_Skins,
    AVG(precio_monedas) AS Precio_Promedio,
    MAX(precio_monedas) AS Precio_Maximo
FROM inventario_skins
GROUP BY rareza
ORDER BY Precio_Promedio DESC;

-- Consulta 4: Conteo de skins y suma de valores agrupados por estado actual del inventario
SELECT 
    estado_inventario AS Estado,
    COUNT(*) AS Cantidad_Skins,
    SUM(precio_monedas) AS Valor_Total_Inventario
FROM inventario_skins
GROUP BY estado_inventario
ORDER BY Valor_Total_Inventario DESC;

-- Consulta 5: Reporte filtrado de skins en buen estado (desgaste menor a 0.200) que están disponibles o equipadas
SELECT 
    nombre_skin AS Skin,
    arma_asociada AS Arma,
    nivel_desgaste AS Desgaste,
    estado_inventario AS Estado
FROM inventario_skins
WHERE nivel_desgaste < 0.200 AND estado_inventario IN ('disponible', 'equipado')
ORDER BY nivel_desgaste ASC;