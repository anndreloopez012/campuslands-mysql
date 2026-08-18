-- 1. Ver todas las películas
SELECT * FROM `ejercicio-014-bas-peliculas`;

-- 2. Películas por año de estreno
SELECT titulo, fecha_estreno, YEAR(fecha_estreno) AS año
FROM `ejercicio-014-bas-peliculas`
ORDER BY fecha_estreno;

-- 3. Películas estrenadas en diciembre
SELECT titulo, fecha_estreno, MONTHNAME(fecha_estreno) AS mes
FROM `ejercicio-014-bas-peliculas`
WHERE MONTH(fecha_estreno) = 12;

-- 4. Películas por década (1970-1979, 1980-1989, etc.)
SELECT titulo, fecha_estreno,
       CONCAT(FLOOR(YEAR(fecha_estreno)/10)*10, 's') AS decada
FROM `ejercicio-014-bas-peliculas`
ORDER BY fecha_estreno;

-- 5. Películas con fechas de remasterización
SELECT titulo, fecha_estreno, 
       DATEDIFF(fecha_remasterizacion, fecha_estreno) AS dias_entre,
       TIMESTAMPDIFF(YEAR, fecha_estreno, fecha_remasterizacion) AS años_diferencia
FROM `ejercicio-014-bas-peliculas`
WHERE fecha_remasterizacion IS NOT NULL;