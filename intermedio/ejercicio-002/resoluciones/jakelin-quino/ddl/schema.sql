-- Ejercicio 002 - Intermedio - LEFT JOIN Battle Royale
CREATE TABLE `ejercicio-002-int-equipos` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    region VARCHAR(20) DEFAULT 'LATAM'
);

CREATE TABLE `ejercicio-002-int-jugadores` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    equipo INT,
    nick VARCHAR(30) NOT NULL,
    puntaje DECIMAL(10,2) DEFAULT 0,
    nivel INT DEFAULT 1,
    FOREIGN KEY (equipo) REFERENCES `ejercicio-002-int-equipos`(id)
);