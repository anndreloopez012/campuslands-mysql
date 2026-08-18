-- 1. Películas disponibles
SELECT titulo, director, año, precio, calificacion
FROM `ejercicio-013-bas-peliculas`
WHERE estado = 'disponible'
ORDER BY calificacion DESC;

-- 2. Películas alquiladas
SELECT titulo, director, año, estado
FROM `ejercicio-013-bas-peliculas`
WHERE estado = 'alquilada'
ORDER BY titulo;

-- 3. Películas disponibles con precio menor a 10
SELECT titulo, director, precio, calificacion
FROM `ejercicio-013-bas-peliculas`
WHERE estado = 'disponible' AND precio < 10
ORDER BY precio;

-- 4. Resumen por estado
SELECT estado, 
       COUNT(*) AS total,
       AVG(calificacion) AS promedio_calificacion,
       SUM(precio) AS valor_total
FROM `ejercicio-013-bas-peliculas`
GROUP BY estado;

-- 5. Películas de terror disponibles con calificación > 4.5
SELECT titulo, director, año, calificacion, precio
FROM `ejercicio-013-bas-peliculas`
WHERE estado = 'disponible' 
  AND genero = 'terror' 
  AND calificacion > 4.5
ORDER BY calificacion DESC;