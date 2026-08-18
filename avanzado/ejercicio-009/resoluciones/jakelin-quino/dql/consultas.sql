-- 1. Ver luchadores antes de cambios
SELECT * FROM `ejercicio-009-adv-luchadores`;

-- 2. Ver bitácora vacía
SELECT * FROM `ejercicio-009-adv_bitacora`;

-- 3. Actualizar saldo con bloqueo (usuario 1)
CALL `sp_actualizar_saldo`(1, 500.00, 'admin1');

-- 4. Actualizar saldo con bloqueo (usuario 2)
CALL `sp_actualizar_saldo`(2, 1000.00, 'admin2');

-- 5. Ver luchadores después de cambios
SELECT id, nombre, saldo, ultima_actualizacion 
FROM `ejercicio-009-adv-luchadores`
ORDER BY id;

-- 6. Ver bitácora de operaciones
SELECT * FROM `ejercicio-009-adv_bitacora`;

-- 7. Simular bloqueo de lectura con LOCK TABLES
LOCK TABLES `ejercicio-009-adv-luchadores` READ;
SELECT * FROM `ejercicio-009-adv-luchadores`;
UNLOCK TABLES;

-- 8. Simular bloqueo de escritura
LOCK TABLES `ejercicio-009-adv-luchadores` WRITE;
UPDATE `ejercicio-009-adv-luchadores` 
SET nocauts = nocauts + 1 
WHERE id = 3;
UNLOCK TABLES;

-- 9. Ver resultado final
SELECT * FROM `ejercicio-009-adv-luchadores`;