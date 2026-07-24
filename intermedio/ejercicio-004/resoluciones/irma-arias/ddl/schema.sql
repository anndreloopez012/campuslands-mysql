-- DDL: Creación de base de datos y tablas para Garaje de Motos (Enfoque HAVING)
DROP DATABASE IF EXISTS db_garaje_motos_intermedio;
CREATE DATABASE db_garaje_motos_intermedio CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE db_garaje_motos_intermedio;

CREATE TABLE motos_taller (
    id_moto INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR(10) NOT NULL UNIQUE,
    marca VARCHAR(30) NOT NULL,
    modelo VARCHAR(30) NOT NULL,
    cilindraje INT UNSIGNED NOT NULL,
    costo_reparacion DECIMAL(10, 2) NOT NULL DEFAULT 0.00,
    estado_motos ENUM('en_revision', 'en_reparacion', 'listo_entrega', 'entregado') NOT NULL DEFAULT 'en_revision',
    fecha_ingreso DATE NOT NULL,
    CONSTRAINT chk_cilindraje_moto CHECK (cilindraje > 0),
    CONSTRAINT chk_costo_reparacion CHECK (costo_reparacion >= 0)
) ENGINE=InnoDB;