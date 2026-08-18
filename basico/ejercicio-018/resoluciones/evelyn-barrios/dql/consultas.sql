-- Consultas base. Completar o reemplazar según el enunciado.
USE campuslands_mysql;

-- 1. Seleccionar todos los destinos activos, ordenados por país y luego por nombre del destino.
SELECT
  id,
  nombre,
  pais,
  precio_promedio_noche,
  descripcion
FROM destinos
WHERE
  estado = 'activo'
ORDER BY
  pais ASC,
  nombre ASC;

-- 2. Contar el número de reservas por destino.
SELECT
  d.nombre AS destino,
  d.pais,
  COUNT(r.id) AS total_reservas
FROM destinos AS d
LEFT JOIN reservas AS r
  ON d.id = r.id_destino
GROUP BY
  d.nombre,
  d.pais
ORDER BY
  total_reservas DESC;

-- 3. Encontrar las reservas confirmadas con un precio total superior a 1000.00.
SELECT r.id AS id_reserva, d.nombre AS destino, r.fecha_inicio, r.fecha_fin, r.precio_total, r.numero_personas
FROM reservas AS r
JOIN destinos AS d
  ON r.id_destino = d.id
WHERE
  r.estado = 'confirmada' AND r.precio_total > 1000.00
ORDER BY
  r.precio_total DESC;

-- 4. Listar los destinos que no tienen ninguna reserva confirmada.
SELECT d.nombre AS destino, d.pais
FROM destinos AS d
LEFT JOIN reservas AS r ON d.id = r.id_destino AND r.estado = 'confirmada'
WHERE r.id IS NULL;

-- 5. Calcular el ingreso total de todas las reservas confirmadas.
SELECT
  SUM(precio_total) AS ingreso_total_confirmado
FROM reservas
WHERE
  estado = 'confirmada';

-- 6. Mostrar las reservas que inician en el mes de septiembre de 2024.
SELECT r.id AS id_reserva, d.nombre AS destino, r.fecha_inicio, r.fecha_fin, r.estado
FROM reservas AS r
JOIN destinos AS d
  ON r.id_destino = d.id
WHERE
  YEAR(r.fecha_inicio) = 2024 AND MONTH(r.fecha_inicio) = 9
ORDER BY
  r.fecha_inicio ASC;