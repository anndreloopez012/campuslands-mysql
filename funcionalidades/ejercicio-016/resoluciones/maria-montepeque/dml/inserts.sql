-- funcionalidades/ejercicio-016 - maria-montepeque
USE campuslands_mysql;

-- 8 proyectos reales, con estructura JSON que varia segun el proceso de
-- soldadura (MIG/TIG/SMAW/FCAW no necesitan los mismos atributos).
INSERT INTO proyectos_soldadura (nombre, cliente, fecha_inicio, especificaciones) VALUES
    ('Estructura Puente Peatonal', 'Constructora Vialsur', '2026-01-10', JSON_OBJECT(
        'proceso', 'MIG',
        'material_base', 'Acero al carbono',
        'espesor_mm', 8,
        'posicion', 'plana',
        'electrodo', JSON_OBJECT('tipo', 'ER70S-6', 'diametro_mm', 1.2),
        'certificaciones', JSON_ARRAY('AWS D1.1', 'ASME IX'),
        'pases_soldadura', JSON_ARRAY(
            JSON_OBJECT('numero', 1, 'amperaje', 210, 'velocidad_mm_min', 260),
            JSON_OBJECT('numero', 2, 'amperaje', 220, 'velocidad_mm_min', 250)
        )
    )),
    ('Tanque de Almacenamiento', 'PetroAndina', '2026-02-05', JSON_OBJECT(
        'proceso', 'SMAW',
        'material_base', 'Acero inoxidable 316L',
        'espesor_mm', 12,
        'posicion', 'vertical',
        'electrodo', JSON_OBJECT('tipo', 'E316L-16', 'diametro_mm', 3.2),
        'certificaciones', JSON_ARRAY('ASME IX', 'API 650'),
        'pases_soldadura', JSON_ARRAY(
            JSON_OBJECT('numero', 1, 'amperaje', 95, 'velocidad_mm_min', 120),
            JSON_OBJECT('numero', 2, 'amperaje', 100, 'velocidad_mm_min', 115),
            JSON_OBJECT('numero', 3, 'amperaje', 100, 'velocidad_mm_min', 110)
        )
    )),
    ('Tuberia de Alta Presion', 'Gasoducto Nacional', '2026-01-22', JSON_OBJECT(
        'proceso', 'TIG',
        'material_base', 'Acero aleado',
        'espesor_mm', 6,
        'posicion', 'horizontal fija',
        'electrodo', JSON_OBJECT('tipo', 'ER80S-B2', 'diametro_mm', 2.4),
        'certificaciones', JSON_ARRAY('ASME IX', 'API 1104'),
        'pases_soldadura', JSON_ARRAY(
            JSON_OBJECT('numero', 1, 'amperaje', 120, 'velocidad_mm_min', 80),
            JSON_OBJECT('numero', 2, 'amperaje', 130, 'velocidad_mm_min', 75)
        )
    )),
    ('Chasis Vehiculo Todo Terreno', 'OffRoad Motors', '2026-03-15', JSON_OBJECT(
        'proceso', 'MIG',
        'material_base', 'Acero al carbono',
        'espesor_mm', 4,
        'posicion', 'plana',
        'electrodo', JSON_OBJECT('tipo', 'ER70S-6', 'diametro_mm', 0.9),
        'certificaciones', JSON_ARRAY('AWS D1.1'),
        'pases_soldadura', JSON_ARRAY(
            JSON_OBJECT('numero', 1, 'amperaje', 160, 'velocidad_mm_min', 300)
        )
    )),
    ('Reparacion Casco de Barco', 'Astillero del Pacifico', '2026-02-18', JSON_OBJECT(
        'proceso', 'SMAW',
        'material_base', 'Acero naval',
        'espesor_mm', 10,
        'posicion', 'vertical',
        'electrodo', JSON_OBJECT('tipo', 'E7018', 'diametro_mm', 4.0),
        'certificaciones', JSON_ARRAY('AWS D1.1', 'ABS'),
        'pases_soldadura', JSON_ARRAY(
            JSON_OBJECT('numero', 1, 'amperaje', 140, 'velocidad_mm_min', 130),
            JSON_OBJECT('numero', 2, 'amperaje', 145, 'velocidad_mm_min', 125)
        )
    )),
    ('Marco Estructural Bodega', 'Logistica Norte', '2026-04-02', JSON_OBJECT(
        'proceso', 'FCAW',
        'material_base', 'Acero al carbono',
        'espesor_mm', 10,
        'posicion', 'plana',
        'electrodo', JSON_OBJECT('tipo', 'E71T-1', 'diametro_mm', 1.2),
        'certificaciones', JSON_ARRAY('AWS D1.1', 'ASME IX'),
        'pases_soldadura', JSON_ARRAY(
            JSON_OBJECT('numero', 1, 'amperaje', 230, 'velocidad_mm_min', 340),
            JSON_OBJECT('numero', 2, 'amperaje', 235, 'velocidad_mm_min', 330)
        )
    )),
    ('Soporte de Tuberia Industrial', 'Quimica Andina', '2026-03-28', JSON_OBJECT(
        'proceso', 'TIG',
        'material_base', 'Acero inoxidable 304',
        'espesor_mm', 3,
        'posicion', 'plana',
        'electrodo', JSON_OBJECT('tipo', 'ER308L', 'diametro_mm', 1.6),
        'certificaciones', JSON_ARRAY('ASME IX'),
        'pases_soldadura', JSON_ARRAY(
            JSON_OBJECT('numero', 1, 'amperaje', 90, 'velocidad_mm_min', 90)
        )
    )),
    ('Placa Base de Maquinaria', 'Metalmecanica Sur', '2026-05-05', JSON_OBJECT(
        'proceso', 'MIG',
        'material_base', 'Acero al carbono',
        'espesor_mm', 20,
        'posicion', 'plana',
        'electrodo', JSON_OBJECT('tipo', 'ER70S-6', 'diametro_mm', 1.6),
        'certificaciones', JSON_ARRAY('AWS D1.1', 'ASME IX'),
        'pases_soldadura', JSON_ARRAY(
            JSON_OBJECT('numero', 1, 'amperaje', 260, 'velocidad_mm_min', 220),
            JSON_OBJECT('numero', 2, 'amperaje', 265, 'velocidad_mm_min', 210),
            JSON_OBJECT('numero', 3, 'amperaje', 270, 'velocidad_mm_min', 200)
        )
    ));

-- 300 filas de relleno (JSON minimo) SOLO para que el indice funcional sobre
-- espesor_mm_gen tenga sentido: espesor_mm cicla 1-40, asi que un valor como
-- 33 queda con muy pocas filas de 308 en total.
SET SESSION cte_max_recursion_depth = 400;

INSERT INTO proyectos_soldadura (nombre, cliente, fecha_inicio, especificaciones)
WITH RECURSIVE secuencia AS (
    SELECT 1 AS n
    UNION ALL
    SELECT n + 1 FROM secuencia WHERE n < 300
)
SELECT
    CONCAT('Proyecto de Relleno #', n),
    'Cliente Generico',
    '2026-01-01',
    JSON_OBJECT('proceso', 'MIG', 'espesor_mm', 1 + (n % 40))
FROM secuencia;
