USE db_restaurante_urbano;

-- Consulta 1: Listar platillos que se encuentran disponibles para venta ordenados por precio de mayor a menor
SELECT id, nombre_platillo, categoria, precio, calorias, disponible_delivery, estado
FROM platillos_urbanos
WHERE estado = 'disponible'
ORDER BY precio DESC;

-- Consulta 2: Resumen agrupado por categoría de comida urbana, mostrando la cantidad de platillos y el precio promedio
SELECT categoria, COUNT(*) AS total_platillos, ROUND(AVG(precio), 2) AS precio_promedio
FROM platillos_urbanos
GROUP BY categoria
ORDER BY total_platillos DESC;

-- Consulta 3: Top 3 de platillos más económicos del menú (Ranking accesible)
SELECT nombre_platillo, categoria, precio, calorias, estado
FROM platillos_urbanos
ORDER BY precio ASC
LIMIT 3;

-- Consulta 4: Filtrar platillos cuya categoría sea 'Hamburguesa' o 'Salchipapa' y cuyo precio sea menor o igual a 11.00
SELECT nombre_platillo, categoria, precio, calorias, estado
FROM platillos_urbanos
WHERE categoria IN ('Hamburguesa', 'Salchipapa') AND precio <= 11.00
ORDER BY precio DESC;

-- Consulta 5: Resumen global evaluando cantidad total de productos, precio máximo del menú y promedio de calorías
SELECT COUNT(*) AS total_inventario, MAX(precio) AS precio_maximo, ROUND(AVG(calorias), 0) AS calorias_promedio
FROM platillos_urbanos;