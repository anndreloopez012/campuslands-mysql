CREATE DATABASE IF NOT EXISTS inventario_shooter;
USE inventario_shooter;

DROP TABLE IF EXISTS skins;

CREATE TABLE skins (
    id_skin INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    arma VARCHAR(50) NOT NULL,
    rareza VARCHAR(30) NOT NULL,
    precio DECIMAL(10,2) NOT NULL CHECK (precio >= 0),
    estado ENUM('Disponible', 'Vendida') NOT NULL,
    fecha_ingreso DATE NOT NULL
);