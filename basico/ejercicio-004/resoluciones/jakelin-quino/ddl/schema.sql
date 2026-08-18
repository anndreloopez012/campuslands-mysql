-- Ejercicio 004 - Básico - INSERT Garaje de Motos
CREATE TABLE `ejercicio-004-bas-motos` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    marca VARCHAR(30) NOT NULL,
    modelo VARCHAR(30) NOT NULL,
    año INT DEFAULT 2025,
    cilindraje INT DEFAULT 0,
    precio DECIMAL(10,2) DEFAULT 0,
    color VARCHAR(20) DEFAULT 'negro',
    disponible BOOLEAN DEFAULT TRUE
);