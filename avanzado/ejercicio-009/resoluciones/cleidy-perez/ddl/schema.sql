-- Campuslands MySQL - avanzado ejercicio 009
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

CREATE TABLE Clases (
    clase_id INT AUTO_INCREMENT PRIMARY KEY,
    disciplina VARCHAR(50) NOT NULL,
    instructor VARCHAR(50) NOT NULL,
    cupos_disponibles INT NOT NULL
);

CREATE TABLE Reservas (
    reserva_id INT AUTO_INCREMENT PRIMARY KEY,
    clase_id INT NOT NULL,
    nombre_alumno VARCHAR(50) NOT NULL,
    fecha_reserva DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (clase_id) REFERENCES Clases(clase_id) ON DELETE CASCADE
);
