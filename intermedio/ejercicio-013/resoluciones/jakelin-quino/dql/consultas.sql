-- 1. Ver todas las películas
SELECT * FROM `ejercicio-013-int-peliculas`;

-- 2. Ver todas las categorías
SELECT * FROM `ejercicio-013-int-categorias`;

-- 3. Películas con sus categorías
SELECT p.titulo, c.nombre AS categoria
FROM `ejercicio-013-int_pelicula_categoria` pc
INNER JOIN `ejercicio-013-int-peliculas` p ON pc.pelicula_id = p.id
INNER JOIN `ejercicio-013-int-categorias` c ON pc.categoria_id = c.id
ORDER BY p.titulo;

-- 4. Categorías por película (agrupado)
SELECT p.titulo, 
       GROUP_CONCAT(c.nombre SEPARATOR ', ') AS categorias
FROM `ejercicio-013-int_pelicula_categoria` pc
INNER JOIN `ejercicio-013-int-peliculas` p ON pc.pelicula_id = p.id
INNER JOIN `ejercicio-013-int-categorias` c ON pc.categoria_id = c.id
GROUP BY p.id;

-- 5. Películas de terror
SELECT p.titulo, p.director, p.año
FROM `ejercicio-013-int_pelicula_categoria` pc
INNER JOIN `ejercicio-013-int-peliculas` p ON pc.pelicula_id = p.id
INNER JOIN `ejercicio-013-int-categorias` c ON pc.categoria_id = c.id
WHERE c.nombre = 'terror';