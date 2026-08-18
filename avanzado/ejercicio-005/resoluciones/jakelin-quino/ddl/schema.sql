-- Ejercicio 005 - Avanzado - Índices Taller Mecánico
CREATE TABLE `ejercicio-005-adv-taller` (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente VARCHAR(50) NOT NULL,
    marca VARCHAR(30) NOT NULL,
    modelo VARCHAR(30) NOT NULL,
    servicio VARCHAR(50) NOT NULL,
    costo DECIMAL(10,2) DEFAULT 0,
    fecha_ingreso DATE DEFAULT (CURRENT_DATE),
    estado VARCHAR(20) DEFAULT 'pendiente'
);

-- Índice simple en columna frecuente
CREATE INDEX `idx_estado` ON `ejercicio-005-adv-taller` (estado);

-- Índice compuesto para consultas combinadas
CREATE INDEX `idx_marca_estado` ON `ejercicio-005-adv-taller` (marca, estado);

-- Índice para búsquedas por fecha
CREATE INDEX `idx_fecha` ON `ejercicio-005-adv-taller` (fecha_ingreso);