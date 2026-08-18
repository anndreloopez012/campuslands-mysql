-- Datos iniciales
INSERT INTO `ejercicio-004-adv-motos` 
(marca, modelo, precio, disponible) VALUES 
('Honda', 'CBR500R', 8500.00, 1),
('Yamaha', 'MT-07', 7500.00, 1),
('Kawasaki', 'Ninja 400', 6500.00, 1);

-- Procedimiento para actualizar precio con auditoría
DELIMITER //
CREATE PROCEDURE `sp_actualizar_precio`(IN moto_id INT, IN nuevo_precio DECIMAL(10,2))
BEGIN
    DECLARE precio_actual DECIMAL(10,2);
    
    -- Obtener precio actual
    SELECT precio INTO precio_actual 
    FROM `ejercicio-004-adv-motos` 
    WHERE id = moto_id;
    
    -- Registrar en auditoría
    INSERT INTO `ejercicio-004-adv_auditoria` 
    (moto_id, accion, precio_anterior, precio_nuevo)
    VALUES (moto_id, 'cambio_precio', precio_actual, nuevo_precio);
    
    -- Actualizar precio
    UPDATE `ejercicio-004-adv-motos` 
    SET precio = nuevo_precio, 
        ultima_actualizacion = CURRENT_TIMESTAMP 
    WHERE id = moto_id;
END //
DELIMITER ;