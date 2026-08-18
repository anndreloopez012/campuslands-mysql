-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

SELECT 
    p.platillo_id,
    p.nombre AS platillo,
    p.precio,
    c.nombre_categoria AS categoria,
    c.area_cocina
FROM Platillos p
INNER JOIN Categorias c ON p.categoria_id = c.categoria_id;

SELECT 
    p.nombre AS platillo,
    p.precio,
    c.nombre_categoria AS categoria,
    c.area_cocina
FROM Platillos p
INNER JOIN Categorias c ON p.categoria_id = c.categoria_id
WHERE c.area_cocina = 'Parrilla';
