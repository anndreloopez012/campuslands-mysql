-- 1. Ver motos antes de cambios
SELECT * FROM `ejercicio-004-adv-motos`;

-- 2. Actualizar precios con procedimiento
CALL `sp_actualizar_precio`(1, 8200.00);
CALL `sp_actualizar_precio`(2, 7200.00);
CALL `sp_actualizar_precio`(3, 10000.00);

-- 3. Ver motos después de cambios
SELECT * FROM `ejercicio-004-adv-motos`;

-- 4. Ver auditoría de precios
SELECT * FROM `ejercicio-004-adv_auditoria`;

-- 5. Ver motos con fecha actualizada
SELECT id, marca, modelo, precio, ultima_actualizacion
FROM `ejercicio-004-adv-motos`
ORDER BY ultima_actualizacion DESC;