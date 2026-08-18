USE campuslands_mysql;

-- 1. Confirmar que Renato Xol NO se inserto (debe devolver 0 filas)
SELECT * FROM kickboxing_peleadores_fk WHERE nombre_peleador = 'Renato Xol';

-- 2. Confirmar que Gimnasio Trueno sigue existiendo (el DELETE fue bloqueado)
SELECT * FROM kickboxing_gimnasios WHERE nombre_gimnasio = 'Gimnasio Trueno';

-- 3. Peleadores con su gimnasio (JOIN normal usando la FK)
SELECT p.nombre_peleador, g.nombre_gimnasio, g.ciudad
FROM kickboxing_peleadores_fk p
INNER JOIN kickboxing_gimnasios g ON p.id_gimnasio = g.id_gimnasio;

-- 4. Cantidad de peleadores por gimnasio (util para entender por que el RESTRICT bloqueo el DELETE)
SELECT g.nombre_gimnasio, COUNT(p.id_peleador) AS total_peleadores
FROM kickboxing_gimnasios g
LEFT JOIN kickboxing_peleadores_fk p ON g.id_gimnasio = p.id_gimnasio
GROUP BY g.nombre_gimnasio
ORDER BY total_peleadores DESC;

-- 5. Gimnasio cerrado que aun tiene un peleador asociado (caso limite adicional)
SELECT g.nombre_gimnasio, g.estado, p.nombre_peleador
FROM kickboxing_gimnasios g
INNER JOIN kickboxing_peleadores_fk p ON g.id_gimnasio = p.id_gimnasio
WHERE g.estado = 'cerrado';