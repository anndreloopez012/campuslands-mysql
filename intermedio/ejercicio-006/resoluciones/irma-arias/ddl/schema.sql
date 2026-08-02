DROP DATABASE IF EXISTS autos_hiperdeportivos_db;
CREATE DATABASE autos_hiperdeportivos_db;
USE autos_hiperdeportivos_db;

CREATE TABLE hiperdeportivos (
    id_auto INT AUTO_INCREMENT PRIMARY KEY,
    modelo VARCHAR(100) NOT NULL,
    fabricante VARCHAR(50) NOT NULL,
    velocidad_max_kmh INT UNSIGNED CHECK (velocidad_max_kmh > 0),
    potencia_hp INT UNSIGNED CHECK (potencia_hp > 0),
    precio_usd DECIMAL(12,2) CHECK (precio_usd >= 0),
    estado ENUM('disponible', 'reservado', 'vendido') DEFAULT 'disponible'
);
