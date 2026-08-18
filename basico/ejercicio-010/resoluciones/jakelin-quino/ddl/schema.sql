-- Ejercicio 010 - Básico - COUNT y SUM Carreras Urbanas
CREATE TABLE `ejercicio-010-bas-corredores` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    ciudad VARCHAR(30) NOT NULL,
    categoria VARCHAR(20) DEFAULT 'elite',
    carreras INT DEFAULT 0,
    tiempo_total TIME DEFAULT '00:00:00',
    puntos INT DEFAULT 0,
    premios DECIMAL(10,2) DEFAULT 0
);