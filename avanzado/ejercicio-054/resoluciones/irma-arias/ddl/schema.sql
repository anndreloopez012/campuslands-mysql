DROP DATABASE IF EXISTS soldadura_db;
CREATE DATABASE soldadura_db;
USE soldadura_db;

CREATE TABLE trabajos_soldadura (
    id_trabajo INT AUTO_INCREMENT PRIMARY KEY,
    tipo_soldadura VARCHAR(50) NOT NULL,
    material_base VARCHAR(50) NOT NULL,
    amperaje INT UNSIGNED CHECK (amperaje > 0),
    costo_usd DECIMAL(8,2) CHECK (costo_usd >= 0),
    calidad_inspeccion DECIMAL(3,1) CHECK (calidad_inspeccion >= 0 AND calidad_inspeccion <= 10),
    estado ENUM('aprobado', 'defectuoso', 'pendiente') DEFAULT 'pendiente'
);
