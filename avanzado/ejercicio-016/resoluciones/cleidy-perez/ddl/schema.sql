-- Campuslands MySQL - avanzado ejercicio 016
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;
CREATE TABLE Platillos (
    platillo_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(6,2) NOT NULL CHECK (precio > 0),
    stock INT NOT NULL CHECK (stock >= 0)
);

CREATE TABLE Ordenes (
    orden_id INT AUTO_INCREMENT PRIMARY KEY,
    platillo_id INT NOT NULL,
    cantidad INT NOT NULL CHECK (cantidad > 0),
    total DECIMAL(8,2) NOT NULL CHECK (total > 0),
    fecha_orden DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (platillo_id) REFERENCES Platillos(platillo_id) ON DELETE CASCADE
);
