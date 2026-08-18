-- Ejercicio 006 - Básico - WHERE Autos Hiperdeportivos
CREATE TABLE `ejercicio-006-bas-autos` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    marca VARCHAR(30) NOT NULL,
    modelo VARCHAR(30) NOT NULL,
    año INT DEFAULT 2025,
    velocidad_max INT DEFAULT 0,
    aceleracion DECIMAL(3,1) DEFAULT 0,
    precio DECIMAL(12,2) DEFAULT 0,
    combustible VARCHAR(20) DEFAULT 'gasolina'
);