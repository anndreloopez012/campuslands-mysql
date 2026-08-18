-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

SELECT * FROM peleadores_kickboxing;

DELETE FROM peleadores_kickboxing 
WHERE fecha_nacimiento < '1985-01-01';
