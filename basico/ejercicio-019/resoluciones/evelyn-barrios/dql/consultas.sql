-- Consultas base. Completar o reemplazar según el enunciado.
USE campuslands_mysql;

-- 1. Seleccionar todos los paracaidistas activos, ordenados por apellido y nombre.
SELECT
  id,
  nombre,
  apellido,
  licencia,
  fecha_registro
FROM paracaidistas
WHERE
  estado = 'activo'
ORDER BY
  apellido ASC,
  nombre ASC;

-- 2. Contar el número total de saltos realizados por cada paracaidista.
SELECT
  p.nombre,
  p.apellido,
  COUNT(s.id) AS total_saltos
FROM paracaidistas AS p
LEFT JOIN saltos AS s
  ON p.id = s.id_paracaidista
GROUP BY
  p.nombre,
  p.apellido
ORDER BY
  total_saltos DESC;

-- 3. Encontrar los saltos realizados a una altura superior a 3500 metros.
SELECT s.id AS id_salto, p.nombre, p.apellido, s.fecha_salto, s.altura_metros, s.tipo_salto
FROM saltos AS s
JOIN paracaidistas AS p
  ON s.id_paracaidista = p.id
WHERE
  s.altura_metros > 3500
ORDER BY
  s.altura_metros DESC;

-- 4. Listar los paracaidistas que no han realizado ningún salto.
SELECT p.nombre, p.apellido, p.licencia
FROM paracaidistas AS p
LEFT JOIN saltos AS s ON p.id = s.id_paracaidista
WHERE s.id IS NULL;

-- 5. Calcular la duración promedio de los saltos por tipo de salto.
SELECT
  tipo_salto,
  AVG(duracion_segundos) AS duracion_promedio_segundos
FROM saltos
GROUP BY
  tipo_salto
ORDER BY
  duracion_promedio_segundos DESC;

-- 6. Mostrar los saltos realizados en una fecha específica (ej. '2024-07-01').
SELECT s.id AS id_salto, p.nombre, p.apellido, s.altura_metros, s.tipo_salto, s.estado_clima
FROM saltos AS s
JOIN paracaidistas AS p
  ON s.id_paracaidista = p.id
WHERE
  s.fecha_salto = '2024-07-01'
ORDER BY
  s.altura_metros DESC;