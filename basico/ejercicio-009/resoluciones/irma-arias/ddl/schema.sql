DROP DATABASE IF EXISTS db_kickboxing_irma;
CREATE DATABASE db_kickboxing_irma;
USE db_kickboxing_irma;

CREATE TABLE luchadores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_completo VARCHAR(60) NOT NULL,
    categoria_peso VARCHAR(30) NOT NULL,
    peleas_ganadas INT NOT NULL DEFAULT 0,
    peleas_perdidas INT NOT NULL DEFAULT 0,
    estado VARCHAR(20) NOT NULL DEFAULT 'Activo' CHECK (estado IN ('Activo', 'Retirado', 'Suspendido'))
);