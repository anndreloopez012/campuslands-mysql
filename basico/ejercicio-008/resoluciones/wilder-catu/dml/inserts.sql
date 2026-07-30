-- =====================================================
-- Inserción de datos
-- =====================================================

USE campuslands_mysqli;

INSERT INTO equipos_futsal
(nombre, ciudad, entrenador, victorias, derrotas, puntos, estado)
VALUES
('Tigres FS','Guatemala','Carlos Pérez',12,3,36,'Activo'),
('Leones FS','Mixco','José Ramírez',10,5,30,'Activo'),
('Panteras FS','Antigua','Luis López',9,6,27,'Activo'),
('Halcones FS','Escuintla','Marco Díaz',8,7,24,'Activo'),
('Águilas FS','Quetzaltenango','Miguel Soto',11,4,33,'Activo'),
('Toros FS','Petén','David Morales',7,8,21,'Activo'),
('Pumas FS','Jalapa','Andrés Castillo',6,9,18,'Activo'),
('Guerreros FS','Cobán','Héctor Méndez',5,10,15,'Inactivo'),
('Dragones FS','Chiquimula','Julio Gómez',13,2,39,'Activo'),
('Lobos FS','Zacapa','Fernando Ruiz',4,11,12,'Inactivo');