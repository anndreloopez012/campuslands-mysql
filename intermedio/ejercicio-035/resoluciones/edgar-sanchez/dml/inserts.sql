INSERT INTO categorias_repuesto (nombre_categoria, descripcion) VALUES
('Motor y Transmisión', 'Pistones, empaques, cadenas de tiempo y discos de embrague'),
('Sistema de Frenos', 'Pastillas, discos de freno, líquidos y cilindros maestros'),
('Suspensión y Llantas', 'Retenes de barras, amortiguadores, neumáticos y neumáticos tubeless');

INSERT INTO repuestos_moto (categoria_id, codigo_sku, nombre_repuesto, precio_unitario_usd, stock_actual) VALUES
(1, 'REP-MOT-001', 'Kit de Arrastre Reforzado 520', 85.00, 15),
(1, 'REP-MOT-002', 'Discos de Embrague de Kevlar', 45.00, 8),
(2, 'REP-FRE-001', 'Pastillas de Freno Sinterizadas', 32.50, 25),
(2, 'REP-FRE-002', 'Disco de Freno Flotante 300mm', 110.00, 4),
(3, 'REP-SUS-001', 'Kit Retenes y Polveras de Barra', 28.00, 12);

INSERT INTO mecanicos (nombre_mecanico, especialidad, correo, tarifa_hora_usd) VALUES
('Carlos Ramos', 'Motores de Alta Cilindrada', 'carlos.ramos@tallermotos.com', 25.00),
('Manuel Reyes', 'Sistemas de Frenos y Suspensión', 'manuel.reyes@tallermotos.com', 20.00),
('Jorge Contreras', 'Diagnóstico Electrónico', 'jorge.contreras@tallermotos.com', 22.50);

INSERT INTO ordenes_trabajo (mecanico_id, codigo_orden, cliente_nombre, placa_moto, fecha_ingreso, horas_trabajadas, estado_orden) VALUES
(1, 'OT-2026-001', 'Mario Estrada', 'M-450GHT', '2026-08-01 08:30:00', 4.50, 'Entregada'),
(2, 'OT-2026-002', 'Lucía Méndez', 'M-120JKL', '2026-08-03 10:15:00', 2.00, 'Entregada'),
(1, 'OT-2026-003', 'Rodrigo Vásquez', 'M-890BNM', '2026-08-05 14:00:00', 6.00, 'Entregada'),
(3, 'OT-2026-004', 'Andrea Paredes', 'M-331QWE', '2026-08-10 09:00:00', 1.50, 'En Proceso');

INSERT INTO repuestos_utilizados_ot (orden_id, repuesto_id, cantidad, precio_aplicado_usd) VALUES
(1, 1, 1, 85.00),
(1, 2, 1, 45.00),
(2, 3, 2, 32.50),
(3, 1, 1, 85.00),
(3, 4, 1, 110.00),
(3, 5, 2, 28.00);