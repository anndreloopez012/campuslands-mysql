-- funcionalidades/ejercicio-016 - maria-montepeque
USE campuslands_mysql;

-- 1. Extraer campos escalares del JSON con ->> (devuelve el valor sin
-- comillas, listo para usar como texto/numero normal).
SELECT
    nombre,
    especificaciones ->> '$.proceso' AS proceso,
    especificaciones ->> '$.material_base' AS material_base,
    especificaciones ->> '$.espesor_mm' AS espesor_mm
FROM proyectos_soldadura
WHERE id <= 8
ORDER BY nombre;

-- 2. Filtrar con una ruta JSON en el WHERE: solo proyectos soldados con TIG.
SELECT nombre, especificaciones ->> '$.electrodo.tipo' AS electrodo
FROM proyectos_soldadura
WHERE id <= 8 AND especificaciones ->> '$.proceso' = 'TIG';

-- 3. JSON_CONTAINS sobre un array: proyectos certificados bajo 'AWS D1.1'.
SELECT nombre, especificaciones -> '$.certificaciones' AS certificaciones
FROM proyectos_soldadura
WHERE id <= 8 AND JSON_CONTAINS(especificaciones -> '$.certificaciones', '"AWS D1.1"');

-- 4. JSON_TABLE: convierte el array 'pases_soldadura' de cada proyecto en
-- filas normales, como si fuera una tabla relacional aparte.
SELECT
    p.nombre,
    pases.numero,
    pases.amperaje,
    pases.velocidad_mm_min
FROM proyectos_soldadura p,
    JSON_TABLE(
        p.especificaciones,
        '$.pases_soldadura[*]'
        COLUMNS (
            numero INT PATH '$.numero',
            amperaje INT PATH '$.amperaje',
            velocidad_mm_min INT PATH '$.velocidad_mm_min'
        )
    ) AS pases
WHERE p.id <= 8
ORDER BY p.nombre, pases.numero;

-- 5. JSON_SET: agrega una clave nueva ('inspeccion') al documento SIN
-- reescribir el resto del JSON.
UPDATE proyectos_soldadura
SET especificaciones = JSON_SET(especificaciones, '$.inspeccion', JSON_OBJECT('aprobada', TRUE, 'inspector', 'Laura Nieto'))
WHERE nombre = 'Estructura Puente Peatonal';

SELECT nombre, especificaciones ->> '$.inspeccion.aprobada' AS inspeccion_aprobada,
    especificaciones ->> '$.inspeccion.inspector' AS inspector
FROM proyectos_soldadura
WHERE nombre = 'Estructura Puente Peatonal';

-- 6. Indexar un campo JSON: ANTES de crear el indice, filtrar por la ruta
-- JSON cruda (o por la columna generada sin indexar) recorre las 308 filas.
EXPLAIN SELECT nombre FROM proyectos_soldadura WHERE especificaciones ->> '$.espesor_mm' = '33';
EXPLAIN SELECT nombre FROM proyectos_soldadura WHERE espesor_mm_gen = 33;

CREATE INDEX idx_espesor_mm_gen ON proyectos_soldadura (espesor_mm_gen);

-- DESPUES de indexar la columna generada, el mismo filtro usa el indice.
EXPLAIN SELECT nombre FROM proyectos_soldadura WHERE espesor_mm_gen = 33;

SELECT COUNT(*) AS proyectos_espesor_33 FROM proyectos_soldadura WHERE espesor_mm_gen = 33;
