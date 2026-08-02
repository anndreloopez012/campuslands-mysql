DROP DATABASE IF EXISTS estudio_tatuajes_db;
CREATE DATABASE estudio_tatuajes_db;
USE estudio_tatuajes_db;

CREATE TABLE citas_tatuajes (
    id_cita INT AUTO_INCREMENT PRIMARY KEY,
    nombre_cliente VARCHAR(100) NOT NULL,
    estilo_tatuaje VARCHAR(50) NOT NULL,
    costo_usd DECIMAL(8,2) CHECK (costo_usd > 0),
    horas_estimadas INT UNSIGNED CHECK (horas_estimadas > 0),
    estado ENUM('completado', 'pendiente', 'cancelado') DEFAULT 'completado'
);
