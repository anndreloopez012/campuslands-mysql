DROP DATABASE IF EXISTS ejercicio_11;
CREATE DATABASE ejercicio_11;
USE ejercicio_11;

CREATE TABLE jugadores (
    id_jugador INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(80) NOT NULL,
    nickname VARCHAR(40) NOT NULL UNIQUE,
    edad TINYINT UNSIGNED NOT NULL CHECK (edad >= 12 AND edad <= 60),
    nacionalidad VARCHAR(40) NOT NULL,
    ranking_actual INT UNSIGNED NOT NULL CHECK (ranking_actual > 0),
    activo BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE torneos (
    id_torneo INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(80) NOT NULL UNIQUE,
    categoria ENUM('Amateur', 'Intermedio', 'Profesional') NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    premio DECIMAL(10,2) NOT NULL CHECK (premio >= 0),
    CHECK (fecha_fin >= fecha_inicio)
);

CREATE TABLE partidos (
    id_partido INT AUTO_INCREMENT PRIMARY KEY,
    id_torneo INT NOT NULL,
    jugador_local INT NOT NULL,
    jugador_visitante INT NOT NULL,
    sets_local TINYINT UNSIGNED NOT NULL CHECK (sets_local >= 0),
    sets_visitante TINYINT UNSIGNED NOT NULL CHECK (sets_visitante >= 0),
    ganador INT NOT NULL,
    fecha_partido DATE NOT NULL,

    FOREIGN KEY (id_torneo) REFERENCES torneos(id_torneo),
    FOREIGN KEY (jugador_local) REFERENCES jugadores(id_jugador),
    FOREIGN KEY (jugador_visitante) REFERENCES jugadores(id_jugador),
    FOREIGN KEY (ganador) REFERENCES jugadores(id_jugador),

    CHECK (jugador_local <> jugador_visitante),
    CHECK (ganador = jugador_local OR ganador = jugador_visitante),
    CHECK (sets_local <> sets_visitante)
);