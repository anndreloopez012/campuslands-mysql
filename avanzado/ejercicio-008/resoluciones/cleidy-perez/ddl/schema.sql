-- Campuslands MySQL - avanzado ejercicio 008
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

CREATE TABLE Roles (
    rol_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_rol VARCHAR(50) NOT NULL UNIQUE,
    descripcion VARCHAR(150) NOT NULL
);

CREATE TABLE PermisosUsuario (
    permiso_id INT AUTO_INCREMENT PRIMARY KEY,
    rol_id INT NOT NULL,
    modulo VARCHAR(50) NOT NULL,
    accion ENUM('Crear', 'Leer', 'Actualizar', 'Eliminar') NOT NULL,
    FOREIGN KEY (rol_id) REFERENCES Roles(rol_id) ON DELETE CASCADE
);
