-- 1. Ver todas las motos
SELECT * FROM `ejercicio-004-bas-motos`;

-- 2. Motos disponibles
SELECT marca, modelo, precio FROM `ejercicio-004-bas-motos`
WHERE disponible = 1;

-- 3. Motos por precio mayor a 8000
SELECT marca, modelo, precio, año FROM `ejercicio-004-bas-motos`
WHERE precio > 8000 ORDER BY precio DESC;

-- 4. Conteo por marca
SELECT marca, COUNT(*) AS total FROM `ejercicio-004-bas-motos`
GROUP BY marca ORDER BY total DESC;

-- 5. Motos del año 2025
SELECT marca, modelo, color FROM `ejercicio-004-bas-motos`
WHERE año = 2025 ORDER BY precio DESC;