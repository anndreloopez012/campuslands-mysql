
-- DDL: Creación de la base de datos y esquema para Garaje de Motos
DROP DATABASE IF EXISTS db_garaje_motos;
CREATE DATABASE db_garaje_motos CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE db_garaje_motos;

CREATE TABLE motos_garaje (
    id_moto INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR(10) NOT NULL UNIQUE,
    marca VARCHAR(40) NOT NULL,
    modelo VARCHAR(40) NOT NULL,
    cilindrada INT UNSIGNED NOT NULL,
    anio_fabricacion YEAR NOT NULL,
    tarifa_mantenimiento DECIMAL(10, 2) UNSIGNED NOT NULL DEFAULT 0.00,
    estado ENUM('en_mantenimiento', 'disponible', 'retirada') NOT NULL DEFAULT 'disponible',
    fecha_ingreso DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT chk_cilindrada CHECK (cilindrada > 0)
) ENGINE=InnoDB;