USE soldadura_db;

INSERT INTO trabajos_soldadura (tipo_soldadura, material_base, amperaje, costo_usd, calidad_inspeccion, estado) VALUES
('TIG', 'Acero Inoxidable', 120, 250.00, 9.6, 'aprobado'),
('MIG', 'Acero al Carbono', 180, 180.00, 8.8, 'aprobado'),
('SMAW (Electrodo)', 'Hierro Fundido', 110, 150.00, 7.5, 'defectuoso'),
('TIG', 'Aluminio', 140, 320.00, 9.8, 'aprobado'),
('FCAW', 'Acero Estructural', 220, 400.00, 8.2, 'pendiente'),
('MIG', 'Acero Inoxidable', 160, 210.00, 6.0, 'defectuoso'),
('SMAW', 'Acero al Carbono', 100, 120.00, 9.0, 'aprobado'),
('TIG', 'Titanio', 130, 500.00, 9.9, 'aprobado');

-- Eliminación controlada (DELETE) de registros defectuosos o no conformes
DELETE FROM trabajos_soldadura WHERE estado = 'defectuoso' AND calidad_inspeccion < 7.0;
DELETE FROM trabajos_soldadura WHERE id_trabajo = 6;
