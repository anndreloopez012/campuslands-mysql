-- dml/inserts.sql
-- Inserción de datos de prueba para la tabla de motos.

USE garaje_motos;

INSERT INTO motos (marca, modelo, anio, cilindrada, precio_reparacion, estado_servicio, fecha_ingreso) VALUES
('Yamaha', 'MT-07', 2022, 689, 350.00, 'Completado', '2026-07-10'),
('Honda', 'CBR500R', 2021, 471, 420.50, 'En Proceso', '2026-07-20'),
('Kawasaki', 'Ninja 400', 2023, 399, 280.00, 'Pendiente', '2026-07-25'),
('Suzuki', 'V-Strom 650', 2020, 645, 550.75, 'Completado', '2026-06-15'),
('Ducati', 'Monster 821', 2019, 821, 750.00, 'En Proceso', '2026-07-18'),
('BMW', 'G 310 R', 2022, 313, 310.25, 'Entregado', '2026-05-30'),
('KTM', 'Duke 390', 2023, 373, 390.00, 'Pendiente', '2026-07-28'),
('Yamaha', 'R3', 2021, 321, 300.00, 'Completado', '2026-07-05');