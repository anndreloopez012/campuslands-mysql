-- Campuslands MySQL - basico ejercicio 027
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

CREATE TABLE Jugadores (
    jugador_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_usuario VARCHAR(50) NOT NULL UNIQUE,
    correo VARCHAR(100) NOT NULL UNIQUE,
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Personajes (
    personaje_id INT AUTO_INCREMENT PRIMARY KEY,
    jugador_id INT NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    clase VARCHAR(30) NOT NULL,
    nivel INT DEFAULT 1,
    puntos_vida INT DEFAULT 100,
    oro INT DEFAULT 0,
    FOREIGN KEY (jugador_id) REFERENCES Jugadores(jugador_id) ON DELETE CASCADE
);

CREATE TABLE InventarioPersonaje (
    inventario_id INT AUTO_INCREMENT PRIMARY KEY,
    personaje_id INT NOT NULL,
    nombre_item VARCHAR(50) NOT NULL,
    tipo ENUM('Arma', 'Armadura', 'Pocion') NOT NULL,
    cantidad INT DEFAULT 1,
    FOREIGN KEY (personaje_id) REFERENCES Personajes(personaje_id) ON DELETE CASCADE
);