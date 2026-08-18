
START TRANSACTION;

SELECT 
    p.peleador_id,
    p.nombre_completo,
    p.puntos_ranking,
    p.victorias
FROM peleadores_kickboxing p
WHERE p.peleador_id IN (1, 3)
FOR UPDATE;

UPDATE peleadores_kickboxing 
SET victorias = victorias + 1, 
    puntos_ranking = puntos_ranking + 100 
WHERE peleador_id = 1;

UPDATE peleadores_kickboxing 
SET derrotas = derrotas + 1 
WHERE peleador_id = 3;

UPDATE combates_fase_eliminatoria 
SET ganador_id = 1, 
    estado = 'Finalizado' 
WHERE combate_id = 1;

COMMIT;

LOCK TABLES peleadores_kickboxing READ, gimnasios_kickboxing READ;

SELECT 
    p.peleador_id,
    p.nombre_completo AS peleador,
    p.categoria_peso,
    g.nombre_gimnasio,
    p.victorias,
    p.derrotas,
    p.puntos_ranking
FROM peleadores_kickboxing p
INNER JOIN gimnasios_kickboxing g ON p.gimnasio_id = g.gimnasio_id
ORDER BY p.puntos_ranking DESC;

UNLOCK TABLES;

SELECT 
    g.nombre_gimnasio,
    COUNT(p.peleador_id) AS total_peleadores,
    SUM(p.victorias) AS victorias_totales_gym,
    SUM(p.puntos_ranking) AS puntos_totales_gym
FROM gimnasios_kickboxing g
LEFT JOIN peleadores_kickboxing p ON g.gimnasio_id = p.gimnasio_id
GROUP BY g.gimnasio_id, g.nombre_gimnasio
ORDER BY puntos_totales_gym DESC;