-- Consultas base. Completar o reemplazar según el enunciado.
USE campuslands_mysql;

-- 1. Seleccionar todas las ilustraciones publicadas, ordenadas por fecha de creación descendente.
SELECT
  id,
  titulo,
  artista,
  software_usado,
  fecha_creacion,
  calificacion_promedio
FROM ilustraciones
WHERE
  estado = 'publicado'
ORDER BY
  fecha_creacion DESC;

-- 2. Listar ilustraciones creadas por 'Elena García' que tienen una calificación promedio superior a 8.0.
SELECT
  titulo,
  software_usado,
  fecha_creacion,
  calificacion_promedio
FROM ilustraciones
WHERE
  artista = 'Elena García' AND calificacion_promedio > 8.0
ORDER BY
  calificacion_promedio DESC;

-- 3. Encontrar ilustraciones que utilizan 'Photoshop' o 'Clip Studio Paint' como software.
SELECT titulo, artista, software_usado, fecha_creacion
FROM ilustraciones
WHERE
  software_usado IN ('Photoshop', 'Clip Studio Paint')
ORDER BY
  artista ASC,
  titulo ASC;

-- 4. Mostrar ilustraciones que fueron creadas en el año 2023 y cuyo estado no es 'archivado'.
SELECT titulo, artista, fecha_creacion, estado
FROM ilustraciones
WHERE
  YEAR(fecha_creacion) = 2023 AND estado != 'archivado'
ORDER BY
  fecha_creacion ASC;

-- 5. Contar el número de ilustraciones por artista para aquellas con calificación promedio mayor o igual a 7.5.
SELECT
  artista,
  COUNT(id) AS total_ilustraciones_alta_calificacion
FROM ilustraciones
WHERE
  calificacion_promedio >= 7.5
GROUP BY
  artista
ORDER BY
  total_ilustraciones_alta_calificacion DESC;

-- 6. Listar ilustraciones que tienen un título que contiene la palabra 'Diseño' y están en estado 'publicado'.
SELECT titulo, artista, software_usado, fecha_creacion
FROM ilustraciones
WHERE
  titulo LIKE '%Diseño%' AND estado = 'publicado'
ORDER BY
  titulo ASC;