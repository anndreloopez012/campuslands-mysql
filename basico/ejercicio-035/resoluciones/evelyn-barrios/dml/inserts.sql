-- Datos de practica. Puedes cambiarlos o agregar mas filas.
-- dml/inserts.sql
-- Inserción de datos de prueba para la tabla de motos del taller.

USE taller_motos;

INSERT INTO motos (marca, modelo, anio, kilometraje, fecha_recepcion, estado_reparacion, costo_estimado, descripcion_problema) VALUES
('Honda', 'CB500F', 2020, 25000, '2026-07-01', 'En Proceso', 350.00, 'Fallo en sistema eléctrico'),
('Yamaha', 'MT-03', 2022, 12000, '2026-07-05', 'Pendiente', 180.00, 'Cambio de aceite y filtros'),
('Kawasaki', 'Ninja 650', 2021, 18000, '2026-07-10', 'Completado', 520.50, 'Revisión de frenos y neumáticos'),
('Suzuki', 'GSX-S750', 2019, 30000, '2026-07-12', 'Pendiente', 400.00, 'Ajuste de válvulas'),
('Ducati', 'Monster 797', 2023, 8000, '2026-07-15', 'En Proceso', 600.00, 'Diagnóstico de ruido en motor'),
('BMW', 'G 310 GS', 2022, 15000, '2026-07-18', 'Completado', 250.00, 'Revisión general'),
('KTM', 'Duke 200', 2024, 5000, '2026-07-20', 'Pendiente', 120.00, 'Instalación de accesorios'),
('Harley-Davidson', 'Iron 883', 2018, 40000, '2026-07-22', 'En Proceso', 800.00, 'Reparación de transmisión');
