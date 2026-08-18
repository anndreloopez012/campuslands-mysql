-- ddl/schema.sql
-- Creación de la estructura para el equipo de streaming.

CREATE DATABASE IF NOT EXISTS streaming_setup;
USE streaming_setup;

-- Tabla para los streamers
CREATE TABLE IF NOT EXISTS streamers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_usuario VARCHAR(50) NOT NULL UNIQUE,
    plataforma_principal VARCHAR(50)
);

-- Tabla para el equipo de streaming, relacionada con los streamers
CREATE TABLE IF NOT EXISTS equipos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    streamer_id INT NOT NULL,
    nombre_equipo VARCHAR(100) NOT NULL,
    tipo_equipo ENUM('Cámara', 'Micrófono', 'Consola', 'Iluminación', 'PC') NOT NULL,
    marca VARCHAR(50),
    precio DECIMAL(10, 2),
    estado ENUM('Nuevo', 'Usado', 'En Reparación') NOT NULL DEFAULT 'Usado',
    creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    
    -- Definición de la clave foránea para la relación
    FOREIGN KEY (streamer_id) REFERENCES streamers(id)
);
-- Fin del script