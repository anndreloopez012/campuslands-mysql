-- Ejercicio 005 - Básico - SELECT Taller Mecánico de Motos
CREATE TABLE `ejercicio-005-bas-taller` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente VARCHAR(50) NOT NULL,
    marca VARCHAR(30) NOT NULL,
    modelo VARCHAR(30) NOT NULL,
    año INT DEFAULT 2020,
    servicio VARCHAR(50) NOT NULL,
    costo DECIMAL(10,2) DEFAULT 0,
    fecha_ingreso DATE DEFAULT (CURRENT_DATE),
    estado VARCHAR(20) DEFAULT 'pendiente'
);