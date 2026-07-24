
-- DDL: Creación de base de datos y tablas relacionales para Torneo Esports MOBA
DROP DATABASE IF EXISTS db_esports_moba_intermedio;
CREATE DATABASE db_esports_moba_intermedio CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE db_esports_moba_intermedio;

-- Tabla principal de Equipos
CREATE TABLE equipos (
    id_equipo INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre_equipo VARCHAR(50) NOT NULL UNIQUE,
    region VARCHAR(30) NOT NULL,
    puntos_ranking INT UNSIGNED NOT NULL DEFAULT 0,
    estado_equipo ENUM('activo', 'eliminado', 'suspendido') NOT NULL DEFAULT 'activo',
    CONSTRAINT chk_puntos CHECK (puntos_ranking >= 0)
) ENGINE=InnoDB;

-- Tabla dependiente de Jugadores (Relacionada por Llave Foránea)
CREATE TABLE jugadores (
    id_jugador INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    gamertag VARCHAR(40) NOT NULL UNIQUE,
    nombre_real VARCHAR(60) NOT NULL,
    rol ENUM('Top', 'Jungla', 'Mid', 'ADC', 'Support') NOT NULL,
    id_equipo INT UNSIGNED NOT NULL,
    CONSTRAINT fk_equipo_jugador FOREIGN KEY (id_equipo) 
        REFERENCES equipos(id_equipo) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE
) ENGINE=InnoDB;