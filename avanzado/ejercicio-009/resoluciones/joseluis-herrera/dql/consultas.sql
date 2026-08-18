START TRANSACTION;

SELECT id_atleta, nombre, categoria_peso, activo 
FROM atletas 
WHERE id_atleta = 2 
FOR UPDATE;

UPDATE atletas 
SET categoria_peso = 'Peso Pesado Elite' 
WHERE id_atleta = 2;

COMMIT;

START TRANSACTION;

SELECT c.id_combate, a.nombre AS atleta, c.adversario, c.resultado 
FROM combates c
JOIN atletas a ON c.id_atleta = a.id_atleta
WHERE c.resultado = 'Victoria'
FOR SHARE;

COMMIT