-- 1. Ver todos los equipos
SELECT * FROM `ejercicio-007-int-equipos`;

-- 2. Estadísticas con equipo y temporada
SELECT e.nombre AS equipo, t.año, es.puntos, es.ganados, es.goles_favor
FROM `ejercicio-007-int-estadisticas` es
INNER JOIN `ejercicio-007-int-equipos` e ON es.equipo_id = e.id
INNER JOIN `ejercicio-007-int-temporadas` t ON es.temporada_id = t.id;

-- 3. Clasificación temporada 2024
SELECT e.nombre, es.puntos, es.ganados, es.goles_favor
FROM `ejercicio-007-int-estadisticas` es
INNER JOIN `ejercicio-007-int-equipos` e ON es.equipo_id = e.id
INNER JOIN `ejercicio-007-int-temporadas` t ON es.temporada_id = t.id
WHERE t.año = 2024
ORDER BY es.puntos DESC;

-- 4. Equipos con más de 80 puntos en 2024
SELECT e.nombre, es.puntos, es.ganados
FROM `ejercicio-007-int-estadisticas` es
INNER JOIN `ejercicio-007-int-equipos` e ON es.equipo_id = e.id
INNER JOIN `ejercicio-007-int-temporadas` t ON es.temporada_id = t.id
WHERE t.año = 2024 AND es.puntos > 80;

-- 5. Comparativa equipos entre temporadas
SELECT e.nombre,
       MAX(CASE WHEN t.año = 2023 THEN es.puntos END) AS puntos_2023,
       MAX(CASE WHEN t.año = 2024 THEN es.puntos END) AS puntos_2024
FROM `ejercicio-007-int-estadisticas` es
INNER JOIN `ejercicio-007-int-equipos` e ON es.equipo_id = e.id
INNER JOIN `ejercicio-007-int-temporadas` t ON es.temporada_id = t.id
GROUP BY e.id;