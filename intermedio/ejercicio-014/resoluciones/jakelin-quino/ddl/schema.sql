-- Ejercicio 014 - Intermedio - Vistas Simples Saga Ciencia Ficción
CREATE TABLE `ejercicio-014-int-peliculas` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    director VARCHAR(50) NOT NULL,
    fecha_estreno DATE NOT NULL,
    fecha_remasterizacion DATE,
    duracion INT DEFAULT 120,
    calificacion DECIMAL(3,2) DEFAULT 0,
    presupuesto DECIMAL(12,2) DEFAULT 0
);