-- funcionalidades/ejercicio-011 - maria-montepeque
USE campuslands_mysql;

-- 1. Vista basica de reporte: junta las dos tablas en una consulta guardada y
-- reutilizable, sin tener que reescribir el JOIN cada vez.
CREATE OR REPLACE VIEW vista_saltos_detalle AS
SELECT
    p.nombre,
    p.licencia,
    s.fecha_salto,
    s.zona,
    s.altitud_metros,
    s.calificacion_instructor
FROM saltos_paracaidismo s
    INNER JOIN paracaidistas p ON p.id = s.paracaidista_id;

SELECT * FROM vista_saltos_detalle ORDER BY nombre, fecha_salto;

-- 2. Vista con agregacion: resumen por paracaidista (total de saltos, altitud
-- promedio, calificacion promedio). Sirve como reporte fijo para el equipo.
CREATE OR REPLACE VIEW vista_resumen_paracaidistas AS
SELECT
    p.id,
    p.nombre,
    p.licencia,
    COUNT(s.id) AS total_saltos,
    ROUND(AVG(s.altitud_metros), 0) AS altitud_promedio,
    ROUND(AVG(s.calificacion_instructor), 2) AS calificacion_promedio
FROM paracaidistas p
    LEFT JOIN saltos_paracaidismo s ON s.paracaidista_id = p.id
GROUP BY p.id, p.nombre, p.licencia;

SELECT * FROM vista_resumen_paracaidistas ORDER BY total_saltos DESC;

-- 2.1 Contraste directo: vista_saltos_detalle (JOIN simple, sin agregacion) SI
-- permite UPDATE porque la columna 'zona' pertenece a una sola tabla base.
UPDATE vista_saltos_detalle
SET zona = 'Zona Prueba'
WHERE nombre = 'Camila Restrepo' AND fecha_salto = '2026-01-05';

SELECT nombre, fecha_salto, zona FROM saltos_paracaidismo s
    INNER JOIN paracaidistas p ON p.id = s.paracaidista_id
WHERE p.nombre = 'Camila Restrepo' AND s.fecha_salto = '2026-01-05';

-- 3. Vista construida SOBRE otra vista: saltos de gran altitud (>= 4000 m),
-- filtrando vista_saltos_detalle en vez de repetir el JOIN original.
CREATE OR REPLACE VIEW vista_saltos_altos AS
SELECT * FROM vista_saltos_detalle WHERE altitud_metros >= 4000;

SELECT * FROM vista_saltos_altos ORDER BY altitud_metros DESC;

-- 4. Vista ACTUALIZABLE: como es una sola tabla sin agregacion, se puede
-- hacer UPDATE a traves de la vista y el cambio se refleja en la tabla real.
CREATE OR REPLACE VIEW vista_paracaidistas_activos AS
SELECT id, nombre, licencia, fecha_ingreso FROM paracaidistas;

UPDATE vista_paracaidistas_activos
SET fecha_ingreso = '2022-08-01'
WHERE nombre = 'Diego Fontes';

-- Se consulta la TABLA (no la vista) para confirmar que el UPDATE si aplico.
SELECT nombre, fecha_ingreso FROM paracaidistas WHERE nombre = 'Diego Fontes';

-- 5. Vista con WITH CHECK OPTION: solo paracaidistas con licencia 'A'.
-- Un UPDATE que los saque de esa condicion debe ser RECHAZADO por MySQL.
CREATE OR REPLACE VIEW vista_paracaidistas_licencia_a AS
SELECT id, nombre, licencia, fecha_ingreso
FROM paracaidistas
WHERE licencia = 'A'
WITH CHECK OPTION;

SELECT * FROM vista_paracaidistas_licencia_a ORDER BY nombre;

-- Update DENTRO del alcance de la vista: se permite (sigue siendo licencia 'A').
UPDATE vista_paracaidistas_licencia_a
SET fecha_ingreso = '2023-03-15'
WHERE nombre = 'Camila Restrepo';

SELECT nombre, licencia, fecha_ingreso
FROM vista_paracaidistas_licencia_a
WHERE nombre = 'Camila Restrepo';

-- 6. Introspeccion: definicion guardada de una vista y cuales son actualizables.
SHOW CREATE VIEW vista_resumen_paracaidistas;

SELECT table_name AS vista, is_updatable
FROM information_schema.views
WHERE table_schema = 'campuslands_mysql' AND table_name LIKE 'vista\_%'
ORDER BY table_name;

-- === Estas dos sentencias DEBEN fallar (se ejecutan aparte, ver evidencias/resultados_consultas.txt) ===
--
-- 7. UPDATE sobre una vista con GROUP BY: MySQL la marca IS_UPDATABLE = NO
-- porque 'total_saltos' es una columna calculada (COUNT), no una columna real.
-- UPDATE vista_resumen_paracaidistas SET total_saltos = 99 WHERE nombre = 'Camila Restrepo';
--
-- 8. UPDATE que viola el WITH CHECK OPTION: cambia la licencia de
-- 'Camila Restrepo' a 'D', lo que la sacaria del WHERE de la vista.
-- UPDATE vista_paracaidistas_licencia_a SET licencia = 'D' WHERE nombre = 'Camila Restrepo';
