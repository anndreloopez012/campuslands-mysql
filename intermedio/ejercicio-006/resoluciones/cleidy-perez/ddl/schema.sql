-- Campuslands MySQL - intermedio ejercicio 006
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

CREATE TABLE Autos (
    auto_id INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    anio_fabricacion INT NOT NULL,
    motor VARCHAR(50) NOT NULL,
    potencia_hp INT NOT NULL,
    velocidad_max_kmh INT NOT NULL
);

CREATE TABLE EspecificacionesAvanzadas (
    especificacion_id INT AUTO_INCREMENT PRIMARY KEY,
    auto_id INT NOT NULL,
    tipo_especificacion VARCHAR(50) NOT NULL,
    detalle VARCHAR(100) NOT NULL,
    FOREIGN KEY (auto_id) REFERENCES Autos(auto_id) ON DELETE CASCADE
);
