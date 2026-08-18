CREATE DATABASE IF NOT EXISTS db_carreras_urbanas;
USE db_carreras_urbanas;

CREATE TABLE eventos_carrera (
    id_evento INT AUTO_INCREMENT PRIMARY KEY,
    nombre_evento VARCHAR(80) NOT NULL,
    distancia_km DECIMAL(4,1) NOT NULL,
    costo_inscripcion DECIMAL(10,2) NOT NULL
);

CREATE TABLE corredores (
    id_corredor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(60) NOT NULL,
    categoria_edad VARCHAR(30) NOT NULL,
    genero VARCHAR(20) NOT NULL
);

CREATE TABLE inscripciones (
    id_inscripcion INT AUTO_INCREMENT PRIMARY KEY,
    id_corredor INT NOT NULL,
    id_evento INT NOT NULL,
    monto_pagado DECIMAL(10,2) NOT NULL,
    CONSTRAINT fk_corredor_inscripcion FOREIGN KEY (id_corredor) REFERENCES corredores(id_corredor)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_evento_inscripcion FOREIGN KEY (id_evento) REFERENCES eventos_carrera(id_evento)
        ON DELETE CASCADE ON UPDATE CASCADE
);