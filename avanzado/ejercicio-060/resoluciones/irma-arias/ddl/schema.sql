DROP DATABASE IF EXISTS equipo_streaming_db;
CREATE DATABASE equipo_streaming_db;
USE equipo_streaming_db;

CREATE TABLE marcas_streaming (
    id_marca INT AUTO_INCREMENT PRIMARY KEY,
    nombre_marca VARCHAR(50) NOT NULL,
    pais_origen VARCHAR(50) NOT NULL
);

CREATE TABLE equipos_streaming (
    id_equipo INT AUTO_INCREMENT PRIMARY KEY,
    nombre_equipo VARCHAR(100) NOT NULL,
    tipo_dispositivo VARCHAR(50) NOT NULL,
    precio_usd DECIMAL(10,2) CHECK (precio_usd >= 0),
    id_marca INT NOT NULL,
    estado ENUM('disponible', 'agotado', 'en_oferta') DEFAULT 'disponible',
    FOREIGN KEY (id_marca) REFERENCES marcas_streaming(id_marca) ON DELETE CASCADE
);
