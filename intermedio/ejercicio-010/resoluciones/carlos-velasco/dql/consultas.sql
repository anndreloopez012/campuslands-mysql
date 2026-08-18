-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

SELECT
    dorsal,
    nombre,
    categoria,
    estado
FROM corredores;

SELECT
    nombre,
    categoria,
    tiempo
FROM corredores
ORDER BY tiempo ASC;

SELECT
    nombre,
    dorsal,
    tiempo
FROM corredores
WHERE categoria='10K';

SELECT
    categoria,
    COUNT(*) AS total_corredores
FROM corredores
GROUP BY categoria;

SELECT
    nombre,
    ciudad,
    tiempo
FROM corredores
WHERE estado='Finalizó';

SHOW INDEX
FROM corredores;