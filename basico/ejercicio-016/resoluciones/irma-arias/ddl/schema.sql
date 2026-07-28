DROP DATABASE IF EXISTS db_restaurante_urbano_irma;
CREATE DATABASE db_restaurante_urbano_irma;
USE db_restaurante_urbano_irma;

CREATE TABLE menu_urbano (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_producto VARCHAR(60) NOT NULL,
    categoria VARCHAR(30) NOT NULL CHECK (categoria IN ('Hamburguesa', 'Salchipapa', 'Perro Caliente', 'Alitas', 'Bebida', 'Acompañamiento')),
    precio DECIMAL(10,2) NOT NULL CHECK (precio > 0.00),
    calorias INT NOT NULL CHECK (calorias > 0),
    disponibilidad VARCHAR(20) NOT NULL DEFAULT 'Disponible' CHECK (disponibilidad IN ('Disponible', 'Agotado'))
);