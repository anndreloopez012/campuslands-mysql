-- Campuslands MySQL - basico ejercicio 019
-- Ejecutar este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

-- Eliminar tablas si existen para asegurar un estado limpio
DROP TABLE IF EXISTS saltos;
DROP TABLE IF EXISTS paracaidistas;

-- Tabla para almacenar la información de los paracaidistas
CREATE TABLE paracaidistas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  apellido VARCHAR(100) NOT NULL,
  licencia VARCHAR(50) NOT NULL UNIQUE, -- Licencia única para cada paracaidista
  fecha_registro DATE NOT NULL,
  estado ENUM('activo', 'inactivo', 'suspendido') NOT NULL DEFAULT 'activo',
  creado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Tabla para almacenar los registros de saltos
CREATE TABLE saltos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  id_paracaidista INT NOT NULL,
  fecha_salto DATE NOT NULL,
  altura_metros INT NOT NULL CHECK (altura_metros > 0), -- Restricción: la altura debe ser un valor positivo
  tipo_salto ENUM('tandem', 'solo', 'formacion', 'exhibicion') NOT NULL,
  duracion_segundos INT NOT NULL CHECK (duracion_segundos > 0),
  estado_clima VARCHAR(100),
  observaciones TEXT,
  creado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (id_paracaidista) REFERENCES paracaidistas(id) ON DELETE RESTRICT ON UPDATE CASCADE
);