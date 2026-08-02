DROP DATABASE IF EXISTS restaurante_urbano_db;
CREATE DATABASE restaurante_urbano_db;
USE restaurante_urbano_db;

CREATE TABLE menu_urbano (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre_plato VARCHAR(100) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    precio DECIMAL(6,2) CHECK (precio > 0),
    calificacion_promedio DECIMAL(3,1) CHECK (calificacion_promedio >= 0 AND calificacion_promedio <= 10),
    estado ENUM('disponible', 'agotado', 'nuevo') DEFAULT 'disponible'
);
