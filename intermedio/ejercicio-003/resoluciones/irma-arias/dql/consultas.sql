-- DQL: Consultas analíticas utilizando GROUP BY y funciones de agregación
USE db_skins_shooter_intermedio;

-- Consulta 1: Conteo, promedio y precio máximo de skins agrupados por categoría de rareza
SELECT 
    rareza AS Categoria_Rareza,
    COUNT(*) AS Total_Skins,
    AVG(precio_monedas) AS Precio_Promedio,
    MAX(precio_monedas) AS Precio_Maximo
FROM skins_shooter
GROUP BY rareza
ORDER BY Precio_Promedio DESC;

-- Consulta 2: Suma de valores e inventario total agrupado por el estado actual del skin
SELECT 
    estado_skin AS Estado_Actual,
    COUNT(*) AS Cantidad_Skins,
    SUM(precio_monedas) AS Valor_Total_Inventario
FROM skins_shooter
GROUP BY estado_skin
ORDER BY Valor_Total_Inventario DESC;

-- Consulta 3: Análisis agrupado por tipo de arma calculando el precio promedio y total de elementos
SELECT 
    arma AS Arma_Asociada,
    COUNT(*) AS Cantidad_Skins_Arma,
    AVG(precio_monedas) AS Promedio_Precio_Arma
FROM skins_shooter
GROUP BY arma
ORDER BY Cantidad_Skins_Arma DESC;

-- Consulta 4: Filtrado de estados activos (excluyendo archivados) agrupados por rareza con total monetario
SELECT 
    rareza AS Categoria_Rareza,
    COUNT(*) AS Total_Disponibles,
    SUM(precio_monedas) AS Suma_Precios
FROM skins_shooter
WHERE estado_skin != 'archivado'
GROUP BY rareza
ORDER BY Suma_Precios DESC;

-- Consulta 5: Reporte agrupado por mes de adquisición calculando la inversión realizada
SELECT 
    DATE_FORMAT(fecha_adquisicion, '%Y-%m') AS Mes_Adquisicion,
    COUNT(*) AS Skins_Obtenidas,
    SUM(precio_monedas) AS Inversion_Total_Mes
FROM skins_shooter
GROUP BY DATE_FORMAT(fecha_adquisicion, '%Y-%m')
ORDER BY Mes_Adquisicion DESC;