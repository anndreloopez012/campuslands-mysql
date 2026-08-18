-- Campuslands MySQL - intermedio ejercicio 011
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;
CREATE TABLE Jugadores (
    jugador_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    ranking_nacional INT NOT NULL UNIQUE,
    edad INT NOT NULL,
    mano_dominante ENUM('Diestro', 'Zurdo') NOT NULL,
    CONSTRAINT chk_ranking_positivo CHECK (ranking_nacional > 0),
    CONSTRAINT chk_edad_minima CHECK (edad >= 10 AND edad <= 80)
);

CREATE TABLE Partidos (
    partido_id INT AUTO_INCREMENT PRIMARY KEY,
    jugador1_id INT NOT NULL,
    jugador2_id INT NOT NULL,
    sets_jugador1 INT NOT NULL,
    sets_jugador2 INT NOT NULL,
    duracion_minutos INT NOT NULL,
    FOREIGN KEY (jugador1_id) REFERENCES Jugadores(jugador_id) ON DELETE CASCADE,
    FOREIGN KEY (jugador2_id) REFERENCES Jugadores(jugador_id) ON DELETE CASCADE,
    CONSTRAINT chk_jugadores_distintos CHECK (jugador1_id <> jugador2_id),
    CONSTRAINT chk_sets_j1 CHECK (sets_jugador1 BETWEEN 0 AND 4),
    CONSTRAINT chk_sets_j2 CHECK (sets_jugador2 BETWEEN 0 AND 4),
    CONSTRAINT chk_sin_empate CHECK (sets_jugador1 <> sets_jugador2),
    CONSTRAINT chk_duracion CHECK (duracion_minutos > 0)
);
