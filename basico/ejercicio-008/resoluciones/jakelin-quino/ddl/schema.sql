-- Ejercicio 008 - Básico - UPDATE Fútbol Sala
CREATE TABLE `ejercicio-008-bas-futbolsala` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    jugador VARCHAR(50) NOT NULL,
    equipo VARCHAR(30) NOT NULL,
    posicion VARCHAR(20) DEFAULT 'delantero',
    goles INT DEFAULT 0,
    asistencias INT DEFAULT 0,
    partidos INT DEFAULT 0,
    estado VARCHAR(20) DEFAULT 'activo'
);