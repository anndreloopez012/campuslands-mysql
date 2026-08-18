-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

SELECT
    f.nombre AS fabricante,
    a.modelo,
    a.potencia_hp,
    a.estado
FROM autos a
INNER JOIN fabricantes f
    ON a.fabricante_id = f.id;
    
SELECT
    f.nombre AS fabricante,
    a.modelo,
    a.precio
FROM autos a
INNER JOIN fabricantes f
    ON a.fabricante_id = f.id
WHERE a.estado = 'Disponible';

SELECT
    f.nombre AS fabricante,
    a.modelo,
    a.potencia_hp
FROM autos a
INNER JOIN fabricantes f
    ON a.fabricante_id = f.id
WHERE a.potencia_hp > 1200;

SELECT
    f.nombre AS fabricante,
    COUNT(a.id) AS total_autos
FROM fabricantes f
INNER JOIN autos a
    ON f.id = a.fabricante_id
GROUP BY
    f.id,
    f.nombre
ORDER BY total_autos DESC;


SELECT
    AVG(precio) AS precio_promedio
FROM autos;

SELECT
    f.nombre AS fabricante,
    a.modelo,
    a.velocidad_maxima
FROM autos a
INNER JOIN fabricantes f
    ON a.fabricante_id = f.id
ORDER BY a.velocidad_maxima DESC;