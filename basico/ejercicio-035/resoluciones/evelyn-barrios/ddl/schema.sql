-- Campuslands MySQL - basico ejercicio 035
-- ddl/schema.sql
-- Creación de la estructura para la base de datos del taller mecánico de motos.

CREATE DATABASE IF NOT EXISTS taller_motos;
USE taller_motos;

-- Tabla para almacenar la información de las motocicletas en el taller
CREATE TABLE IF NOT EXISTS motos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  marca VARCHAR(50) NOT NULL,
  modelo VARCHAR(50) NOT NULL,
  anio INT NOT NULL,
  kilometraje INT,
  fecha_recepcion DATE NOT NULL,
  estado_reparacion ENUM('Pendiente', 'En Proceso', 'Completado', 'Entregado') NOT NULL DEFAULT 'Pendiente',
  costo_estimado DECIMAL(10, 2),
  descripcion_problema TEXT,
  creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- Fin del script
