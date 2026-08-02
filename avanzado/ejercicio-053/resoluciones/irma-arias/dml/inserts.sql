USE arquitectura_3d_db;

INSERT INTO proyectos_arquitectura (nombre_proyecto, software_modelado, area_metros2, costo_usd, calificacion_cliente, estado) VALUES
('Torre Residencial Vista Verde', 'Revit', 1200.50, 45000.00, 9.2, 'en_proceso'),
('Casa Minimalista Los Pinos', 'SketchUp', 250.00, 12000.00, 8.5, 'revision'),
('Centro Comercial Oasis', '3ds Max', 5000.00, 120000.00, 9.8, 'en_proceso'),
('Oficinas Corporativas Nexus', 'Revit', 850.00, 35000.00, 9.0, 'revision'),
('Museo de Arte Contemporaneo', 'Rhino 3D', 3400.00, 95000.00, 9.5, 'en_proceso'),
('Cabaña Ecologica de Montaña', 'SketchUp', 180.00, 8500.00, 8.8, 'revision'),
('Complejo Deportivo Metropolitano', '3ds Max', 7500.00, 150000.00, 9.6, 'en_proceso'),
('Loft Urbano Moderno', 'Rhino 3D', 120.00, 6500.00, 8.9, 'revision');

-- Actualizaciones de registros (UPDATE) para simular cambios de estado y ajustes de negocio
UPDATE proyectos_arquitectura SET estado = 'completado', calificacion_cliente = 9.5 WHERE id_proyecto = 1;
UPDATE proyectos_arquitectura SET estado = 'completado', costo_usd = 13000.00 WHERE id_proyecto = 2;
UPDATE proyectos_arquitectura SET estado = 'completado', calificacion_cliente = 9.9 WHERE id_proyecto = 3;
