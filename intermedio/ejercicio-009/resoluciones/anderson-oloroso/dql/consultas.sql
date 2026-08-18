SELECT
    p.nombre_peleador,
    p.nacionalidad,
    c.nombre_categoria,
    c.limite_peso
FROM peleadores_kickboxing p
INNER JOIN categorias_kickboxing c
    ON p.categoria_id = c.categoria_id
ORDER BY c.limite_peso ASC;

SELECT
    p.nombre_peleador,
    p.nacionalidad,
    c.nombre_categoria,
    c.limite_peso
FROM peleadores_kickboxing p
INNER JOIN categorias_kickboxing c
    ON p.categoria_id = c.categoria_id
WHERE c.limite_peso > 80
ORDER BY c.limite_peso DESC;

SELECT
    p.nombre_peleador,
    c.nombre_categoria,
    co.fecha_combate,
    co.oponente,
    co.resultado
FROM peleadores_kickboxing p
INNER JOIN categorias_kickboxing c
    ON p.categoria_id = c.categoria_id
INNER JOIN combates_kickboxing co
    ON p.peleador_id = co.peleador_id
WHERE co.resultado = 'Victoria'
ORDER BY co.fecha_combate ASC;

SELECT
    c.nombre_categoria,
    COUNT(p.peleador_id) AS cantidad_peleadores
FROM categorias_kickboxing c
LEFT JOIN peleadores_kickboxing p
    ON c.categoria_id = p.categoria_id
GROUP BY c.categoria_id, c.nombre_categoria
ORDER BY cantidad_peleadores DESC;

SELECT
    p.nombre_peleador,
    c.nombre_categoria,
    co.fecha_combate,
    co.oponente,
    co.resultado
FROM peleadores_kickboxing p
INNER JOIN categorias_kickboxing c
    ON p.categoria_id = c.categoria_id
INNER JOIN combates_kickboxing co
    ON p.peleador_id = co.peleador_id
WHERE co.fecha_combate >= '2026-03-01'
ORDER BY co.fecha_combate ASC;