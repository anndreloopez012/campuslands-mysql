-- 1. Total y promedio por rareza
SELECT rareza, COUNT(*) AS total, AVG(precio) AS precio_prom
FROM `ejercicio-003-int-skins`
GROUP BY rareza ORDER BY precio_prom DESC;

-- 2. Valor total por jugador
SELECT jugador, SUM(precio) AS total_gastado, COUNT(*) AS skins
FROM `ejercicio-003-int-skins`
GROUP BY jugador ORDER BY total_gastado DESC;

-- 3. Skins por arma
SELECT arma, COUNT(*) AS total, MAX(precio) AS max_precio
FROM `ejercicio-003-int-skins`
GROUP BY arma HAVING total > 1;

-- 4. Precio promedio por arma y rareza
SELECT arma, rareza, AVG(precio) AS prom
FROM `ejercicio-003-int-skins`
GROUP BY arma, rareza ORDER BY prom DESC;

-- 5. Mes con más skins obtenidas
SELECT MONTH(fecha_obtenida) AS mes, COUNT(*) AS total
FROM `ejercicio-003-int-skins`
GROUP BY mes ORDER BY total DESC;