-- Campuslands MySQL - basico ejercicio 027
-- Creación de la estructura para el videojuego de acción y aventura.

CREATE DATABASE IF NOT EXISTS aventura_juego;
USE aventura_juego;

-- Tabla para almacenar los héroes del juego
CREATE TABLE IF NOT EXISTS heroes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL UNIQUE,
  clase ENUM('Explorador', 'Guerrero', 'Hechicero', 'Ladrón') NOT NULL,
  habilidad_principal VARCHAR(100) NOT NULL,
  nivel_poder INT NOT NULL,
  zona_actual VARCHAR(50),
  estado ENUM('Activo', 'Descansando', 'Herido', 'Retirado') NOT NULL DEFAULT 'Activo',
  creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- Fin del script
