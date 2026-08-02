DROP DATABASE IF EXISTS futbol_sala_db;
CREATE DATABASE futbol_sala_db;
USE futbol_sala_db;

CREATE TABLE sedes_sala (
    id_sede INT AUTO_INCREMENT PRIMARY KEY,
    nombre_sede VARCHAR(100) NOT NULL,
    ciudad VARCHAR(50) NOT NULL
);

CREATE TABLE equipos_sala (
    id_equipo INT AUTO_INCREMENT PRIMARY KEY,
    nombre_equipo VARCHAR(100) NOT NULL,
    id_sede INT NOT NULL,
    FOREIGN KEY (id_sede) REFERENCES sedes_sala(id_sede) ON DELETE CASCADE
);

CREATE TABLE jugadores_sala (
    id_jugador INT AUTO_INCREMENT PRIMARY KEY,
    nombre_jugador VARCHAR(100) NOT NULL,
    dorsal INT UNSIGNED CHECK (dorsal BETWEEN 1 AND 99),
    goles_anotados INT UNSIGNED DEFAULT 0,
    id_equipo INT NOT NULL,
    estado ENUM('activo', 'lesionado', 'sancionado') DEFAULT 'activo',
    FOREIGN KEY (id_equipo) REFERENCES equipos_sala(id_equipo) ON DELETE CASCADE
);
