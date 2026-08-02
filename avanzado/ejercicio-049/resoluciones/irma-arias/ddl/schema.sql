DROP DATABASE IF EXISTS paracaidismo_db;
CREATE DATABASE paracaidismo_db;
USE paracaidismo_db;

CREATE TABLE saltos_paracaidismo (
    id_salto INT AUTO_INCREMENT PRIMARY KEY,
    nombre_paracaidista VARCHAR(100) NOT NULL,
    modalidad VARCHAR(50) NOT NULL,
    altura_pies INT UNSIGNED CHECK (altura_pies >= 3000),
    costo_usd DECIMAL(8,2) CHECK (costo_usd > 0),
    calificacion_instructor DECIMAL(3,1) CHECK (calificacion_instructor >= 0 AND calificacion_instructor <= 10),
    estado ENUM('completado', 'pendiente', 'cancelado') DEFAULT 'completado'
);
