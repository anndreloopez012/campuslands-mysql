-- =====================================================
-- Base de Datos: Autos Hiperdeportivos
-- Archivo: schema.sql
-- Descripción: Creación de la estructura de la base de datos
-- =====================================================

DROP DATABASE IF EXISTS autos_hiperdeportivos;

CREATE DATABASE autos_hiperdeportivos;

USE autos_hiperdeportivos;

CREATE TABLE autos (
    id_auto INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(80) NOT NULL,
    pais_origen VARCHAR(50) NOT NULL,
    velocidad_maxima INT NOT NULL CHECK (velocidad_maxima > 0),
    potencia_hp INT NOT NULL CHECK (potencia_hp > 0),
    precio DECIMAL(12,2) NOT NULL CHECK (precio > 0),
    estado ENUM('Disponible','Vendido','Reservado') NOT NULL DEFAULT 'Disponible'
);