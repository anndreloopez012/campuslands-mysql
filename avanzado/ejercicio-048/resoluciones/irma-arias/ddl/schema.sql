DROP DATABASE IF EXISTS viajes_turismo_db;
CREATE DATABASE viajes_turismo_db;
USE viajes_turismo_db;

CREATE TABLE paquetes_turisticos (
    id_paquete INT AUTO_INCREMENT PRIMARY KEY,
    destino VARCHAR(100) NOT NULL,
    pais VARCHAR(50) NOT NULL,
    duracion_dias INT UNSIGNED CHECK (duracion_dias > 0),
    precio_usd DECIMAL(8,2) CHECK (precio_usd > 0),
    cupos_disponibles INT UNSIGNED DEFAULT 10,
    estado ENUM('disponible', 'agotado', 'cancelado') DEFAULT 'disponible'
);
