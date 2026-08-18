-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

SELECT
    p.nombre AS peleador,
    c.nombre AS categoria,
    p.victorias
FROM peleadores p
INNER JOIN categorias c
    ON p.categoria_id = c.id;

SELECT
    p.nombre,
    pe.rival,
    pe.fecha,
    pe.resultado
FROM peleas pe
INNER JOIN peleadores p
    ON pe.peleador_id = p.id;

SELECT
    c.nombre AS categoria,
    COUNT(p.id) AS total_peleadores
FROM categorias c
LEFT JOIN peleadores p
    ON c.id = p.categoria_id
GROUP BY
    c.id,
    c.nombre;

SELECT
    nombre,
    victorias
FROM peleadores
WHERE victorias > 10;

SELECT
    p.nombre,
    pe.resultado,
    pe.fecha
FROM peleas pe
INNER JOIN peleadores p
    ON pe.peleador_id = p.id
ORDER BY pe.fecha DESC;
