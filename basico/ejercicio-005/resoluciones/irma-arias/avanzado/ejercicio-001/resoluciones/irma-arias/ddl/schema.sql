
-- DDL: Creación de la base de datos y esquema para Torneo Esports MOBA
DROP DATABASE IF EXISTS db_esports_moba;
CREATE DATABASE db_esports_moba CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE db_esports_moba;

CREATE TABLE torneos_moba (
    id_equipo INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre_equipo VARCHAR(60) NOT NULL UNIQUE,
    region VARCHAR(40) NOT NULL,
    puntos_liga INT UNSIGNED NOT NULL DEFAULT 0,
    partidas_ganadas INT UNSIGNED NOT NULL DEFAULT 0,
    partidas_perdidas INT UNSIGNED NOT NULL DEFAULT 0,
    premio_acumulado DECIMAL(12, 2) UNSIGNED NOT NULL DEFAULT 0.00,
    estado ENUM('clasificado', 'en_competencia', 'eliminado', 'campeon') NOT NULL DEFAULT 'en_competencia',
    fecha_inscripcion DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT chk_partidas CHECK (partidas_ganadas >= 0 AND partidas_perdidas >= 0)
) ENGINE=InnoDB;