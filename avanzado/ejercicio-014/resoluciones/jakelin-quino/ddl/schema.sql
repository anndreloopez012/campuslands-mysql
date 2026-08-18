-- Ejercicio 014 - Avanzado - Event Scheduler Saga Ciencia Ficción
CREATE TABLE `ejercicio-014-adv-peliculas` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    director VARCHAR(50) NOT NULL,
    fecha_estreno DATE NOT NULL,
    calificacion DECIMAL(3,2) DEFAULT 0,
    vistas INT DEFAULT 0,
    ultima_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabla de auditoría
CREATE TABLE `ejercicio-014-adv_log` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    mensaje VARCHAR(200) NOT NULL,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);