-- Eliminar la base de datos si ya existe para asegurar ejecución limpia desde cero
DROP DATABASE IF EXISTS db_equipo_streaming;
CREATE DATABASE db_equipo_streaming;
USE db_equipo_streaming;

-- Tabla catalogo / padre: Categorías de Equipos
CREATE TABLE categorias_equipo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(40) NOT NULL UNIQUE,
    descripcion VARCHAR(100) NOT NULL
);

-- Tabla principal / hija: Equipos de Streaming (con relación simple Foreign Key)
CREATE TABLE equipos_streaming (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_serial VARCHAR(30) NOT NULL UNIQUE,
    nombre_equipo VARCHAR(60) NOT NULL,
    categoria_id INT NOT NULL,
    precio_usd DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL,
    estado ENUM('disponible', 'en_uso', 'mantenimiento', 'retirado') DEFAULT 'disponible',
    
    -- Restricciones y Relación Simple
    CONSTRAINT fk_categoria_equipo FOREIGN KEY (categoria_id) REFERENCES categorias_equipo(id) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT chk_precio_streaming CHECK (precio_usd > 0),
    CONSTRAINT chk_stock_streaming CHECK (stock >= 0)
);