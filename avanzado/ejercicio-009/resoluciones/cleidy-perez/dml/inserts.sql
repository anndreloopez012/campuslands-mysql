-- Datos de practica. Puedes cambiarlos o agregar mas filas.
USE campuslands_mysql;

INSERT INTO Clases (disciplina, instructor, cupos_disponibles) VALUES
('Kickboxing Sparring', 'Rico Verhoeven', 2),
('Kickboxing Basico', 'Badr Hari', 15);

INSERT INTO Reservas (clase_id, nombre_alumno) VALUES
(1, 'Carlos Mendoza');