-- Campuslands MySQL - basico ejercicio 018
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

-- Eliminar tablas si existen para asegurar un estado limpio
DROP TABLE IF EXISTS reservas;
DROP TABLE IF EXISTS destinos;

-- Tabla para almacenar los destinos turísticos
CREATE TABLE destinos (
  id INT AUTO_INCREMENT PRIMARY KEY, -- PRIMARY KEY para identificar de forma única cada destino
  nombre VARCHAR(255) NOT NULL UNIQUE,
  pais VARCHAR(100) NOT NULL,
  descripcion TEXT,
  precio_promedio_noche DECIMAL(10,2) NOT NULL CHECK (precio_promedio_noche > 0), -- Restricción: el precio debe ser un valor positivo
  estado ENUM('activo', 'inactivo', 'mantenimiento') NOT NULL DEFAULT 'activo',
  creado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Tabla para almacenar las reservas de viajes
CREATE TABLE reservas (
  id INT AUTO_INCREMENT PRIMARY KEY, -- PRIMARY KEY para identificar de forma única cada reserva
  id_destino INT NOT NULL,
  fecha_inicio DATE NOT NULL,
  fecha_fin DATE NOT NULL CHECK (fecha_fin >= fecha_inicio), -- Restricción: la fecha de fin debe ser igual o posterior a la de inicio
  numero_personas INT NOT NULL CHECK (numero_personas > 0),
  precio_total DECIMAL(10,2) NOT NULL CHECK (precio_total > 0),
  estado ENUM('confirmada', 'cancelada', 'pendiente') NOT NULL DEFAULT 'pendiente',
  creado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (id_destino) REFERENCES destinos(id) ON DELETE RESTRICT ON UPDATE CASCADE
);
