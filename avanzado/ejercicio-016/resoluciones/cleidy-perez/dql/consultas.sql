-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

START TRANSACTION;
INSERT INTO Ordenes (platillo_id, cantidad, total) VALUES (1, 2, 25.00);
UPDATE Platillos SET stock = stock - 2 WHERE platillo_id = 1;
COMMIT;

START TRANSACTION;
INSERT INTO Ordenes (platillo_id, cantidad, total) VALUES (9, 100, 1050.00);
UPDATE Platillos SET stock = stock - 100 WHERE platillo_id = 9;
ROLLBACK;

SELECT * FROM Platillos;

SELECT * FROM Ordenes;