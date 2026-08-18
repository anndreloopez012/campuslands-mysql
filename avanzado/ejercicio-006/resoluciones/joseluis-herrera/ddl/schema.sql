CREATE DATABASE IF NOT EXISTS db_hiperdeportivos_1fn;
USE db_hiperdeportivos_1fn;

DROP TABLE IF EXISTS mantenimientos;
DROP TABLE IF EXISTS caracteristicas_tecnicas;
DROP TABLE IF EXISTS hiperdeportivos;

CREATE TABLE hiperdeportivos (
    id_auto INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(60) NOT NULL,
    pais_origen VARCHAR(50) NOT NULL
);

CREATE TABLE caracteristicas_tecnicas (
    id_caracteristica INT AUTO_INCREMENT PRIMARY KEY,
    id_auto INT NOT NULL,
    tipo_caracteristica VARCHAR(50) NOT NULL, 
    valor VARCHAR(60) NOT NULL,             
    CONSTRAINT fk_auto_carac FOREIGN KEY (id_auto) REFERENCES hiperdeportivos(id_auto)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE mantenimientos (
    id_mantenimiento INT AUTO_INCREMENT PRIMARY KEY,
    id_auto INT NOT NULL,
    tipo_servicio VARCHAR(60) NOT NULL,
    costo DECIMAL(10,2) NOT NULL,
    CONSTRAINT fk_auto_mant FOREIGN KEY (id_auto) REFERENCES hiperdeportivos(id_auto)
        ON DELETE CASCADE ON UPDATE CASCADE
);