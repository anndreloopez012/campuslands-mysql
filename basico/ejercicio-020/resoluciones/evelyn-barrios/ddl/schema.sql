-- Campuslands MySQL - basico ejercicio 020
-- Ejecutar este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

-- Eliminar tablas si existen para asegurar un estado limpio
DROP TABLE IF EXISTS citas;
DROP TABLE IF EXISTS artistas;

-- Tabla para almacenar la información de los artistas de tatuajes
CREATE TABLE artistas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  apellido VARCHAR(100) NOT NULL,
  especialidad VARCHAR(100),
  años_experiencia INT NOT NULL CHECK (años_experiencia >= 0), -- Restricción: años de experiencia no negativos
  estado ENUM('activo', 'inactivo', 'vacaciones') NOT NULL DEFAULT 'activo',
  creado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Tabla para almacenar las citas de tatuajes
CREATE TABLE citas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  id_artista INT NOT NULL,
  fecha_cita DATE NOT NULL,
  hora_cita TIME NOT NULL,
  descripcion_tatuaje TEXT,
  precio_estimado DECIMAL(10,2) NOT NULL CHECK (precio_estimado > 0), -- Restricción: el precio debe ser un valor positivo
  estado ENUM('pendiente', 'confirmada', 'realizada', 'cancelada') NOT NULL DEFAULT 'pendiente',
  creado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (id_artista) REFERENCES artistas(id) ON DELETE RESTRICT ON UPDATE CASCADE
);