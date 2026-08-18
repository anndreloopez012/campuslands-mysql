-- Campuslands MySQL - basico ejercicio 002
-- Archivo: ddl/schema.sql
-- Descripción: Creación del esquema de base de datos para un sistema de ranking de Battle Royale.

-- Crear la base de datos si no existe y seleccionarla
CREATE DATABASE IF NOT EXISTS ranking_br;
USE ranking_br;

-- Tabla para almacenar la información de los jugadores
CREATE TABLE jugadores (
    id_jugador INT AUTO_INCREMENT PRIMARY KEY,
    nickname VARCHAR(50) NOT NULL UNIQUE,
    region VARCHAR(50) NOT NULL,
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP,
    estado ENUM('Activo', 'Inactivo', 'Baneado') DEFAULT 'Activo'
);

-- Tabla para almacenar la información de las partidas
CREATE TABLE partidas (
    id_partida INT AUTO_INCREMENT PRIMARY KEY,
    fecha_partida DATETIME DEFAULT CURRENT_TIMESTAMP,
    mapa VARCHAR(100) NOT NULL,
    duracion_minutos DECIMAL(5,2) NOT NULL,
    CONSTRAINT chk_duracion_positiva CHECK (duracion_minutos > 0)
);

-- Tabla para almacenar las estadísticas de cada jugador por partida
CREATE TABLE estadisticas_partida (
    id_estadistica INT AUTO_INCREMENT PRIMARY KEY,
    id_jugador INT NOT NULL,
    id_partida INT NOT NULL,
    kills SMALLINT DEFAULT 0,
    deaths SMALLINT DEFAULT 0,
    asistencias SMALLINT DEFAULT 0,
    dano_infligido INT DEFAULT 0,
    dano_recibido INT DEFAULT 0,
    posicion_final SMALLINT NOT NULL,
    puntaje_partida DECIMAL(10,2) DEFAULT 0.00,
    CONSTRAINT fk_jugador FOREIGN KEY (id_jugador) REFERENCES jugadores(id_jugador),
    CONSTRAINT fk_partida FOREIGN KEY (id_partida) REFERENCES partidas(id_partida),
    CONSTRAINT uc_jugador_partida UNIQUE (id_jugador, id_partida), -- Un jugador solo puede tener una entrada por partida
    CONSTRAINT chk_stats_no_negativas CHECK (kills >= 0 AND deaths >= 0 AND asistencias >= 0 AND dano_infligido >= 0 AND dano_recibido >= 0),
    CONSTRAINT chk_posicion_valida CHECK (posicion_final > 0)
);
