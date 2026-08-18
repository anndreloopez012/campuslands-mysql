-- Campuslands MySQL - avanzado ejercicio 011
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

CREATE TABLE Jugadores (
    jugador_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    ranking_nacional INT NOT NULL UNIQUE,
    mano_dominante ENUM('Diestro', 'Zurdo') NOT NULL
);

CREATE TABLE Partidos (
    partido_id INT AUTO_INCREMENT PRIMARY KEY,
    jugador1_id INT NOT NULL,
    jugador2_id INT NOT NULL,
    ganador_id INT NOT NULL,
    sets_jugador1 INT NOT NULL,
    sets_jugador2 INT NOT NULL,
    FOREIGN KEY (jugador1_id) REFERENCES Jugadores(jugador_id) ON DELETE CASCADE,
    FOREIGN KEY (jugador2_id) REFERENCES Jugadores(jugador_id) ON DELETE CASCADE,
    FOREIGN KEY (ganador_id) REFERENCES Jugadores(jugador_id) ON DELETE CASCADE
);