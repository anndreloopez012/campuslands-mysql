USE db_soldadura_industrial;

-- Inserción de mínimo 8 registros variados de trabajos de soldadura
INSERT INTO trabajos_soldadura (codigo_cordon, tipo_proceso, material_base, longitud_mm, amperaje_usado, estado) VALUES
('COR-001', 'MIG', 'Acero al Carbono', 250.50, 180, 'aprobado'),
('COR-002', 'TIG', 'Acero Inoxidable', 120.00, 110, 'aprobado'),
('COR-003', 'SMAW', 'Hierro Fundido', 80.00, 130, 'defectuoso'),
('COR-004', 'FCAW', 'Acero Estructural', 450.00, 220, 'en_revision'),
('COR-005', 'TIG', 'Aluminio', 150.00, 140, 'rechazado'),
('COR-006', 'MIG', 'Acero al Carbono', 300.00, 190, 'aprobado'),
('COR-007', 'SMAW', 'Acero Estructural', 95.00, 125, 'defectuoso'),
('COR-008', 'TIG', 'Acero Inoxidable', 200.00, 120, 'aprobado');

-- =========================================================================
-- PRÁCTICA DE BORRADO CONTROLADO (DELETE)
-- =========================================================================

-- Borrado 1: Eliminar registros que se encuentren explícitamente en estado 'rechazado'
DELETE FROM trabajos_soldadura
WHERE estado = 'rechazado';

-- Borrado 2: Eliminar cordones defectuosos cuya longitud sea menor a 100 mm (casos críticos descartados)
DELETE FROM trabajos_soldadura
WHERE estado = 'defectuoso' AND longitud_mm < 100.00;

-- Borrado 3: Eliminar un registro específico por su código o ID único
DELETE FROM trabajos_soldadura
WHERE codigo_cordon = 'COR-004';