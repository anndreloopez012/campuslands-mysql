USE campuslands_mysql;

-- 1. Autos con todos sus colores disponibles (JOIN, en vez de parsear una lista de texto)
SELECT a.modelo, c.color
FROM autos_hiperdeportivos_1fn a
INNER JOIN auto_colores_disponibles c ON a.id_auto = c.id_auto
ORDER BY a.modelo;

-- 2. Cantidad de colores disponibles por auto
SELECT a.modelo, COUNT(c.id_color) AS total_colores
FROM autos_hiperdeportivos_1fn a
INNER JOIN auto_colores_disponibles c ON a.id_auto = c.id_auto
GROUP BY a.modelo
ORDER BY total_colores DESC;

-- 3. Autos disponibles en color 'Negro' (busqueda exacta, imposible de forma confiable con texto separado por comas)
SELECT a.modelo, a.marca
FROM autos_hiperdeportivos_1fn a
INNER JOIN auto_colores_disponibles c ON a.id_auto = c.id_auto
WHERE c.color = 'Negro';

-- 4. Auto con mayor variedad de colores (caso limite: 3 colores)
SELECT a.modelo, COUNT(c.id_color) AS total_colores
FROM autos_hiperdeportivos_1fn a
INNER JOIN auto_colores_disponibles c ON a.id_auto = c.id_auto
GROUP BY a.modelo
ORDER BY total_colores DESC
LIMIT 1;

-- 5. Auto con solo un color disponible (caso limite: minima cardinalidad)
SELECT a.modelo, COUNT(c.id_color) AS total_colores
FROM autos_hiperdeportivos_1fn a
INNER JOIN auto_colores_disponibles c ON a.id_auto = c.id_auto
GROUP BY a.modelo
HAVING total_colores = 1;