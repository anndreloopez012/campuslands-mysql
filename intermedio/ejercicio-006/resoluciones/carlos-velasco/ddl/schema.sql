-- Campuslands MySQL - Intermedio Ejercicio 006
-- Ejecuta este archivo antes de inserts.sql.
-- Tema: Normalización 1FN para autos hiperdeportivos

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS autos;
DROP TABLE IF EXISTS fabricantes;

SET FOREIGN_KEY_CHECKS = 1;


CREATE TABLE fabricantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(60) NOT NULL UNIQUE,
    pais_origen VARCHAR(60) NOT NULL
);


CREATE TABLE autos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fabricante_id INT NOT NULL,
    modelo VARCHAR(80) NOT NULL,
    anio YEAR NOT NULL,
    potencia_hp INT NOT NULL,
    velocidad_maxima INT NOT NULL,
    precio DECIMAL(12,2) NOT NULL,
    combustible ENUM('Gasolina','Híbrido','Eléctrico') NOT NULL,
    estado ENUM('Disponible','Vendido') NOT NULL DEFAULT 'Disponible',

    CONSTRAINT fk_auto_fabricante
        FOREIGN KEY (fabricante_id)
        REFERENCES fabricantes(id),

    CHECK (potencia_hp > 0),
    CHECK (velocidad_maxima > 0),
    CHECK (precio >= 0)
);
