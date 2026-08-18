-- Campuslands MySQL - basico ejercicio 036
-- Creación de la estructura para la base de datos de autos hiperdeportivos.

CREATE DATABASE IF NOT EXISTS hiperdeportivos_db;
USE hiperdeportivos_db;

-- Tabla para almacenar la información de los autos hiperdeportivos
CREATE TABLE IF NOT EXISTS hiperdeportivos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL UNIQUE,
    anio_lanzamiento INT NOT NULL,
    potencia_hp INT NOT NULL,
    velocidad_max_kmh INT,
    precio_usd DECIMAL(15, 2) NOT NULL,
    produccion_limitada BOOLEAN NOT NULL,
    creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- Fin del script
