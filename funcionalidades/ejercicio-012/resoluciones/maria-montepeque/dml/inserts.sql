-- funcionalidades/ejercicio-012 - maria-montepeque
USE campuslands_mysql;

INSERT INTO artistas_tatuaje (nombre, especialidad, tarifa_hora) VALUES
    ('Renata Salgado', 'Blackwork', 45.00),
    ('Mauricio Lem', 'Realismo', 60.00),
    ('Daniela Fox', 'Tradicional', 40.00),
    ('Andres Kuro', 'Acuarela', 55.00),
    ('Paola Vega', 'Fine Line', 35.00);

-- costo_total = horas_estimadas * tarifa_hora del artista AL MOMENTO de agendar.
INSERT INTO citas_tatuaje (artista_id, cliente, fecha_cita, horas_estimadas, estado, costo_total) VALUES
    (1, 'Carlos Mendoza', '2026-01-10', 3.0, 'completada', 135.00),
    (1, 'Lucia Fernandez', '2026-02-14', 2.0, 'completada', 90.00),
    (1, 'Miguel Torres', '2026-07-30', 4.0, 'agendada', 180.00),
    (2, 'Ines Duarte', '2026-01-20', 5.0, 'completada', 300.00),
    (2, 'Oscar Paredes', '2026-03-05', 3.0, 'cancelada', 180.00),
    (2, 'Valeria Nunez', '2026-08-01', 6.0, 'agendada', 360.00),
    (3, 'Hugo Restrepo', '2026-01-15', 2.5, 'completada', 100.00),
    (3, 'Karla Ibarra', '2026-04-10', 3.0, 'completada', 120.00),
    (3, 'Diego Salas', '2026-08-05', 2.0, 'agendada', 80.00),
    (4, 'Fernanda Rios', '2026-02-01', 4.0, 'completada', 220.00),
    (4, 'Julian Cabrera', '2026-05-22', 3.5, 'agendada', 192.50),
    (5, 'Marta Solano', '2026-01-25', 1.5, 'completada', 52.50),
    (5, 'Pedro Nunez', '2026-03-18', 2.0, 'completada', 70.00),
    (5, 'Sofia Delgado', '2026-06-30', 2.5, 'agendada', 87.50);
