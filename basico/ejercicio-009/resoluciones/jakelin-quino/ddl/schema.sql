-- Ejercicio 009 - Básico - DELETE Controlado Kickboxing
CREATE TABLE `ejercicio-009-bas-luchadores` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    categoria VARCHAR(20) NOT NULL,
    peso DECIMAL(5,2) DEFAULT 0,
    victorias INT DEFAULT 0,
    derrotas INT DEFAULT 0,
    nocauts INT DEFAULT 0,
    activo BOOLEAN DEFAULT TRUE
);