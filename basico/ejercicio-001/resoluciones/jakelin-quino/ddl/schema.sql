-- Ejercicio 001 - Básico
-- Tabla para torneo de e-sports MOBA

CREATE TABLE ejercicio-001-basico (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre_equipo VARCHAR(50) NOT NULL,
    nombre_jugador VARCHAR(50) NOT NULL,
    rol_jugador VARCHAR(20) NOT NULL,
    campeon_favorito VARCHAR(30) NOT NULL,
    partidas_jugadas INT DEFAULT 0,
    kills INT DEFAULT 0,
    deaths INT DEFAULT 0,
    assists INT DEFAULT 0,
    equipo_ganado BOOLEAN DEFAULT FALSE,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);