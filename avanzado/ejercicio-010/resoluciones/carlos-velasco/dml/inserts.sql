-- Datos de practica. Puedes cambiarlos o agregar mas filas.
USE campuslands_mysql;

INSERT INTO corredores
(nombre,ciudad,categoria,correo)
VALUES
('Carlos Méndez','Guatemala','10K','carlos@email.com'),
('Luis Gómez','Mixco','5K','luis@email.com'),
('José Ramírez','Villa Nueva','21K','jose@email.com'),
('Pedro López','Amatitlán','10K','pedro@email.com'),
('Mario Castillo','Antigua Guatemala','5K','mario@email.com'),
('Kevin Morales','Escuintla','21K','kevin@email.com'),
('Diego Hernández','Quetzaltenango','10K','diego@email.com'),
('Andrés Pérez','Cobán','5K','andres@email.com');

INSERT INTO resultados
(corredor_id,tiempo,posicion,fecha_carrera)
VALUES
(1,'00:42:15',3,'2026-06-10'),
(2,'00:19:54',2,'2026-06-10'),
(3,'01:38:44',1,'2026-06-10'),
(4,'00:46:10',5,'2026-06-10'),
(5,'00:18:58',1,'2026-06-10'),
(6,'01:42:37',2,'2026-06-10'),
(7,'00:44:29',4,'2026-06-10'),
(8,'00:20:36',3,'2026-06-10');