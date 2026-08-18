-- Ejercicio 010 - Avanzado - Backup Lógico Carreras Urbanas

-- Tabla principal
CREATE TABLE `ejercicio-010-adv-corredores` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    ciudad VARCHAR(30) NOT NULL,
    puntos INT DEFAULT 0
);

-- Tabla de respaldo (copia exacta)
CREATE TABLE `ejercicio-010-adv-corredores_backup` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    ciudad VARCHAR(30) NOT NULL,
    puntos INT DEFAULT 0
);

-- Tabla de historial de backups
CREATE TABLE `ejercicio-010-adv-backups` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    registros INT DEFAULT 0
);