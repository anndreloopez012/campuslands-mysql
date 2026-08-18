USE campuslands_mysql;

-- ===================================================================
-- DEMOSTRACION 1: ordenar por precio.
-- Con VARCHAR, MySQL compara texto caracter por caracter: el orden
-- queda alfabetico, no numerico.
-- ===================================================================
SELECT nombre, precio_inscripcion
FROM corredores_mal_tipado_demo
WHERE nombre <> 'Corredor Fantasma'
ORDER BY precio_inscripcion;
-- Resultado real: 120000.00, 150000.00, 45000.00, 60000.00, 90000.00
-- ("1" < "4" < "6" < "9" como texto). Un reporte de "el mas barato
-- primero" saldria mal sin que MySQL avise nada.

SELECT nombre, precio_inscripcion
FROM corredores_bien_tipado_demo
ORDER BY precio_inscripcion;
-- Resultado real: 45000.00, 60000.00, 90000.00, 120000.00, 150000.00
-- (orden numerico correcto), porque DECIMAL se compara como numero.

-- ===================================================================
-- DEMOSTRACION 2: validez de fechas.
-- Confirma que la fila con fecha_carrera = '2026-02-30' (que no existe
-- en el calendario) SI quedo guardada en la tabla VARCHAR.
-- ===================================================================
SELECT nombre, fecha_carrera
FROM corredores_mal_tipado_demo
WHERE nombre = 'Corredor Fantasma';

-- Nota de validacion manual: el mismo INSERT contra la columna DATE
-- real de corredores_bien_tipado_demo falla, porque MySQL valida que
-- la fecha exista en el calendario. Por ejemplo:
--   INSERT INTO corredores_bien_tipado_demo (nombre, precio_inscripcion, fecha_carrera, tiempo_llegada, checkpoints)
--   VALUES ('Corredor Fantasma', 50000.00, '2026-02-30', '00:50:00', JSON_ARRAY('00:20:00'));
-- da: ERROR 1292 (22007): Incorrect date value: '2026-02-30' for
-- column 'fecha_carrera' at row 1 (no se ejecuta aqui para no
-- interrumpir el script).

-- ===================================================================
-- DEMOSTRACION 3: leer un dato dentro de una lista (checkpoints).
-- JSON expone el segundo valor directamente por posicion; VARCHAR
-- necesita encadenar SUBSTRING_INDEX para llegar al mismo dato, y esa
-- logica se rompe apenas cambia la cantidad de valores.
-- ===================================================================
SELECT nombre, checkpoints ->> '$[1]' AS segundo_checkpoint
FROM corredores_bien_tipado_demo
ORDER BY nombre;

SELECT nombre,
       SUBSTRING_INDEX(SUBSTRING_INDEX(checkpoints, ',', 2), ',', -1) AS segundo_checkpoint
FROM corredores_mal_tipado_demo
WHERE nombre <> 'Corredor Fantasma'
ORDER BY nombre;

-- Cantidad de checkpoints por corredor: trivial con JSON_LENGTH,
-- frente a tener que contar comas manualmente en el VARCHAR.
SELECT nombre, JSON_LENGTH(checkpoints) AS total_checkpoints
FROM corredores_bien_tipado_demo
ORDER BY nombre;

-- ===================================================================
-- Confirmacion final: mismos datos, tipos distintos, mismo motor.
-- ===================================================================
SELECT COLUMN_NAME, DATA_TYPE
FROM information_schema.COLUMNS
WHERE TABLE_SCHEMA = 'campuslands_mysql'
  AND TABLE_NAME IN ('corredores_mal_tipado_demo', 'corredores_bien_tipado_demo')
ORDER BY TABLE_NAME, ORDINAL_POSITION;
