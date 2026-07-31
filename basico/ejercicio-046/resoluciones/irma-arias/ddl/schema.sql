-- Eliminar la base de datos si ya existe para asegurar ejecución limpia desde cero
DROP DATABASE IF EXISTS db_restaurante_urbano;
CREATE DATABASE db_restaurante_urbano;
USE db_restaurante_urbano;

-- Tabla principal: Menú y Platillos de Comida Urbana
CREATE TABLE platillos_urbanos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_platillo VARCHAR(60) NOT NULL,
    categoria VARCHAR(30) NOT NULL, -- Ej: Hamburguesa, Hot-Dog, Tacos, Alitas, Salchipapa
    precio DECIMAL(8,2) NOT NULL,
    calorias INT NOT NULL,
    disponible_delivery BOOLEAN DEFAULT TRUE,
    estado ENUM('disponible', 'agotado', 'en_preparacion', 'fuera_temporada') DEFAULT 'disponible',
    
    -- Restricciones de validación profesionales
    CONSTRAINT chk_precio_positivo CHECK (precio > 0),
    CONSTRAINT chk_calorias_positivas CHECK (calorias > 0)
);