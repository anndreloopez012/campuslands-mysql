-- Campuslands MySQL - basico ejercicio 011
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

DROP TABLE IF EXISTS jugadores_pinpong;

CREATE TABLE jugadores_pingpong (
    id_jugador INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    mano_habil ENUM('Diestro', 'Zurdo') NOT NULL DEFAULT 'Diestro',
    ranking_puntos INT DEFAULT 1000 CHECK (ranking_puntos >= 0), -- No se permiten puntos negativos
    edad INT CHECK (edad >= 6 AND edad <= 100)                    -- Edad entre 6 y 100 años
);


CREATE TABLE partidos_pingpong (
    id_partido INT AUTO_INCREMENT PRIMARY KEY,
    id_jugador1 INT NOT NULL,
    id_jugador2 INT NOT NULL,
    sets_jugador1 INT DEFAULT 0 CHECK (sets_jugador1 >= 0 AND sets_jugador1 <= 4), -- Máx 4 sets
    sets_jugador2 INT DEFAULT 0 CHECK (sets_jugador2 >= 0 AND sets_jugador2 <= 4),
    fecha_partido DATETIME DEFAULT CURRENT_TIMESTAMP,
    
  
    FOREIGN KEY (id_jugador1) REFERENCES jugadores_pingpong(id_jugador),
    FOREIGN KEY (id_jugador2) REFERENCES jugadores_pingpong(id_jugador),
    CONSTRAINT chk_diferentes_jugadores CHECK (id_jugador1 <> id_jugador2) -- No puede jugar contra sí mismo
);
