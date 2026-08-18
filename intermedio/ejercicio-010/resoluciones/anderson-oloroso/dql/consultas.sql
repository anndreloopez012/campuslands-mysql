SELECT
    corredor_id,
    nombre_corredor,
    documento,
    correo,
    ciudad,
    categoria
FROM corredores_urbanos
ORDER BY nombre_corredor ASC;

SELECT
    corredor_id,
    nombre_corredor,
    documento,
    correo
FROM corredores_urbanos
WHERE categoria = 'Profesional'
ORDER BY nombre_corredor ASC;

SELECT
    corredor_id,
    nombre_corredor,
    ciudad,
    categoria
FROM corredores_urbanos
WHERE ciudad IN ('Bogota', 'Medellin', 'Cali')
ORDER BY ciudad ASC;

SELECT
    categoria,
    COUNT(*) AS cantidad_corredores
FROM corredores_urbanos
GROUP BY categoria
ORDER BY cantidad_corredores DESC;

SELECT
    corredor_id,
    nombre_corredor,
    documento,
    correo
FROM corredores_urbanos
WHERE documento LIKE 'DOC1001%'
ORDER BY documento ASC;