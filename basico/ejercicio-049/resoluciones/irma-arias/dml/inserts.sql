USE db_paracaidismo;

-- Inserción de mínimo 8 registros variados de saltos de paracaidismo
INSERT INTO saltos_paracaidismo (nombre_paracaidista, tipo_salto, altura_pies, duracion_caida_libre_seg, costo_usd, estado) VALUES
('Carlos Mendoza', 'Tandem', 12000, 45, 250.00, 'completado'),
('Ana Sofía Pérez', 'AFF', 15000, 60, 320.00, 'completado'),
('Mateo Gómez', 'Solo', 10000, 35, 180.00, 'completado'),
('Valentina Ruiz', 'Tandem', 14000, 50, 275.00, 'programado'),
('Alejandro Torres', 'Estatic Line', 4000, 0, 120.00, 'completado'),
('Lucía Fernández', 'AFF', 18000, 75, 380.00, 'en_espera'),
('Diego Morales', 'Tandem', 13000, 48, 260.00, 'completado'),
('Camila Rojas', 'Solo', 15000, 60, 210.00, 'programado');