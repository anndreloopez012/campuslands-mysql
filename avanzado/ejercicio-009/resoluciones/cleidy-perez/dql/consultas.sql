-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

START TRANSACTION;

SELECT cupos_disponibles 
FROM Clases 
WHERE clase_id = 1 
FOR UPDATE;

UPDATE Clases 
SET cupos_disponibles = cupos_disponibles - 1 
WHERE clase_id = 1;

INSERT INTO Reservas (clase_id, nombre_alumno) 
VALUES (1, 'Elena Rostova');

COMMIT;