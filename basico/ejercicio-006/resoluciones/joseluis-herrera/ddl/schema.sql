CREATE DATABASE IF NOT EXISTS db_hiperdeportivos;
USE db_hiperdeportivos;

DROP TABLE IF EXISTS hiperdeportivos;

CREATE TABLE hiperdeportivos (
    id_auto INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(60) NOT NULL,
    velocidad_maxima INT NOT NULL, 
    potencia_hp INT NOT NULL,     
    precio_millones DECIMAL(4,2) NOT NULL, 
    pais_origen VARCHAR(50) NOT NULL
);

