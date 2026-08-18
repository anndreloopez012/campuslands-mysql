
SELECT 
    p.peleador_id,
    p.nombre_completo AS peleador,
    p.apodo,
    p.categoria_peso,
    g.nombre_gimnasio,
    e.nombre_completo AS entrenador,
    p.victorias,
    p.derrotas
FROM peleadores_kickboxing p
INNER JOIN gimnasios_kickboxing g ON p.gimnasio_id = g.gimnasio_id
INNER JOIN entrenadores_kickboxing e ON p.entrenador_id = e.entrenador_id
ORDER BY p.victorias DESC;

SELECT 
    g.nombre_gimnasio,
    g.ciudad,
    COUNT(DISTINCT e.entrenador_id) AS total_entrenadores,
    COUNT(DISTINCT p.peleador_id) AS total_peleadores,
    SUM(p.victorias) AS total_victorias_acumuladas
FROM gimnasios_kickboxing g
LEFT JOIN entrenadores_kickboxing e ON g.gimnasio_id = e.gimnasio_id
LEFT JOIN peleadores_kickboxing p ON g.gimnasio_id = p.gimnasio_id
GROUP BY g.gimnasio_id, g.nombre_gimnasio, g.ciudad
ORDER BY total_victorias_acumuladas DESC;

SELECT 
    e.nombre_completo AS entrenador,
    e.especialidad,
    g.nombre_gimnasio,
    COUNT(p.peleador_id) AS peleadores_a_cargo
FROM entrenadores_kickboxing e
INNER JOIN gimnasios_kickboxing g ON e.gimnasio_id = g.gimnasio_id
LEFT JOIN peleadores_kickboxing p ON e.entrenador_id = p.entrenador_id
GROUP BY e.entrenador_id, e.nombre_completo, e.especialidad, g.nombre_gimnasio
ORDER BY peleadores_a_cargo DESC;