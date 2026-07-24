-- DDL: Creación de base de datos y tablas para Taller Mecánico de Motos (Enfoque Subconsultas)
DROP DATABASE IF EXISTS db_taller_motos_intermedio;
CREATE DATABASE db_taller_motos_intermedio CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE db_taller_motos_intermedio;

CREATE TABLE ordenes_taller (
    id_orden INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    codigo_orden VARCHAR(20) NOT NULL UNIQUE,
    cliente VARCHAR(50) NOT NULL,
    placa_moto VARCHAR(10) NOT NULL,
    servicio_realizado VARCHAR(80) NOT NULL,
    costo_mano_obra DECIMAL(10, 2) NOT NULL,
    estado_orden ENUM('pendiente', 'en_proceso', 'finalizado', 'facturado') NOT NULL DEFAULT 'pendiente',
    fecha_servicio DATE NOT NULL,
    CONSTRAINT chk_costo_mano_obra CHECK (costo_mano_obra >= 0)
) ENGINE=InnoDB;