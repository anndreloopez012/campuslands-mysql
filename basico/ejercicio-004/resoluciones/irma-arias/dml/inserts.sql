
-- DML: Inserción de registros realistas enfocados en la práctica de INSERT
USE db_garaje_motos;

INSERT INTO motos_garaje (placa, marca, modelo, cilindrada, anio_fabricacion, tarifa_mantenimiento, estado, fecha_ingreso) VALUES
('ABC-123', 'Yamaha', 'MT-09', 850, 2023, 150.00, 'disponible', '2026-06-01 08:30:00'),
('XYZ-789', 'Honda', 'CBRE 600', 600, 2022, 220.50, 'en_mantenimiento', '2026-06-10 10:15:00'),
('MOT-456', 'Kawasaki', 'Ninja 400', 400, 2024, 90.00, 'disponible', '2026-07-02 09:00:00'),
('KTM-321', 'KTM', 'Duke 200', 200, 2021, 65.00, 'retirada', '2026-05-15 14:20:00'),
('SUZ-999', 'Suzuki', 'GSX-S750', 750, 2023, 180.00, 'en_mantenimiento', '2026-07-12 11:45:00'),
('BMW-111', 'BMW', 'G310R', 310, 2022, 110.25, 'disponible', '2026-06-20 16:30:00'),
('DUC-555', 'Ducati', 'Monster', 937, 2024, 350.00, 'disponible', '2026-07-18 08:00:00'),
('TRI-777', 'Triumph', 'Street Triple', 765, 2023, 275.50, 'en_mantenimiento', '2026-07-20 13:10:00');