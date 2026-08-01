-- DML: Inserción de datos para taller mecánico de motos
USE db_taller_mecanico;

INSERT INTO reparaciones_motos (codigo_orden, propietario, modelo_moto, tipo_servicio, costo_mano_obra, costo_repuestos, fecha_ingreso, estado_reparacion) VALUES
('ORD-101', 'Carlos Mendoza', 'Yamaha FZ-16', 'Cambio de Kit de Arrastre', 45.00, 85.50, '2026-07-20', 'finalizada'),
('ORD-102', 'Ana Gomez', 'Honda Navi 110', 'Mantenimiento General', 30.00, 25.00, '2026-07-22', 'en_proceso'),
('ORD-103', 'Luis Torres', 'Pulsar NS 200', 'Sincronización y Frenos', 60.00, 45.00, '2026-07-23', 'pendiente'),
('ORD-104', 'Maria Rodriguez', 'Suzuki Gixxer 150', 'Cambio de Aceite y Filtro', 20.00, 30.00, '2026-07-24', 'entregada'),
('ORD-105', 'Jorge Perez', 'Kawasaki KLR 650', 'Reparación de Suspensión', 120.00, 210.00, '2026-07-25', 'en_proceso'),
('ORD-106', 'Sofia Benitez', 'TVS Apache RTR 200', 'Cambio de Llantas', 35.00, 140.00, '2026-07-26', 'pendiente'),
('ORD-107', 'Andres Castro', 'Yamaha MT-03', 'Diagnóstico Sistema Eléctrico', 50.00, 15.00, '2026-07-27', 'finalizada'),
('ORD-108', 'Diana Morales', 'Honda CB 190R', 'Reparación de Motor Completa', 250.00, 380.00, '2026-07-28', 'en_proceso');