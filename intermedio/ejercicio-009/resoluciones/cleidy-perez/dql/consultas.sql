-- Consultas base. Completa o reemplaza segun el enunciado.
USE campuslands_mysql;

SELECT * FROM Peleadores;

SELECT 
    c.combate_id,
    pr.nombre AS esquina_roja,
    pa.nombre AS esquina_azul,
    pg.nombre AS ganador,
    c.metodo,
    c.fecha_combate
FROM Combates c
JOIN Peleadores pr ON c.peleador_rojo_id = pr.peleador_id
JOIN Peleadores pa ON c.peleador_azul_id = pa.peleador_id
LEFT JOIN Peleadores pg ON c.ganador_id = pg.peleador_id;
