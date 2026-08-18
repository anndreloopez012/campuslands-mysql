-- 1. Marcas con más de 2 motos
SELECT marca, COUNT(*) AS total_motos
FROM `ejercicio-004-int-motos`
GROUP BY marca
HAVING total_motos > 2
ORDER BY total_motos DESC;

-- 2. Categorías con precio promedio > 10000
SELECT categoria, AVG(precio) AS precio_prom, COUNT(*) AS total
FROM `ejercicio-004-int-motos`
GROUP BY categoria
HAVING precio_prom > 10000
ORDER BY precio_prom DESC;

-- 3. Marcas con precio mínimo > 8000
SELECT marca, MIN(precio) AS min_precio, MAX(precio) AS max_precio
FROM `ejercicio-004-int-motos`
GROUP BY marca
HAVING min_precio > 8000;

-- 4. Categorías con más de 2 motos disponibles
SELECT categoria, COUNT(*) AS disponibles
FROM `ejercicio-004-int-motos`
WHERE disponible = 1
GROUP BY categoria
HAVING disponibles > 2;

-- 5. Marcas con cilindraje promedio > 700
SELECT marca, AVG(cilindraje) AS cc_prom, COUNT(*) AS total
FROM `ejercicio-004-int-motos`
GROUP BY marca
HAVING cc_prom > 700
ORDER BY cc_prom DESC;