DELETE FROM combates 
WHERE id_combate = 4;

SELECT id_combate, adversario, resultado 
FROM combates;

DELETE FROM atletas 
WHERE activo = 0;

SELECT id_atleta, nombre, categoria_peso, activo 
FROM atletas;

SELECT id_combate, id_atleta, adversario, resultado 
FROM combates;