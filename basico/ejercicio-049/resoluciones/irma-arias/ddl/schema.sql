-- Eliminar la base de datos si ya existe para asegurar ejecución limpia desde cero
DROP DATABASE IF EXISTS db_paracaidismo;
CREATE DATABASE db_paracaidismo;
USE db_paracaidismo;

-- Tabla principal: Registro de Saltos de Paracaidismo
CREATE TABLE saltos_paracaidismo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_paracaidista VARCHAR(60) NOT NULL,
    tipo_salto VARCHAR(40) NOT NULL, -- Ej: Tandem, AFF, Solo, Estatic Line
    altura_pies INT NOT NULL, -- Altura del salto en pies (ej: 10000, 15000)
    duracion_caida_libre_seg INT NOT NULL, -- Segundos de caída libre
    costo_usd DECIMAL(8,2) NOT NULL,
    estado ENUM('completado', 'programado', 'cancelado', 'en_espera') DEFAULT 'completado',
    
    -- Restricciones de validación profesionales
    CONSTRAINT chk_altura_pies CHECK (altura_pies >= 1000 AND altura_pies <= 25000),
    CONSTRAINT chk_caida_libre CHECK (duracion_caida_libre_seg >= 0),
    CONSTRAINT chk_costo_salto CHECK (costo_usd > 0)
);