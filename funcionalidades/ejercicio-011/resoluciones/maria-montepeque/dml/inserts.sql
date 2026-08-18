-- funcionalidades/ejercicio-011 - maria-montepeque
USE campuslands_mysql;

-- 8 paracaidistas. 4 tienen licencia 'A' (ids 1, 3, 5, 8): ese es el grupo que
-- despues usa la vista con WITH CHECK OPTION.
INSERT INTO paracaidistas (nombre, licencia, fecha_ingreso) VALUES
    ('Camila Restrepo', 'A', '2023-03-10'),
    ('Diego Fontes', 'B', '2022-07-22'),
    ('Elena Suarez', 'A', '2024-01-15'),
    ('Fabian Rios', 'C', '2021-11-05'),
    ('Gabriela Nunez', 'A', '2023-09-30'),
    ('Hector Paredes', 'D', '2020-05-18'),
    ('Isabel Marin', 'B', '2022-02-14'),
    ('Julian Ospina', 'A', '2024-06-01');

INSERT INTO saltos_paracaidismo (paracaidista_id, fecha_salto, zona, altitud_metros, tiempo_caida_libre_seg, calificacion_instructor) VALUES
    (1, '2026-01-05', 'Zona Norte', 3500, 45, 8.5),
    (1, '2026-02-10', 'Zona Norte', 4000, 50, 9.0),
    (1, '2026-03-15', 'Zona Sur', 3200, 40, 8.0),
    (2, '2026-01-12', 'Zona Sur', 2800, 35, 7.5),
    (2, '2026-03-20', 'Zona Norte', 3600, 46, 8.2),
    (3, '2026-01-20', 'Zona Norte', 4200, 55, 9.2),
    (3, '2026-02-25', 'Zona Este', 3900, 48, 8.8),
    (4, '2026-01-08', 'Zona Sur', 2600, 32, 7.0),
    (4, '2026-04-02', 'Zona Sur', 2700, 33, 7.2),
    (5, '2026-02-01', 'Zona Norte', 4500, 58, 9.5),
    (5, '2026-03-05', 'Zona Este', 4100, 52, 9.0),
    (5, '2026-05-10', 'Zona Norte', 3800, 47, 8.7),
    (6, '2026-01-15', 'Zona Sur', 2500, 30, 6.8),
    (7, '2026-02-18', 'Zona Este', 3300, 42, 8.0),
    (7, '2026-04-22', 'Zona Norte', 3700, 46, 8.3),
    (8, '2026-01-30', 'Zona Norte', 4300, 56, 9.3),
    (8, '2026-03-12', 'Zona Este', 4000, 50, 9.1),
    (8, '2026-06-18', 'Zona Sur', 3900, 49, 8.9);
