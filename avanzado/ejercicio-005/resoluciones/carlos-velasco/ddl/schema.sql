-- Campuslands MySQL - Avanzado Ejercicio 005
-- Tema: Índices para taller mecánico de motos

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS ordenes_servicio;
DROP TABLE IF EXISTS motos;

SET FOREIGN_KEY_CHECKS = 1;


CREATE TABLE motos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR(10) NOT NULL UNIQUE,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(80) NOT NULL,
    cilindrada INT NOT NULL,
    propietario VARCHAR(100) NOT NULL,
    telefono VARCHAR(20),
    estado ENUM('Activo','En reparación','Finalizado') NOT NULL DEFAULT 'Activo',
    fecha_registro DATE NOT NULL,

    CHECK (cilindrada > 0)
);


CREATE TABLE ordenes_servicio (
    id INT AUTO_INCREMENT PRIMARY KEY,
    moto_id INT NOT NULL,
    tipo_servicio VARCHAR(100) NOT NULL,
    descripcion TEXT NOT NULL,
    costo DECIMAL(10,2) NOT NULL,
    fecha_ingreso DATE NOT NULL,
    fecha_entrega DATE,
    mecanico VARCHAR(100) NOT NULL,
    estado ENUM('Pendiente','En proceso','Entregado') NOT NULL DEFAULT 'Pendiente',

    CONSTRAINT fk_orden_moto
        FOREIGN KEY (moto_id)
        REFERENCES motos(id),

    CHECK (costo >= 0)
);


-- Índices para optimizar búsquedas frecuentes

CREATE INDEX idx_motos_marca
ON motos(marca);


CREATE INDEX idx_motos_estado
ON motos(estado);


CREATE INDEX idx_ordenes_fecha_ingreso
ON ordenes_servicio(fecha_ingreso);


CREATE INDEX idx_ordenes_mecanico
ON ordenes_servicio(mecanico);


CREATE INDEX idx_ordenes_estado
ON ordenes_servicio(estado);


CREATE INDEX idx_ordenes_moto_estado
ON ordenes_servicio(moto_id, estado);