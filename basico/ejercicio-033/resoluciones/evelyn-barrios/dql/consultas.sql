-- Consultas base. Completa o reemplaza segun el enunciado.
-- dql/consultas.sql
-- Consultas para analizar el inventario de skins.

USE shooter_skins_inventory;

-- 1. Top 5 de las skins más caras del inventario.
-- El ID (PRIMARY KEY) permite identificar cada skin aunque tuvieran el mismo nombre.
SELECT id, nombre_skin, tipo_arma, rareza, precio
FROM inventario_skins
ORDER BY precio DESC
LIMIT 5;

-- 2. Conteo de skins por rareza.
-- Útil para ver la distribución del inventario.
SELECT 
    rareza,
    COUNT(*) AS cantidad_de_skins
FROM inventario_skins
GROUP BY rareza
ORDER BY FIELD(rareza, 'Común', 'Rara', 'Épica', 'Legendaria');

-- 3. Listar todas las skins para el arma 'AK-47' que han sido obtenidas.
SELECT nombre_skin, rareza, precio
FROM inventario_skins
WHERE tipo_arma = 'AK-47' AND obtenido = TRUE;

-- 4. Precio promedio de las skins por tipo de rareza.
SELECT rareza, AVG(precio) AS precio_promedio
FROM inventario_skins
GROUP BY rareza;

-- 5. Mostrar las skins lanzadas después del 1 de enero de 2015.
SELECT nombre_skin, tipo_arma, fecha_lanzamiento
FROM inventario_skins
WHERE fecha_lanzamiento > '2015-01-01';
