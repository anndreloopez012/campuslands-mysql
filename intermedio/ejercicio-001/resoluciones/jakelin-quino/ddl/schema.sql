-- Ejercicio 001 - Intermedio
-- Tablas para torneo de e-sports MOBA con INNER JOIN

CREATE TABLE ejercicio-001-equipos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre_equipo VARCHAR(50) NOT NULL UNIQUE,
    entrenador VARCHAR(50) NOT NULL,
    fecha_creacion DATE NOT NULL,
    region VARCHAR(20) NOT NULL
);

CREATE TABLE ejercicio-001-jugadores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    equipo_id INT,
    nombre_jugador VARCHAR(50) NOT NULL,
    rol VARCHAR(20) NOT NULL,
    campeon_favorito VARCHAR(30) NOT NULL,
    partidas INT DEFAULT 0,
    kills INT DEFAULT 0,
    deaths INT DEFAULT 0,
    assists INT DEFAULT 0,
    FOREIGN KEY (equipo_id) REFERENCES ejercicio-001-equipos(id)
);