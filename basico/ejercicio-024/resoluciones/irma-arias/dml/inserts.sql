USE db_soldadura_industrial_irma;

INSERT INTO trabajos_soldadura (codigo_pieza, proceso_soldadura, espesor_mm, amperaje, estado_inspeccion) VALUES
('PZ-STRUCT-001', 'SMAW', 12.50, 140, 'Aprobado'),
('PZ-PIPE-002', 'GTAW', 6.20, 110, 'Aprobado'),
('PZ-TUBE-003', 'GMAW', 8.00, 180, 'Rechazado'),
('PZ-PLATE-004', 'FCAW', 15.00, 220, 'Pendiente'),
('PZ-TANK-005', 'SAW', 25.00, 350, 'Aprobado'),
('PZ-BRACKET-006', 'GMAW', 4.50, 130, 'Rechazado'),
('PZ-BEAM-007', 'SMAW', 10.00, 150, 'Pendiente'),
('PZ-FLANGE-008', 'GTAW', 5.00, 95, 'Aprobado');

-- Aplicación de DELETE controlado: Depuración estricta de registros rechazados o pruebas obsoletas
DELETE FROM trabajos_soldadura 
WHERE estado_inspeccion = 'Rechazado' AND espesor_mm < 5.00;

DELETE FROM trabajos_soldadura 
WHERE id = 6;