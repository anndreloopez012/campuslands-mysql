-- basico/ejercicio-009 - evelyn-barrios
-- Temática: Kickboxing

USE campuslands_mysql;

-- Creación de la tabla de peleadores de kickboxing
CREATE TABLE kickboxers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    pais VARCHAR(50),
    categoria_peso VARCHAR(50),
    record_victorias INT DEFAULT 0,
    record_derrotas INT DEFAULT 0,
    record_empates INT DEFAULT 0,
    estado ENUM('Activo', 'Retirado', 'Inactivo') DEFAULT 'Activo',
    CONSTRAINT chk_records_no_negativos CHECK (record_victorias >= 0 AND record_derrotas >= 0 AND record_empates >= 0)
);