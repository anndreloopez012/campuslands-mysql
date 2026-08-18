-- 1. Ver todas las categorías
SELECT * FROM `ejercicio-009-int-categorias`;

-- 2. Ver todos los gimnasios
SELECT * FROM `ejercicio-009-int-gimnasios`;

-- 3. Luchadores con su categoría y gimnasio
SELECT l.nombre, c.nombre AS categoria, g.nombre AS gimnasio, l.victorias
FROM `ejercicio-009-int-luchadores` l
INNER JOIN `ejercicio-009-int-categorias` c ON l.categoria_id = c.id
INNER JOIN `ejercicio-009-int-gimnasios` g ON l.gimnasio_id = g.id;

-- 4. Luchadores por categoría
SELECT c.nombre AS categoria, COUNT(l.id) AS total_luchadores
FROM `ejercicio-009-int-categorias` c
LEFT JOIN `ejercicio-009-int-luchadores` l ON c.id = l.categoria_id
GROUP BY c.id;

-- 5. Luchadores de gimnasios específicos
SELECT g.nombre AS gimnasio, l.nombre AS luchador, l.victorias
FROM `ejercicio-009-int-gimnasios` g
INNER JOIN `ejercicio-009-int-luchadores` l ON g.id = l.gimnasio_id
WHERE g.ciudad = 'Madrid';

-- 6. Luchadores con sus rangos de peso
SELECT l.nombre, c.nombre AS categoria, l.peso, c.peso_min, c.peso_max
FROM `ejercicio-009-int-luchadores` l
INNER JOIN `ejercicio-009-int-categorias` c ON l.categoria_id = c.id
WHERE l.peso BETWEEN c.peso_min AND c.peso_max;