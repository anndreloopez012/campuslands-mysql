-- DML: Inserción de registros realistas enfocados en la práctica de consultas SELECT
USE db_taller_mecanico;

INSERT INTO ordenes_reparacion (codigo_orden, cliente, moto_modelo, tipo_servicio, costo_mano_obra, costo_repuestos, estado, fecha_ingreso) VALUES
('ORD-001', 'Carlos Pérez', 'Yamaha FZ 250', 'Sincronización y Mantenimiento', 80.00, 45.50, 'completada', '2026-07-01 09:30:00'),
('ORD-002', 'María Gómez', 'Honda CB 190R', 'Cambio de Kit de Arrastre', 40.00, 110.00, 'entregada', '2026-07-03 10:15:00'),
('ORD-003', 'Andrés Ruiz', 'Suzuki Gixxer 150', 'Reparación de Sistema Eléctrico', 95.00, 60.00, 'en_proceso', '2026-07-10 14:00:00'),
('ORD-004', 'Luisa Torres', 'Bajaj Pulsar NS 200', 'Cambio de Aceite y Filtros', 25.00, 35.00, 'completada', '2026-07-12 11:20:00'),
('ORD-005', 'Jorge Castro', 'KTM Duke 390', 'Mantenimiento de Suspensión', 150.00, 220.00, 'pendiente', '2026-07-18 08:45:00'),
('ORD-006', 'Sofía Morales', 'Yamaha MT-03', 'Cambio de Pastillas de Freno', 50.00, 85.00, 'en_proceso', '2026-07-19 15:30:00'),
('ORD-007', 'David Rojas', 'TVS Apache RTR 200', 'Sincronización General', 75.00, 40.00, 'pendiente', '2026-07-20 09:00:00'),
('ORD-008', 'Valeria Ríos', 'Honda XR 150L', 'Revisión General y Ajuste', 60.00, 25.00, 'entregada', '2026-06-28 16:10:00');