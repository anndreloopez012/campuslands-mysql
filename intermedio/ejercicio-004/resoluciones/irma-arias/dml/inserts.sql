-- DML: Inserción de 8 registros útiles para probar consultas con filtros HAVING
USE db_garaje_motos_intermedio;

INSERT INTO motos_taller (placa, marca, modelo, cilindraje, costo_reparacion, estado_motos, fecha_ingreso) VALUES
('ABC-123', 'Yamaha', 'FZ 250', 250, 180.00, 'en_reparacion', '2026-07-01'),
('XYZ-789', 'Honda', 'CB 190R', 184, 95.00, 'listo_entrega', '2026-07-02'),
('MNO-456', 'Yamaha', 'MT-03', 321, 450.00, 'en_revision', '2026-07-03'),
('LKP-999', 'Kawasaki', 'Ninja 400', 400, 520.00, 'en_reparacion', '2026-07-04'),
('QWE-321', 'KTM', 'Duke 200', 199, 120.00, 'entregado', '2026-07-05'),
('RTX-555', 'Bajaj', 'Pulsar NS200', 199, 150.00, 'listo_entrega', '2026-07-06'),
('HJK-888', 'Yamaha', 'XTZ 150', 150, 85.00, 'en_revision', '2026-07-07'),
('POI-111', 'Honda', 'XR 190', 190, 210.00, 'en_reparacion', '2026-07-08');