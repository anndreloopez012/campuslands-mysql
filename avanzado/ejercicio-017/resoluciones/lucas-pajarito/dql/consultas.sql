USE avanzado_tienda_ropa;

-- Limpieza de procedimientos si existen
DROP PROCEDURE IF EXISTS sp_registrar_producto;
DROP PROCEDURE IF EXISTS sp_procesar_venta_ropa;
DROP PROCEDURE IF EXISTS sp_obtener_total_ventas_cliente;

-- =============================================================================
-- PROCEDIMIENTO 1: Registrar un nuevo producto con validaciones (IN)
-- =============================================================================
DELIMITER //
CREATE PROCEDURE sp_registrar_producto(
    IN p_sku VARCHAR(20),
    IN p_nombre VARCHAR(100),
    IN p_talla ENUM('XS', 'S', 'M', 'L', 'XL'),
    IN p_color VARCHAR(30),
    IN p_precio DECIMAL(10, 2),
    IN p_stock INT,
    IN p_categoria_id INT
)
BEGIN
    -- Validar que el precio y stock sean válidos
    IF p_precio <= 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El precio debe ser mayor a 0.00';
    ELSEIF p_stock < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El stock no puede ser negativo';
    ELSE
        INSERT INTO productos_017 (codigo_sku, nombre, talla, color, precio, stock, categoria_id)
        VALUES (p_sku, p_nombre, p_talla, p_color, p_precio, p_stock, p_categoria_id);
    END IF;
END //
DELIMITER ;


-- =============================================================================
-- PROCEDIMIENTO 2: Procesar venta transaccional con actualización de stock
-- =============================================================================
DELIMITER //
CREATE PROCEDURE sp_procesar_venta_ropa(
    IN p_producto_id INT,
    IN p_cliente_id INT,
    IN p_cantidad INT
)
BEGIN
    DECLARE v_stock_actual INT;
    DECLARE v_precio_unitario DECIMAL(10, 2);
    DECLARE v_monto_total DECIMAL(10, 2);

    -- Iniciar transacción
    START TRANSACTION;

    -- Obtener el stock y precio del producto
    SELECT stock, precio INTO v_stock_actual, v_precio_unitario
    FROM productos_017
    WHERE id = p_producto_id;

    -- Verificar disponibilidad de stock
    IF v_stock_actual IS NULL THEN
        ROLLBACK;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El producto no existe';
    ELSEIF v_stock_actual < p_cantidad THEN
        ROLLBACK;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Stock insuficiente para procesar la venta';
    ELSE
        -- Calcular total
        SET v_monto_total = v_precio_unitario * p_cantidad;

        -- Insertar venta
        INSERT INTO detalle_ventas_017 (producto_id, cliente_id, cantidad, monto_total, fecha_venta)
        VALUES (p_producto_id, p_cliente_id, p_cantidad, v_monto_total, NOW());

        -- Descontar inventario
        UPDATE productos_017
        SET stock = stock - p_cantidad
        WHERE id = p_producto_id;

        COMMIT;
    END IF;
END //
DELIMITER ;


-- =============================================================================
-- PROCEDIMIENTO 3: Consultar métricas con parámetro de salida (OUT)
-- =============================================================================
DELIMITER //
CREATE PROCEDURE sp_obtener_total_ventas_cliente(
    IN p_cliente_id INT,
    OUT p_total_comprado DECIMAL(10, 2),
    OUT p_cantidad_compras INT
)
BEGIN
    SELECT 
        IFNULL(SUM(monto_total), 0.00),
        COUNT(id)
    INTO p_total_comprado, p_cantidad_compras
    FROM detalle_ventas_017
    WHERE cliente_id = p_cliente_id;
END //
DELIMITER ;


-- =============================================================================
-- PRUEBAS Y VERIFICACIÓN EVIDENCIABLE (DQL)
-- =============================================================================

-- 1. Ejecutar registro de producto vía SP
CALL sp_registrar_producto('PAN-JOG-M', 'Pantalón Jogger Urbano', 'M', 'Gris', 210.00, 12, 2);

-- 2. Procesar dos ventas exitosas mediante SP
CALL sp_procesar_venta_ropa(1, 1, 2); -- Cliente 1 compra 2 unidades de Camiseta Oversize Negra
CALL sp_procesar_venta_ropa(2, 2, 1); -- Cliente 2 compra 1 Jean Slim Fit Azul

-- 3. Consultar métricas del cliente 1 mediante variables de salida (OUT)
CALL sp_obtener_total_ventas_cliente(1, @total_gastado, @num_ordenes);
SELECT @total_gastado AS total_gastado_cliente_1, @num_ordenes AS ordenes_cliente_1;

-- 4. Comprobar el estado del inventario actualizado tras la ejecución de los procedimientos
SELECT id, codigo_sku, nombre, stock FROM productos_017;

-- 5. Consultar los registros insertados en ventas
SELECT * FROM detalle_ventas_017;