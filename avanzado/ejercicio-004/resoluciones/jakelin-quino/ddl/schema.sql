-- Ejercicio 004 - Avanzado - Triggers Garaje de Motos
CREATE TABLE `ejercicio-004-adv-motos` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    marca VARCHAR(30) NOT NULL,
    modelo VARCHAR(30) NOT NULL,
    precio DECIMAL(10,2) DEFAULT 0,
    disponible BOOLEAN DEFAULT TRUE,
    ultima_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE `ejercicio-004-adv_auditoria` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    moto_id INT,
    accion VARCHAR(20),
    precio_anterior DECIMAL(10,2),
    precio_nuevo DECIMAL(10,2),
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);