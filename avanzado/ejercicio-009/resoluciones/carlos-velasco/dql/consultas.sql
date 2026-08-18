-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

START TRANSACTION;

SELECT *
FROM peleadores
WHERE id = 1
FOR SHARE;

COMMIT;

START TRANSACTION;

SELECT *
FROM peleadores
WHERE id = 2
FOR UPDATE;

UPDATE peleadores
SET bolsa = bolsa + 1000
WHERE id = 2;

COMMIT;

SELECT
    nombre,
    categoria,
    victorias,
    bolsa
FROM peleadores;

SELECT
    nombre,
    victorias
FROM peleadores
ORDER BY victorias DESC;

SELECT
    nombre,
    estado
FROM peleadores
WHERE estado = 'Activo';

SELECT
    AVG(bolsa) AS bolsa_promedio
FROM peleadores;