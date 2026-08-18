SELECT *
FROM peleadores;

DELETE FROM peleadores
WHERE nombre='Miguel Díaz';

SELECT
nombre,
categoria,
estado
FROM peleadores;

DELETE FROM peleadores
WHERE estado='Retirado'
LIMIT 1;

SELECT
COUNT(*) AS total_peleadores
FROM peleadores;