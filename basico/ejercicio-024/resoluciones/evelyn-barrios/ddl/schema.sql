-- Campuslands MySQL - basico ejercicio 024
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS academia_soldadura;
USE academia_soldadura;

CREATE TABLE IF NOT EXISTS inspecciones_soldadura (
  id INT AUTO_INCREMENT PRIMARY KEY,
  proyecto_nombre VARCHAR(100) NOT NULL,
  soldador_id INT NOT NULL,
  fecha_inspeccion DATE NOT NULL,
  tipo_junta VARCHAR(50),
  resultado ENUM('Aprobado', 'Rechazado', 'Reparado') NOT NULL,
  defectos_encontrados INT DEFAULT 0,
  creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
