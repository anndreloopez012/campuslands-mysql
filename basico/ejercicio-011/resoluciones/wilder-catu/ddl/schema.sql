

USE campuslands_mysql;

DROP TABLE IF EXISTS jugadores_pingpong;

CREATE TABLE jugadores_pingpong (
    id_jugador INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(80) NOT NULL,
    pais VARCHAR(50) NOT NULL,
    edad INT NOT NULL CHECK (edad >= 12),
    ranking INT NOT NULL UNIQUE CHECK (ranking > 0),
    victorias INT NOT NULL DEFAULT 0 CHECK (victorias >= 0),
    derrotas INT NOT NULL DEFAULT 0 CHECK (derrotas >= 0),
    estado ENUM('Activo','Lesionado','Retirado') NOT NULL DEFAULT 'Activo'
);