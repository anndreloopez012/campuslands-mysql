-- Ejercicio 007 - Básico - ORDER BY Liga de Fútbol
CREATE TABLE `ejercicio-007-bas-liga` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    equipo VARCHAR(50) NOT NULL,
    partidos INT DEFAULT 0,
    ganados INT DEFAULT 0,
    empatados INT DEFAULT 0,
    perdidos INT DEFAULT 0,
    goles_favor INT DEFAULT 0,
    goles_contra INT DEFAULT 0,
    puntos INT DEFAULT 0
);