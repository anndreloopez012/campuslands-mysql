-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

-- 1. Seleccionar todos los juegos con su género, ordenados por título.
SELECT
  j.titulo,
  j.desarrollador,
  g.nombre AS genero,
  j.fecha_lanzamiento,
  j.calificacion_metacritic,
  j.estado
FROM juegos AS j
JOIN generos AS g
  ON j.id_genero = g.id
ORDER BY
  j.titulo ASC;

-- 2. Contar el número de juegos por género.
SELECT
  g.nombre AS genero,
  COUNT(j.id) AS total_juegos
FROM generos AS g
LEFT JOIN juegos AS j
  ON g.id = j.id_genero
GROUP BY
  g.nombre
ORDER BY
  total_juegos DESC;

-- 3. Encontrar los juegos con calificación Metacritic superior a 90.0 y que estén disponibles.
SELECT titulo, desarrollador, calificacion_metacritic, genero.nombre AS genero
FROM juegos
JOIN generos
  ON juegos.id_genero = generos.id
WHERE
  calificacion_metacritic > 90.0 AND estado = 'disponible'
ORDER BY
  calificacion_metacritic DESC;

-- 4. Listar juegos de un desarrollador específico (ej. 'Rockstar Games').
SELECT titulo, fecha_lanzamiento, calificacion_metacritic, genero.nombre AS genero
FROM juegos
JOIN generos
  ON juegos.id_genero = generos.id
WHERE
  desarrollador = 'Rockstar Games'
ORDER BY
  fecha_lanzamiento DESC;

-- 5. Mostrar los 5 juegos mejor calificados de todos los tiempos.
SELECT titulo, desarrollador, calificacion_metacritic, genero.nombre AS genero
FROM juegos
JOIN generos
  ON juegos.id_genero = generos.id
ORDER BY
  calificacion_metacritic DESC
LIMIT 5;

-- 6. Listar juegos que están actualmente en estado 'jugando' o 'pendiente'.
SELECT titulo, desarrollador, genero.nombre AS genero, estado
FROM juegos
JOIN generos
  ON juegos.id_genero = generos.id
WHERE
  estado IN ('jugando', 'pendiente')
ORDER BY
  titulo ASC;