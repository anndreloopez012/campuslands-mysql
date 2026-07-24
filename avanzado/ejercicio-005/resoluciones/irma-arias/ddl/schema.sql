-- DDL: Creación de base de datos, tablas e Índices optimizados para Taller Mecánico de Motos
DROP DATABASE IF EXISTS db_taller_motos_avanzado;
CREATE DATABASE db_taller_motos_avanzado CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE db_taller_motos_avanzado;

CREATE TABLE reparaciones_taller (
    id_reparacion INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    codigo_orden VARCHAR(20) NOT NULL UNIQUE,
    cliente VARCHAR(50) NOT NULL,
    placa_moto VARCHAR(10) NOT NULL,
    servicio_realizado VARCHAR(80) NOT NULL,
    costo_mano_obra DECIMAL(10, 2) NOT NULL,
    estado_orden ENUM('pendiente', 'en_proceso', 'finalizado', 'facturado') NOT NULL DEFAULT 'pendiente',
    fecha_servicio DATE NOT NULL,
    CONSTRAINT chk_costo_mano CHECK (costo_mano_obra >= 0)
) ENGINE=InnoDB;

-- Creación de Índices para optimizar la búsqueda y filtrado frecuente en consultas pesadas
CREATE INDEX idx_estado_fecha ON reparaciones_taller(estado_orden, fecha_servicio);
CREATE INDEX idx_cliente ON reparaciones_taller(cliente);
CREATE INDEX idx_placa ON reparaciones_taller(placa_moto);