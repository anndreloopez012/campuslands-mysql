
DROP DATABASE IF EXISTS db_hiperdeportivos_irma;
CREATE DATABASE db_hiperdeportivos_irma;
USE db_hiperdeportivos_irma;

CREATE TABLE autos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    velocidad_maxima DECIMAL(5,2) NOT NULL COMMENT 'En km/h',
    precio_millones DECIMAL(6,2) NOT NULL COMMENT 'En millones de dólares',
    caballos_fuerza INT NOT NULL,
    estado VARCHAR(20) NOT NULL DEFAULT 'Disponible' CHECK (estado IN ('Disponible', 'Vendido', 'Reservado'))
);