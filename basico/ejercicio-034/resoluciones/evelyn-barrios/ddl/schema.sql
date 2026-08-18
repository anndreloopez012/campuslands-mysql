-- ddl/schema.sql
-- Creación de la estructura para la base de datos del garaje de motos.

CREATE DATABASE IF NOT EXISTS garaje_motos;
USE garaje_motos;

-- Tabla para almacenar la información de las motocicletas en el garaje
CREATE TABLE IF NOT EXISTS motos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    anio INT NOT NULL,
    cilindrada INT NOT NULL,
    precio_reparacion DECIMAL(10, 2),
    estado_servicio ENUM('Pendiente', 'En Proceso', 'Completado', 'Entregado') NOT NULL DEFAULT 'Pendiente',
    fecha_ingreso DATE NOT NULL,
    creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- Fin del script