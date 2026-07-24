-- DML: Inserción de 8 registros útiles para probar los triggers y consultas del garaje
USE db_garaje_motos_avanzado;

INSERT INTO motos_garaje (placa, marca, modelo, cilindraje, costo_reparacion, estado_motos) VALUES
('ABC-123', 'Yamaha', 'FZ 250', 250, 150.00, 'en_reparacion'),
('XYZ-789', 'Honda', 'CB 190R', 184, 80.00, 'listo_entrega'),
('MNO-456', 'Suzuki', 'Gixxer 150', 155, 300.00, 'en_revision'),
('LKP-999', 'Kawasaki', 'Ninja 400', 400, 450.00, 'en_reparacion'),
('QWE-321', 'KTM', 'Duke 200', 199, 120.00, 'entregado'),
('RTX-555', 'Bajaj', 'Pulsar NS200', 199, 95.00, 'listo_entrega'),
('HJK-888', 'TVS', 'Apache RTR 160', 160, 210.00, 'en_revision'),
('POI-111', 'Yamaha', 'MT-03', 321, 600.00, 'en_reparacion');

-- Simulación de actualización para activar el Trigger BEFORE UPDATE
UPDATE motos_garaje SET estado_motos = 'listo_entrega', costo_reparacion = 180.00 WHERE placa = 'ABC-123';