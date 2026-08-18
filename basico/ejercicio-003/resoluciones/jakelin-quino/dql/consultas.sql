-- 1. Todas las skins
SELECT * FROM `ejercicio-003-bas-skins`;

-- 2. Skins por rareza
SELECT rareza, COUNT(*) AS total, AVG(precio) AS precio_prom
FROM `ejercicio-003-bas-skins`
GROUP BY rareza ORDER BY precio_prom DESC;

-- 3. Skins legendarias y míticas
SELECT nombre, rareza, precio FROM `ejercicio-003-bas-skins`
WHERE rareza IN ('legendaria', 'mítica') ORDER BY precio DESC;

-- 4. Top 5 skins más caras
SELECT nombre, arma, precio FROM `ejercicio-003-bas-skins`
ORDER BY precio DESC LIMIT 5;

-- 5. Skins por arma
SELECT arma, COUNT(*) AS total, MAX(precio) AS max_precio
FROM `ejercicio-003-bas-skins`
GROUP BY arma ORDER BY max_precio DESC;