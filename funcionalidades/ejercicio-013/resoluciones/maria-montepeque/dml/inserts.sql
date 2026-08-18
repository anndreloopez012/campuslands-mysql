-- funcionalidades/ejercicio-013 - maria-montepeque
USE campuslands_mysql;

INSERT INTO ilustradores_digitales (alias, nivel, tarifa_hora_base) VALUES
    ('Mika Aoi', 'Profesional', 25.00),
    ('Renzo Volt', 'Avanzado', 20.00),
    ('Cami Duna', 'Intermedio', 15.00),
    ('Theo Lark', 'Principiante', 10.00),
    ('Nadia Prism', 'Avanzado', 22.00);

INSERT INTO ilustraciones (ilustrador_id, titulo, categoria, horas_trabajadas, capas, fecha_entrega) VALUES
    (1, 'Guardiana del Bosque', 'Personaje', 12.0, 24, '2026-01-15'),
    (1, 'Ciudad Neon', 'Fondo', 18.0, 30, '2026-02-20'),
    (1, 'Icono App Clima', 'Icono', 2.0, 4, '2026-03-01'),
    (2, 'Robot Centinela', 'Personaje', 9.0, 18, '2026-01-25'),
    (2, 'Ruinas Antiguas', 'Fondo', 14.0, 22, '2026-04-05'),
    (3, 'Gato Mago', 'Personaje', 6.0, 10, '2026-02-10'),
    (3, 'Icono Perfil', 'Icono', 1.5, 3, '2026-02-15'),
    (3, 'Concept Nave Espacial', 'Concept Art', 8.0, 14, '2026-05-01'),
    (4, 'Personaje Chibi', 'Personaje', 4.0, 6, '2026-01-05'),
    (4, 'Icono Boton Play', 'Icono', 0.5, 2, '2026-01-10'),
    (5, 'Dragon de Cristal', 'Personaje', 16.0, 28, '2026-03-10'),
    (5, 'Paisaje Alienigena', 'Fondo', 20.0, 35, '2026-04-15'),
    (5, 'Icono Notificacion', 'Icono', 1.0, 3, '2026-05-20'),
    (5, 'Concept Armadura', 'Concept Art', 10.0, 16, '2026-06-01');
