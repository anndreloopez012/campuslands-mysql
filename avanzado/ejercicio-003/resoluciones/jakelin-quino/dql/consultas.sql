-- 1. Funciones de texto
SELECT nombre, UPPER(nombre) AS mayus, LENGTH(nombre) AS largo
FROM `ejercicio-003-adv-skins`;

-- 2. Funciones de fecha
SELECT nombre, fecha_obtenida, 
       DATEDIFF(CURDATE(), fecha_obtenida) AS dias_antiguedad,
       MONTHNAME(fecha_obtenida) AS mes,
       YEAR(fecha_obtenida) AS año
FROM `ejercicio-003-adv-skins`;

-- 3. Funciones matemáticas
SELECT nombre, precio, descuento,
       precio - descuento AS precio_final,
       ROUND(precio * 0.85, 2) AS con_iva,
       CEILING(precio / 10) * 10 AS redondeado
FROM `ejercicio-003-adv-skins`;

-- 4. Funciones condicionales
SELECT nombre, rareza, precio,
       CASE 
           WHEN precio > 200 THEN 'Premium'
           WHEN precio > 100 THEN 'Normal'
           ELSE 'Básico'
       END AS categoria
FROM `ejercicio-003-adv-skins`;

-- 5. Funciones combinadas
SELECT jugador, 
       COUNT(*) AS total,
       SUM(precio) AS total_gastado,
       AVG(precio) AS promedio,
       MAX(precio) AS skin_mas_cara,
       MIN(precio) AS skin_mas_barata
FROM `ejercicio-003-adv-skins`
GROUP BY jugador;