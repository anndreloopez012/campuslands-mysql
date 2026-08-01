-- DML: Inserción de datos para garaje de motos
USE db_garaje_motos;

INSERT INTO motos_garaje (placa_moto, marca_moto, modelo_moto, cilindrada_cc, tarifa_dia, fecha_ingreso, estado_moto) VALUES
('ABC-123', 'Yamaha', 'MT-09', 890, 45.00, '2026-07-01', 'estacionada'),
('XYZ-789', 'Honda', 'CB650R', 649, 40.50, '2026-07-05', 'en_ruta'),
('MNO-456', 'Kawasaki', 'Ninja 400', 399, 30.00, '2026-07-10', 'estacionada'),
('DEF-321', 'Suzuki', 'V-Strom 650', 645, 38.00, '2026-07-12', 'en_mantenimiento'),
('GHI-654', 'KTM', 'Duke 390', 373, 32.50, '2026-07-15', 'estacionada'),
('JKL-987', 'BMW', 'G 310 GS', 313, 35.00, '2026-07-18', 'en_ruta'),
('PQR-159', 'Ducati', 'Monster 821', 821, 60.00, '2026-07-20', 'estacionada'),
('STU-753', 'Royal Enfield', 'Himalayan 411', 411, 25.00, '2026-07-22', 'retirada');