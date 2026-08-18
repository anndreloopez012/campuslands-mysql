-- 1. Ver datos principales
SELECT * FROM `ejercicio-010-adv-corredores`;

-- 2. Crear backup (copiar datos a tabla backup)
INSERT INTO `ejercicio-010-adv-corredores_backup` 
SELECT * FROM `ejercicio-010-adv-corredores`;

-- 3. Verificar backup
SELECT * FROM `ejercicio-010-adv-corredores_backup`;

-- 4. Registrar backup en historial
INSERT INTO `ejercicio-010-adv-backups` (registros) 
SELECT COUNT(*) FROM `ejercicio-010-adv-corredores`;

-- 5. Ver historial de backups
SELECT * FROM `ejercicio-010-adv-backups`;

-- 6. Simular pérdida de datos (opcional)
DELETE FROM `ejercicio-010-adv-corredores`;
SELECT * FROM `ejercicio-010-adv-corredores`;

-- 7. Restaurar desde backup
INSERT INTO `ejercicio-010-adv-corredores` 
SELECT * FROM `ejercicio-010-adv-corredores_backup`;

-- 8. Ver datos restaurados
SELECT * FROM `ejercicio-010-adv-corredores`;