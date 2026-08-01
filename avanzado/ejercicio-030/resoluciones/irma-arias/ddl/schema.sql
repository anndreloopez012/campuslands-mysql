-- DDL: Estructura avanzada para Equipo de Streaming (Relaciones Simples)
DROP DATABASE IF EXISTS db_equipo_streaming;
CREATE DATABASE db_equipo_streaming;
USE db_equipo_streaming;

-- Tabla principal (Catálogo o Categorías)
CREATE TABLE categorias_streaming (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(40) NOT NULL UNIQUE,
    descripcion VARCHAR(100) NOT NULL
);

-- Tabla dependiente que establece la relación simple (Foreign Key)
CREATE TABLE equipos_streaming (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_equipo VARCHAR(20) NOT NULL UNIQUE,
    nombre_equipo VARCHAR(60) NOT NULL,
    categoria_id INT NOT NULL,
    precio_equipo DECIMAL(10,2) NOT NULL,
    stock_disponible INT NOT NULL,
    estado_equipo ENUM('disponible', 'en_uso', 'mantenimiento', 'retirado') DEFAULT 'disponible',
    
    -- Relación y Restricciones profesionales
    CONSTRAINT fk_equipo_categoria FOREIGN KEY (categoria_id) REFERENCES categorias_streaming(id),
    CONSTRAINT chk_precio_equipo CHECK (precio_equipo > 0),
    CONSTRAINT chk_stock_disponible CHECK (stock_disponible >= 0)
);