-- DML: Inserción de 8 registros útiles para evaluar subconsultas analíticas
USE db_taller_motos_intermedio;

INSERT INTO ordenes_taller (codigo_orden, cliente, placa_moto, servicio_realizado, costo_mano_obra, estado_orden, fecha_servicio) VALUES
('ORD-001', 'Carlos Pérez', 'ABC-123', 'Sincronización completa y cambio de bujías', 120.00, 'facturado', '2026-07-01'),
('ORD-002', 'Ana Gómez', 'XYZ-789', 'Cambio de kit de arrastre y tensor', 85.50, 'finalizado', '2026-07-05'),
('ORD-003', 'Luis Torres', 'MNO-456', 'Reparación general de suspensión delantera', 250.00, 'en_proceso', '2026-07-10'),
('ORD-004', 'Maria Rojas', 'LKP-999', 'Cambio de aceite y filtro de motor', 35.00, 'facturado', '2026-07-12'),
('ORD-005', 'Jorge Mejia', 'QWE-321', 'Rectificación de discos de freno y pastillas', 110.00, 'pendiente', '2026-07-15'),
('ORD-006', 'Sofia Castro', 'RTX-555', 'Diagnóstico de sistema eléctrico y batería', 60.00, 'en_proceso', '2026-07-18'),
('ORD-007', 'Carlos Pérez', 'HJK-888', 'Cambio de llanta trasera y tramado', 95.00, 'finalizado', '2026-07-20'),
('ORD-008', 'Diana Ruiz', 'POI-111', 'Reparación de motor de arranque y bendix', 210.00, 'pendiente', '2026-07-22');