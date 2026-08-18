-- Ejercicio 009 - Avanzado - Bloqueos Kickboxing

-- Tabla de luchadores
CREATE TABLE `ejercicio-009-adv-luchadores` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    categoria VARCHAR(20) NOT NULL,
    peso DECIMAL(5,2) DEFAULT 0,
    victorias INT DEFAULT 0,
    derrotas INT DEFAULT 0,
    nocauts INT DEFAULT 0,
    saldo DECIMAL(10,2) DEFAULT 1000.00,
    ultima_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabla de auditoría de bloqueos
CREATE TABLE `ejercicio-009-adv_bitacora` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    luchador_id INT,
    accion VARCHAR(30),
    usuario VARCHAR(30),
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);