-- =====================================================
-- Inserción de datos
-- =====================================================

USE campuslands_mysqli;

INSERT INTO carreras_urbanas
(nombre, ciudad, categoria, distancia_km, tiempo_min, premio, estado)
VALUES
('Carlos Méndez','Guatemala','10K',10.00,38,500.00,'Finalizada'),
('Ana López','Antigua','5K',5.00,22,250.00,'Finalizada'),
('Luis García','Escuintla','21K',21.00,98,1200.00,'Finalizada'),
('María Pérez','Cobán','10K',10.00,42,450.00,'Finalizada'),
('José Ramírez','Quetzaltenango','5K',5.00,24,200.00,'Abandonó'),
('Andrea Morales','Petén','21K',21.00,105,1000.00,'Finalizada'),
('Miguel Soto','Jalapa','10K',10.00,40,600.00,'Finalizada'),
('Daniel Castillo','Chiquimula','5K',5.00,21,300.00,'Finalizada'),
('Laura Díaz','Zacapa','21K',21.00,102,900.00,'Finalizada'),
('Fernando Ruiz','Mixco','10K',10.00,45,350.00,'Abandonó');