-- DDL: Creación de base de datos, tablas y Triggers (Gatillos) para Garaje de Motos
DROP DATABASE IF EXISTS db_garaje_motos_avanzado;
CREATE DATABASE db_garaje_motos_avanzado CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE db_garaje_motos_avanzado;

CREATE TABLE motos_garaje (
    id_moto INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR(10) NOT NULL UNIQUE,
    marca VARCHAR(30) NOT NULL,
    modelo VARCHAR(30) NOT NULL,
    cilindraje INT UNSIGNED NOT NULL,
    costo_reparacion DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
    estado_motos ENUM('en_revision', 'en_reparacion', 'listo_entrega', 'entregado') NOT NULL DEFAULT 'en_revision',
    fecha_ingreso DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT chk_cilindraje CHECK (cilindraje > 0),
    CONSTRAINT chk_costo CHECK (costo_reparacion >= 0)
) ENGINE=InnoDB;

-- Tabla de auditoría para registrar cambios automáticos generados por Triggers
CREATE TABLE auditoria_garaje (
    id_auditoria INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    id_moto INT UNSIGNED,
    accion VARCHAR(50) NOT NULL,
    detalle_cambio TEXT NOT NULL,
    fecha_evento DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

-- Creación de Trigger (Gatillo) AFTER INSERT: Registra automáticamente cuando una nueva moto ingresa al garaje
DELIMITER //
CREATE TRIGGER trg_moto_ingresada
AFTER INSERT ON motos_garaje
FOR EACH ROW
BEGIN
    INSERT INTO auditoria_garaje (id_moto, accion, detalle_cambio)
    VALUES (NEW.id_moto, 'INGRESO_NUEVO', CONCAT('Se registró la moto placa: ', NEW.placa, ' de la marca ', NEW.marca));
END //
DELIMITER ;

-- Creación de Trigger (Gatillo) BEFORE UPDATE: Auditoría y validación de cambios en costos de reparación o estados
DELIMITER //
CREATE TRIGGER trg_moto_actualizada
BEFORE UPDATE ON motos_garaje
FOR EACH ROW
BEGIN
    IF OLD.estado_motos != NEW.estado_motos THEN
        INSERT INTO auditoria_garaje (id_moto, accion, detalle_cambio)
        VALUES (NEW.id_moto, 'CAMBIO_ESTADO', CONCAT('Estado modificado de ', OLD.estado_motos, ' a ', NEW.estado_motos));
    END IF;
END //
DELIMITER ;