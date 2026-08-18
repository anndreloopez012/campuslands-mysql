USE ejercicio_09_adv;
-- =====================================================
-- Ejemplo 1: Bloqueo de una fila utilizando transacciones
-- Ejecutar en la Sesión 1
-- =====================================================

START TRANSACTION;

SELECT *
FROM fighters
WHERE fighter_id = 2
FOR UPDATE;

UPDATE fighters
SET age = 30
WHERE fighter_id = 2;

-- Mantener la transacción abierta para observar el bloqueo

-- Cuando finalice la prueba
COMMIT;


-- =====================================================
-- Ejecutar en la Sesión 2
-- Esta consulta esperará hasta que la Sesión 1 haga COMMIT
-- =====================================================

UPDATE fighters
SET age = 26
WHERE fighter_id = 2;


-- =====================================================
-- Ejemplo 2: Bloqueo compartido
-- Ejecutar en la Sesión 1
-- =====================================================

START TRANSACTION;

SELECT *
FROM tournaments
WHERE tournament_id = 3
FOR SHARE;

COMMIT;


-- =====================================================
-- Consultas de verificación
-- =====================================================

SELECT *
FROM fighters;

SELECT *
FROM tournaments;

SHOW PROCESSLIST;