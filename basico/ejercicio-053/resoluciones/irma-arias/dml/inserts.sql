USE db_arquitectura_3d;

-- Inserción de mínimo 8 registros variados de proyectos de arquitectura 3D
INSERT INTO proyectos_arquitectura (nombre_proyecto, tipo_inmueble, superficie_m2, presupuesto_usd, software_bim, estado) VALUES
('Torre Residencial Altavista', 'Residencial', 4500.00, 350000.00, 'Revit', 'en_desarrollo'),
('Centro Comercial El Oasis', 'Comercial', 12000.00, 980000.00, 'Archicad', 'revision_cliente'),
('Casa Campestre Los Pinos', 'Residencial', 350.00, 120000.00, 'SketchUp', 'borrador'),
('Parque Tecnológico e Innovación', 'Industrial', 8500.00, 650000.00, 'Revit', 'en_desarrollo'),
('Edificio de Oficinas Corporativas Nexus', 'Comercial', 6000.00, 520000.00, 'Rhino', 'revision_cliente'),
('Villa Minimalista Zen', 'Residencial', 420.00, 175000.00, 'SketchUp', 'aprobado'),
('Complejo Logístico Bodegas Sur', 'Industrial', 15000.00, 1100000.00, 'Archicad', 'borrador'),
('Remodelación Museo de Arte Moderno', 'Comercial', 2200.00, 290000.00, 'Revit', 'aprobado');

-- =========================================================================
-- PRÁCTICA DE ACTUALIZACIÓN (UPDATE)
-- =========================================================================

-- Actualización 1: Cambiar el estado de los proyectos en 'borrador' a 'en_desarrollo'
UPDATE proyectos_arquitectura
SET estado = 'en_desarrollo'
WHERE estado = 'borrador';

-- Actualización 2: Incrementar un 10% el presupuesto de los proyectos desarrollados en 'SketchUp'
UPDATE proyectos_arquitectura
SET presupuesto_usd = presupuesto_usd * 1.10
WHERE software_bim = 'SketchUp';

-- Actualización 3: Actualizar el estado a 'finalizado' para un proyecto específico por su ID
UPDATE proyectos_arquitectura
SET estado = 'finalizado'
WHERE id = 6;