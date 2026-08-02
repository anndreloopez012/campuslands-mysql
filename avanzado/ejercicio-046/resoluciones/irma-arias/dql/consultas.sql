USE restaurante_urbano_db;

-- 1. Total de platos y precio promedio agrupados por categoría (solo disponibles)
SELECT categoria, COUNT(*) AS total_platos, AVG(precio) AS precio_promedio
FROM menu_urbano
WHERE estado = 'disponible'
GROUP BY categoria
ORDER BY precio_promedio DESC;

-- 2. Ranking TOP 3 de los platos con mayor calificación promedio
SELECT nombre_plato, categoria, calificacion_promedio
FROM menu_urbano
ORDER BY calificacion_promedio DESC
LIMIT 3;

-- 3. Conteo de productos según su estado actual en el menú
SELECT estado, COUNT(*) AS cantidad_productos
FROM menu_urbano
GROUP BY estado;

-- 4. Listado de platos económicos con precio menor a 10 dólares
SELECT nombre_plato, categoria, precio
FROM menu_urbano
WHERE precio < 10.00
ORDER BY precio ASC;

-- 5. Filtrar platos nuevos de la carta urbana
SELECT nombre_plato, categoria, precio, estado
FROM menu_urbano
WHERE estado = 'nuevo';
