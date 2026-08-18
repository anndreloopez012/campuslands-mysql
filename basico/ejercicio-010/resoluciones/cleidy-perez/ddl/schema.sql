-- Campuslands MySQL - basico ejercicio 010
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS carreras;

CREATE TABLE carreras (
    id_carrera INT AUTO_INCREMENT PRIMARY KEY,
    nombre_carrera VARCHAR(100) NOT NULL,
    ciudad VARCHAR(50) NOT NULL,
    distancia_km DECIMAL(4,1) NOT NULL, 
    precio_inscripcion DECIMAL(8,2) NOT NULL,
    fecha_carrera DATE NOT NULL
);


CREATE TABLE inscripciones (
    id_inscripcion INT AUTO_INCREMENT PRIMARY KEY,
    id_carrera INT NOT NULL,
    nombre_corredor VARCHAR(100) NOT NULL,
    categoria ENUM('Élite', 'Amateur', 'Master') NOT NULL,
    monto_pagado DECIMAL(8,2) NOT NULL,
    estado_pago ENUM('Pagado', 'Pendiente') DEFAULT 'Pagado',
    FOREIGN KEY (id_carrera) REFERENCES carreras(id_carrera) ON DELETE CASCADE
);
