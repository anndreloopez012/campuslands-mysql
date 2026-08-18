-- Consultas base. Completar o reemplazar según el enunciado.
USE campuslands_mysql;

-- 1. Seleccionar todos los platos disponibles con su categoría, ordenados por categoría y luego por título.
SELECT
  p.titulo,
  cp.nombre AS categoria,
  p.precio,
  p.descripcion
FROM platos AS p
JOIN categorias_plato AS cp
  ON p.id_categoria = cp.id
WHERE
  p.disponible = TRUE
ORDER BY
  cp.nombre ASC,
  p.titulo ASC;

-- 2. Contar el número de platos por categoría.
SELECT
  cp.nombre AS categoria,
  COUNT(p.id) AS total_platos
FROM categorias_plato AS cp
LEFT JOIN platos AS p
  ON cp.id = p.id_categoria
GROUP BY
  cp.nombre
ORDER BY
  total_platos DESC;

-- 3. Encontrar los platos cuyo precio sea superior a 10.00.
SELECT titulo, categoria.nombre AS categoria, precio
FROM platos
JOIN categorias_plato AS categoria
  ON platos.id_categoria = categoria.id
WHERE
  precio > 10.00
ORDER BY
  precio DESC;

-- 4. Listar todas las categorías que tienen al menos 2 platos disponibles.
SELECT
  cp.nombre AS categoria,
  COUNT(p.id) AS numero_platos_disponibles
FROM categorias_plato AS cp
JOIN platos AS p
  ON cp.id = p.id_categoria
WHERE
  p.disponible = TRUE
GROUP BY
  cp.nombre
HAVING
  COUNT(p.id) >= 2
ORDER BY
  numero_platos_disponibles DESC;

-- 5. Mostrar el plato más caro y el más barato.
SELECT 'Más Caro' AS tipo, titulo, precio, cp.nombre AS categoria
FROM platos AS p
JOIN categorias_plato AS cp ON p.id_categoria = cp.id
ORDER BY precio DESC LIMIT 1
UNION ALL
SELECT 'Más Barato' AS tipo, titulo, precio, cp.nombre AS categoria
FROM platos AS p
JOIN categorias_plato AS cp ON p.id_categoria = cp.id
ORDER BY precio ASC LIMIT 1;