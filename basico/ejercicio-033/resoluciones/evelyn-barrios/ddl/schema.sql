-- Campuslands MySQL - basico ejercicio 033
-- ddl/schema.sql
-- Creación de la estructura para el inventario de skins.

CREATE DATABASE IF NOT EXISTS shooter_skins_inventory;
USE shooter_skins_inventory;

-- Tabla para almacenar el inventario de skins
CREATE TABLE IF NOT EXISTS inventario_skins (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_skin VARCHAR(100) NOT NULL UNIQUE,
    tipo_arma VARCHAR(50) NOT NULL,
    rareza ENUM('Común', 'Rara', 'Épica', 'Legendaria') NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    fecha_lanzamiento DATE,
    obtenido BOOLEAN DEFAULT FALSE,
    creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- Fin del script
