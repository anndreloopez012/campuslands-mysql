-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

SELECT 
    f.formula_id,
    f.codigo_formula,
    f.nombre_formula,
    q.nombre_analista AS creador,
    q.numero_colegiado,
    f.estado_formula,
    COUNT(c.reactivo_id) AS total_reactivos_unicos,
    COALESCE(SUM(c.cantidad_gramos), 0.000) AS masa_total_gramos
FROM formulas_quimicas f
INNER JOIN quimicos_analistas q ON f.analista_creador_id = q.analista_id
LEFT JOIN composicion_formula c ON f.formula_id = c.formula_id
GROUP BY f.formula_id, f.codigo_formula, f.nombre_formula, q.nombre_analista, q.numero_colegiado, f.estado_formula
ORDER BY f.fecha_creacion DESC;

SELECT 
    f.codigo_formula,
    f.nombre_formula,
    r.codigo_cas,
    r.nombre_quimico,
    r.formula_molecular,
    r.pureza_porcentaje,
    c.cantidad_gramos
FROM composicion_formula c
INNER JOIN formulas_quimicas f ON c.formula_id = f.formula_id
INNER JOIN reactivos_quimicos r ON c.reactivo_id = r.reactivo_id
WHERE f.estado_formula IN ('Aprobada', 'En Pruebas')
ORDER BY f.codigo_formula ASC, c.cantidad_gramos DESC;
