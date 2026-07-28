USE db_arquitectura_3d_irma;

INSERT INTO proyectos_arquitectura (nombre_proyecto, software_render, area_construccion_m2, presupuesto_usd, estado_proyecto) VALUES
('Torre Residencial Vista Verde', 'Lumion', 2500.00, 150000.00, 'Diseño'),
('Casa Campestre Minimalista', 'Enscape', 350.00, 45000.00, 'Diseño'),
('Centro Comercial Metrópolis', 'V-Ray', 12000.00, 850000.00, 'Renderizado'),
('Complejo de Oficinas Corporativas', 'Corona', 4500.00, 320000.00, 'Aprobado'),
('Museo de Arte Contemporáneo', 'Twinmotion', 3100.00, 210000.00, 'Diseño'),
('Residencia Unifamiliar Lujo', 'Lumion', 600.00, 95000.00, 'Renderizado'),
('Pabellón Botánico Sustentable', 'Enscape', 800.00, 60000.00, 'Diseño'),
('Hotel Playero度假村', 'V-Ray', 5000.00, 480000.00, 'Aprobado');

-- Aplicación práctica de UPDATE: Actualizar estados y ajustar presupuestos
UPDATE proyectos_arquitectura 
SET estado_proyecto = 'Renderizado', presupuesto_usd = presupuesto_usd * 1.10 
WHERE id = 1;

UPDATE proyectos_arquitectura 
SET estado_proyecto = 'Entregado' 
WHERE id = 4;

UPDATE proyectos_arquitectura 
SET estado_proyecto = 'Aprobado' 
WHERE id = 2;