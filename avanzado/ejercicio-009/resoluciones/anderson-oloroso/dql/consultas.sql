-- Bloqueo de una fila específica para lectura y actualización
START TRANSACTION;

SELECT
    peleador_id,
    nombre_peleador,
    categoria,
    victorias,
    derrotas
FROM peleadores_kickboxing
WHERE peleador_id = 1
FOR UPDATE;

UPDATE peleadores_kickboxing
SET victorias = victorias + 1
WHERE peleador_id = 1;

COMMIT;


-- Bloqueo de filas para lectura consistente durante una transacción
START TRANSACTION;

SELECT
    peleador_id,
    nombre_peleador,
    categoria,
    victorias,
    derrotas
FROM peleadores_kickboxing
WHERE categoria = 'Peso Pesado'
FOR UPDATE;

COMMIT;


-- Bloqueo de una fila para simular una operación concurrente
START TRANSACTION;

SELECT
    peleador_id,
    nombre_peleador,
    victorias,
    derrotas
FROM peleadores_kickboxing
WHERE peleador_id = 8
FOR UPDATE;

UPDATE peleadores_kickboxing
SET victorias = victorias + 1
WHERE peleador_id = 8;

COMMIT;


-- Bloqueo compartido para consultar registros
START TRANSACTION;

SELECT
    peleador_id,
    nombre_peleador,
    categoria,
    nacionalidad
FROM peleadores_kickboxing
WHERE victorias >= 15
FOR SHARE;

COMMIT;


-- Verificación final de los registros modificados
SELECT
    peleador_id,
    nombre_peleador,
    categoria,
    victorias,
    derrotas
FROM peleadores_kickboxing
ORDER BY victorias DESC;