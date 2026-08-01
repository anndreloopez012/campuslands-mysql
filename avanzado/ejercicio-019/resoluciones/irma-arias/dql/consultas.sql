-- DQL: Consultas analíticas y reportes para saltos de paracaidismo
USE db_paracaidismo;

-- 1. Listado general de saltos ordenados por altura de mayor a menor
SELECT id, codigo_salto, nombre_paracaidista, modalidad, altura_pies, precio_dolares, estado
FROM saltos_paracaidismo
ORDER BY altura_pies DESC;

-- 2. Filtrar saltos que se encuentran con estado 'completado' o 'programado' ordenados por menor precio
SELECT codigo_salto, nombre_paracaidista, modalidad, altura_pies, precio_dolares, estado
FROM saltos_paracaidismo
WHERE estado IN ('completado', 'programado')
ORDER BY precio_dolares ASC;

-- 3. Agrupar por modalidad de salto para conocer la cantidad de registros y la altura promedio alcanzada
SELECT modalidad, COUNT(*) AS total_saltos, ROUND(AVG(altura_pies), 0) AS altura_promedio_pies
FROM saltos_paracaidismo
GROUP BY modalidad
ORDER BY total_saltos DESC;

-- 4. Top 3 de saltos con mayor altitud registrados en la zona de salto (Ranking de altura extrema)
SELECT codigo_salto, nombre_paracaidista, modalidad, altura_pies, precio_dolares, estado
FROM saltos_paracaidismo
ORDER BY altura_pies DESC
LIMIT 3;

-- 5. Resumen financiero global de la escuela de paracaidismo (Costo máximo, costo mínimo y precio promedio general)
SELECT MAX(precio_dolares) AS salto_mas_costoso, MIN(precio_dolares) AS salto_mas_economico, ROUND(AVG(precio_dolares), 2) AS precio_promedio_general
FROM saltos_paracaidismo;