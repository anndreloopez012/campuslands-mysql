DROP DATABASE IF EXISTS liga_futbol_db;
CREATE DATABASE liga_futbol_db;
USE liga_futbol_db;

CREATE TABLE equipos_liga (
    id_equipo INT AUTO_INCREMENT PRIMARY KEY,
    nombre_equipo VARCHAR(100) NOT NULL,
    ciudad VARCHAR(50) NOT NULL,
    estadio VARCHAR(100) NOT NULL
);

CREATE TABLE jugadores_liga (
    id_jugador INT AUTO_INCREMENT PRIMARY KEY,
    nombre_jugador VARCHAR(100) NOT NULL,
    posicion ENUM('Portero', 'Defensa', 'Mediocampista', 'Delantero') NOT NULL,
    goles_anotados INT UNSIGNED DEFAULT 0,
    tarjetas_amarillas INT UNSIGNED DEFAULT 0,
    id_equipo INT NOT NULL,
    estado ENUM('activo', 'lesionado', 'suspendido') DEFAULT 'activo',
    FOREIGN KEY (id_equipo) REFERENCES equipos_liga(id_equipo) ON DELETE CASCADE
);
