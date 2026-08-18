-- Vista 1: Clasificación completa con nombres
CREATE VIEW `v_clasificacion` AS
SELECT e.nombre AS equipo, t.año, es.puntos, es.ganados, 
       es.empatados, es.perdidos, es.goles_favor, es.goles_contra
FROM `ejercicio-007-adv-estadisticas` es
INNER JOIN `ejercicio-007-adv-equipos` e ON es.equipo_id = e.id
INNER JOIN `ejercicio-007-adv-temporadas` t ON es.temporada_id = t.id;

-- Vista 2: Mejores equipos (más de 80 puntos)
CREATE VIEW `v_mejores_equipos` AS
SELECT e.nombre, MAX(es.puntos) AS max_puntos, 
       AVG(es.puntos) AS avg_puntos, COUNT(*) AS temporadas
FROM `ejercicio-007-adv-estadisticas` es
INNER JOIN `ejercicio-007-adv-equipos` e ON es.equipo_id = e.id
GROUP BY e.id
HAVING max_puntos > 80;

-- Vista 3: Comparativa temporadas
CREATE VIEW `v_comparativa` AS
SELECT e.nombre,
       MAX(CASE WHEN t.año = 2023 THEN es.puntos END) AS puntos_2023,
       MAX(CASE WHEN t.año = 2024 THEN es.puntos END) AS puntos_2024,
       MAX(CASE WHEN t.año = 2024 THEN es.puntos END) - 
       MAX(CASE WHEN t.año = 2023 THEN es.puntos END) AS diferencia
FROM `ejercicio-007-adv-estadisticas` es
INNER JOIN `ejercicio-007-adv-equipos` e ON es.equipo_id = e.id
INNER JOIN `ejercicio-007-adv-temporadas` t ON es.temporada_id = t.id
GROUP BY e.id;

-- Consultar vistas
SELECT * FROM `v_clasificacion` WHERE año = 2024 ORDER BY puntos DESC;
SELECT * FROM `v_mejores_equipos`;
SELECT * FROM `v_comparativa`;