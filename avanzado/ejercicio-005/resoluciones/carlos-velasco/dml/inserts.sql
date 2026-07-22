-- Datos de practica. Puedes cambiarlos o agregar mas filas.
USE campuslands_mysql;


INSERT INTO motos
(placa, marca, modelo, cilindrada, propietario, telefono, estado, fecha_registro)
VALUES
('MOT001','Yamaha','MT-03',321,'Carlos Ramirez','55510001','Activo','2026-05-01'),
('MOT002','Honda','CB190R',184,'Andrea Lopez','55510002','Finalizado','2026-05-02'),
('MOT003','Suzuki','GSX150',150,'Luis Hernandez','55510003','En reparación','2026-05-03'),
('MOT004','Kawasaki','Ninja 400',399,'Maria Gonzalez','55510004','Activo','2026-05-04'),
('MOT005','Bajaj','Pulsar NS200',200,'Pedro Castillo','55510005','Finalizado','2026-05-05'),
('MOT006','AKT','NKD125',125,'Sofia Morales','55510006','En reparación','2026-05-06'),
('MOT007','BMW','G310R',313,'Daniel Perez','55510007','Activo','2026-05-07'),
('MOT008','KTM','Duke390',373,'Laura Martinez','55510008','Finalizado','2026-05-08');


INSERT INTO ordenes_servicio
(moto_id, tipo_servicio, descripcion, costo, fecha_ingreso, fecha_entrega, mecanico, estado)
VALUES
(1,'Cambio de aceite','Mantenimiento preventivo completo',850.00,'2026-05-10','2026-05-10','Juan Torres','Entregado'),
(2,'Sistema de frenos','Cambio de pastillas delanteras',1600.00,'2026-05-11','2026-05-12','Miguel Perez','Entregado'),
(3,'Reparacion motor','Revision interna del motor',5200.00,'2026-05-12',NULL,'Carlos Diaz','En proceso'),
(4,'Mantenimiento general','Revision completa de componentes',2800.00,'2026-05-13','2026-05-14','Juan Torres','Entregado'),
(5,'Cambio bateria','Instalacion de bateria nueva',1200.00,'2026-05-14','2026-05-14','Miguel Perez','Entregado'),
(6,'Afinacion motor','Ajuste y limpieza del sistema',1900.00,'2026-05-15',NULL,'Carlos Diaz','Pendiente'),
(7,'Diagnostico electrico','Revision del sistema electrico',1100.00,'2026-05-16','2026-05-16','Juan Torres','Entregado'),
(8,'Cambio filtros','Mantenimiento preventivo',1400.00,'2026-05-17','2026-05-17','Miguel Perez','Entregado');