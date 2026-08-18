-- Ejercicio 006 - Avanzado - EXPLAIN Autos Hiperdeportivos
CREATE TABLE `ejercicio-006-adv-autos` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    marca VARCHAR(30) NOT NULL,
    modelo VARCHAR(30) NOT NULL,
    año INT DEFAULT 2025,
    velocidad_max INT DEFAULT 0,
    aceleracion DECIMAL(3,1) DEFAULT 0,
    precio DECIMAL(12,2) DEFAULT 0,
    combustible VARCHAR(20) DEFAULT 'gasolina'
);

-- Índices para mejorar consultas
CREATE INDEX `idx_marca` ON `ejercicio-006-adv-autos` (marca);
CREATE INDEX `idx_precio` ON `ejercicio-006-adv-autos` (precio);
CREATE INDEX `idx_velocidad` ON `ejercicio-006-adv-autos` (velocidad_max);