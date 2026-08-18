-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

EXPLAIN
SELECT
    modelo,
    precio
FROM autos
WHERE estado = 'Disponible';

EXPLAIN
SELECT
    modelo,
    potencia_hp
FROM autos
WHERE potencia_hp > 1200;

EXPLAIN
SELECT
    f.nombre,
    a.modelo,
    a.precio
FROM autos a
INNER JOIN fabricantes f
    ON a.fabricante_id = f.id;

EXPLAIN
SELECT
    modelo,
    precio
FROM autos
ORDER BY precio DESC;

EXPLAIN
SELECT
    fabricante_id,
    COUNT(*) AS total_autos
FROM autos
GROUP BY fabricante_id;

SELECT
    f.nombre AS fabricante,
    a.modelo,
    a.estado,
    a.precio
FROM autos a
INNER JOIN fabricantes f
    ON a.fabricante_id = f.id
ORDER BY a.precio DESC;