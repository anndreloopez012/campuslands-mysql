-- Datos de practica: los MISMOS corredores de una carrera urbana,
-- guardados una vez con tipos incorrectos (VARCHAR para todo) y otra
-- vez con el tipo correcto de MySQL para cada dato.
USE campuslands_mysql;

INSERT INTO corredores_mal_tipado_demo (nombre, precio_inscripcion, fecha_carrera, tiempo_llegada, checkpoints) VALUES
('Mateo Rivas', '45000.00', '2026-01-10', '00:48:12', '00:15:32,00:31:10,00:48:12'),
('Santi Belmonte', '90000.00', '2026-01-10', '01:42:05', '00:35:00,01:10:20,01:42:05'),
('Diego Palma', '150000.00', '2026-01-10', '03:58:40', '01:00:00,02:05:15,03:58:40'),
('Ruben Casal', '60000.00', '2026-01-10', '00:52:30', '00:16:00,00:33:45,00:52:30'),
('Nico Farias', '120000.00', '2026-01-10', '02:15:18', '00:40:00,01:25:00,02:15:18');

INSERT INTO corredores_bien_tipado_demo (nombre, precio_inscripcion, fecha_carrera, tiempo_llegada, checkpoints) VALUES
('Mateo Rivas', 45000.00, '2026-01-10', '00:48:12', JSON_ARRAY('00:15:32', '00:31:10', '00:48:12')),
('Santi Belmonte', 90000.00, '2026-01-10', '01:42:05', JSON_ARRAY('00:35:00', '01:10:20', '01:42:05')),
('Diego Palma', 150000.00, '2026-01-10', '03:58:40', JSON_ARRAY('01:00:00', '02:05:15', '03:58:40')),
('Ruben Casal', 60000.00, '2026-01-10', '00:52:30', JSON_ARRAY('00:16:00', '00:33:45', '00:52:30')),
('Nico Farias', 120000.00, '2026-01-10', '02:15:18', JSON_ARRAY('00:40:00', '01:25:00', '02:15:18'));

-- ===================================================================
-- DEMOSTRACION: MySQL valida un DATE de verdad, un VARCHAR no.
-- '2026-02-30' no existe en el calendario (febrero de 2026 solo tiene
-- 28 dias).
-- ===================================================================
--
-- En la tabla BIEN tipada esto fallaria (por eso NO se ejecuta aqui,
-- se deja documentado como prueba manual en dql/consultas.sql):
--   INSERT INTO corredores_bien_tipado_demo (nombre, precio_inscripcion, fecha_carrera, tiempo_llegada, checkpoints)
--   VALUES ('Corredor Fantasma', 50000.00, '2026-02-30', '00:50:00', JSON_ARRAY('00:20:00'));
--   -> ERROR 1292 (22007): Incorrect date value: '2026-02-30' for column 'fecha_carrera'
--
-- En la tabla MAL tipada, la MISMA fecha invalida SI se guarda sin
-- ningun error, porque VARCHAR no sabe que "deberia" ser una fecha:
INSERT INTO corredores_mal_tipado_demo (nombre, precio_inscripcion, fecha_carrera, tiempo_llegada, checkpoints)
VALUES ('Corredor Fantasma', '50000.00', '2026-02-30', '00:50:00', '00:20:00,00:50:00');
