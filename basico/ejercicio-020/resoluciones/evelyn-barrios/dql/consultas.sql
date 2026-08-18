-- Consultas base. Completar o reemplazar según el enunciado.
USE campuslands_mysql;

-- 1. Seleccionar todos los artistas activos, ordenados por años de experiencia de forma descendente.
SELECT
  id,
  nombre,
  apellido,
  especialidad,
  años_experiencia
FROM artistas
WHERE
  estado = 'activo'
ORDER BY
  años_experiencia DESC,
  apellido ASC;

-- 2. Contar el número total de citas por artista, incluyendo aquellos sin citas.
SELECT
  a.nombre,
  a.apellido,
  COUNT(c.id) AS total_citas
FROM artistas AS a
LEFT JOIN citas AS c
  ON a.id = c.id_artista
GROUP BY
  a.nombre,
  a.apellido
ORDER BY
  total_citas DESC,
  a.apellido ASC;

-- 3. Encontrar las citas confirmadas para una fecha específica (ej. '2024-08-10'), mostrando el artista.
SELECT c.id AS id_cita, a.nombre AS nombre_artista, a.apellido AS apellido_artista, c.hora_cita, c.descripcion_tatuaje, c.precio_estimado
FROM citas AS c
JOIN artistas AS a
  ON c.id_artista = a.id
WHERE
  c.fecha_cita = '2024-08-10' AND c.estado = 'confirmada'
ORDER BY
  c.hora_cita ASC;

-- 4. Listar los artistas que no tienen ninguna cita programada (estado 'pendiente' o 'confirmada').
SELECT a.nombre, a.apellido, a.especialidad
FROM artistas AS a
LEFT JOIN citas AS c ON a.id = c.id_artista AND c.estado IN ('pendiente', 'confirmada')
WHERE c.id IS NULL;

-- 5. Calcular el precio estimado promedio de las citas por especialidad de artista.
SELECT
  a.especialidad,
  AVG(c.precio_estimado) AS precio_promedio_cita
FROM artistas AS a
JOIN citas AS c
  ON a.id = c.id_artista
GROUP BY
  a.especialidad
ORDER BY
  precio_promedio_cita DESC;

-- 6. Mostrar las citas con un precio estimado superior a 300.00, ordenadas por precio.
SELECT c.id AS id_cita, a.nombre AS nombre_artista, a.apellido AS apellido_artista, c.descripcion_tatuaje, c.precio_estimado, c.fecha_cita
FROM citas AS c
JOIN artistas AS a
  ON c.id_artista = a.id
WHERE
  c.precio_estimado > 300.00
ORDER BY
  c.precio_estimado DESC;