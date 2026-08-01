-- DDL: Estructura avanzada para Taller Mecánico de Motos (SELECT y Consultas)
DROP DATABASE IF EXISTS db_taller_mecanico;
CREATE DATABASE db_taller_mecanico;
USE db_taller_mecanico;

CREATE TABLE reparaciones_motos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_orden VARCHAR(20) NOT NULL UNIQUE,
    propietario VARCHAR(60) NOT NULL,
    modelo_moto VARCHAR(50) NOT NULL,
    tipo_servicio VARCHAR(40) NOT NULL,
    costo_mano_obra DECIMAL(10,2) NOT NULL,
    costo_repuestos DECIMAL(10,2) NOT NULL,
    fecha_ingreso DATE NOT NULL,
    estado_reparacion ENUM('pendiente', 'en_proceso', 'finalizada', 'entregada') DEFAULT 'pendiente',
    
    -- Restricciones y validaciones profesionales
    CONSTRAINT chk_mano_obra CHECK (costo_mano_obra >= 0),
    CONSTRAINT chk_repuestos CHECK (costo_repuestos >= 0)
);