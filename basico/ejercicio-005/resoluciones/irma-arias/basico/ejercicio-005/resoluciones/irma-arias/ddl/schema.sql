-- DDL: Creación de la base de datos y esquema para Taller Mecánico de Motos
DROP DATABASE IF EXISTS db_taller_mecanico;
CREATE DATABASE db_taller_mecanico CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE db_taller_mecanico;

CREATE TABLE ordenes_reparacion (
    id_orden INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    codigo_orden VARCHAR(20) NOT NULL UNIQUE,
    cliente VARCHAR(60) NOT NULL,
    moto_modelo VARCHAR(50) NOT NULL,
    tipo_servicio VARCHAR(50) NOT NULL,
    costo_mano_obra DECIMAL(10, 2) UNSIGNED NOT NULL DEFAULT 0.00,
    costo_repuestos DECIMAL(10, 2) UNSIGNED NOT NULL DEFAULT 0.00,
    estado ENUM('pendiente', 'en_proceso', 'completada', 'entregada') NOT NULL DEFAULT 'pendiente',
    fecha_ingreso DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT chk_costos CHECK (costo_mano_obra >= 0 AND costo_repuestos >= 0)
) ENGINE=InnoDB;