-- DQL: Consultas analíticas y de reportes para inventario de skins shooter
USE db_inventario_skins;

-- 1. Listado completo de skins ordenadas de mayor a menor valor económico
SELECT codigo_skin, nombre_skin, arma_asociada, rareza_skin, precio_valor, stock_disponible, estado_inventario
FROM skins_shooter
ORDER BY precio_valor DESC;

-- 2. Filtrar skins que se encuentran disponibles para la venta o en inventario general ordenadas por stock
SELECT codigo_skin, nombre_skin, arma_asociada, rareza_skin, precio_valor, stock_disponible, estado_inventario
FROM skins_shooter
WHERE estado_inventario IN ('disponible', 'en_venta')
ORDER BY stock_disponible DESC;

-- 3. Agrupar por rareza de la skin para analizar la cantidad de elementos, el precio máximo y el promedio de valor por categoría
SELECT rareza_skin, COUNT(*) AS total_skins, MAX(precio_valor) AS precio_maximo, ROUND(AVG(precio_valor), 2) AS precio_promedio
FROM skins_shooter
GROUP BY rareza_skin
ORDER BY precio_promedio DESC;

-- 4. Ranking TOP 3 de las skins más costosas dentro del inventario del shooter
SELECT codigo_skin, nombre_skin, arma_asociada, rareza_skin, precio_valor, stock_disponible, estado_inventario
FROM skins_shooter
ORDER BY precio_valor DESC
LIMIT 3;

-- 5. Resumen financiero global del inventario (Valor total acumulado del stock y precio unitario promedio general)
SELECT SUM(precio_valor * stock_disponible) AS valor_total_inventario, ROUND(AVG(precio_valor), 2) AS precio_promedio_general
FROM skins_shooter;