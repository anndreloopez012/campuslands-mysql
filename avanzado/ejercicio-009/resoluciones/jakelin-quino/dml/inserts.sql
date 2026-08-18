-- Datos iniciales
INSERT INTO `ejercicio-009-adv-luchadores` 
(nombre, categoria, peso, victorias, derrotas, nocauts, saldo) VALUES 
('Carlos Pérez', 'peso pesado', 105.50, 12, 2, 8, 5000.00),
('María López', 'peso medio', 72.00, 15, 1, 10, 8000.00),
('Juan Rivas', 'peso ligero', 65.00, 8, 5, 4, 3000.00),
('Ana Torres', 'peso pluma', 57.00, 20, 3, 15, 12000.00);

-- Procedimiento con bloqueo para actualizar saldo
DELIMITER //
CREATE PROCEDURE `sp_actualizar_saldo`(
    IN p_luchador_id INT, 
    IN p_monto DECIMAL(10,2),
    IN p_usuario VARCHAR(30)
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        SELECT 'Error en la transacción' AS mensaje;
    END;

    START TRANSACTION;
    
    -- Bloquear fila para evitar modificaciones concurrentes
    SELECT * FROM `ejercicio-009-adv-luchadores` 
    WHERE id = p_luchador_id FOR UPDATE;
    
    -- Actualizar saldo
    UPDATE `ejercicio-009-adv-luchadores` 
    SET saldo = saldo + p_monto,
        ultima_actualizacion = CURRENT_TIMESTAMP
    WHERE id = p_luchador_id;
    
    -- Registrar en bitácora
    INSERT INTO `ejercicio-009-adv_bitacora` 
    (luchador_id, accion, usuario) 
    VALUES (p_luchador_id, CONCAT('actualización saldo: ', p_monto), p_usuario);
    
    COMMIT;
    SELECT 'Transacción completada exitosamente' AS mensaje;
END //
DELIMITER ;