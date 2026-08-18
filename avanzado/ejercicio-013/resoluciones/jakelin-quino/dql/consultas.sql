-- 1. Ver todas las películas con JSON
SELECT * FROM `ejercicio-013-adv-peliculas`;

-- 2. Extraer datos específicos del JSON
SELECT titulo, 
       JSON_EXTRACT(detalles, '$.genero') AS genero,
       JSON_EXTRACT(detalles, '$.calificacion') AS calificacion
FROM `ejercicio-013-adv-peliculas`;

-- 3. Usar atajo -> para extraer
SELECT titulo, 
       detalles->'$.genero' AS genero,
       detalles->'$.duracion' AS duracion
FROM `ejercicio-013-adv-peliculas`;

-- 4. Filtrar por valor en JSON
SELECT titulo, director, año
FROM `ejercicio-013-adv-peliculas`
WHERE JSON_EXTRACT(detalles, '$.calificacion') > 4.5;

-- 5. Contar premios por película
SELECT titulo, 
       JSON_LENGTH(detalles, '$.premios') AS total_premios
FROM `ejercicio-013-adv-peliculas`
ORDER BY total_premios DESC;