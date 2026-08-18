-- Ejercicio 010 - Intermedio - UNIQUE Carreras Urbanas

-- Tabla de corredores con UNIQUE
CREATE TABLE `ejercicio-010-int-corredores` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    ciudad VARCHAR(30) NOT NULL,
    categoria VARCHAR(20) DEFAULT 'amateur',
    carreras INT DEFAULT 0,
    puntos INT DEFAULT 0,
    premios DECIMAL(10,2) DEFAULT 0,
    UNIQUE KEY `idx_nombre_apellido` (nombre, apellido)
);

-- Tabla de carreras con UNIQUE compuesto
CREATE TABLE `ejercicio-010-int_carreras` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre_carrera VARCHAR(50) NOT NULL,
    ciudad VARCHAR(30) NOT NULL,
    fecha DATE NOT NULL,
    distancia INT DEFAULT 0,
    UNIQUE KEY `idx_carrera_fecha` (nombre_carrera, fecha)
);