-- Eliminar la base de datos si ya existe para asegurar ejecución limpia desde cero
DROP DATABASE IF EXISTS db_mercado_accesorios;
CREATE DATABASE db_mercado_accesorios;
USE db_mercado_accesorios;

-- Tabla principal: Inventario y Registro de Accesorios
CREATE TABLE accesorios_mercado (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_sku VARCHAR(30) NOT NULL UNIQUE,
    nombre_accesorio VARCHAR(60) NOT NULL,
    categoria VARCHAR(40) NOT NULL, -- Ej: Joyería, Tecnología, Relojería, Moda, Automotriz
    precio_usd DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL,
    fecha_ingreso DATE NOT NULL,
    estado ENUM('disponible', 'agotado', 'en_oferta', 'descontinuado') DEFAULT 'disponible',
    
    -- Restricciones de validación profesionales
    CONSTRAINT chk_precio_usd CHECK (precio_usd > 0),
    CONSTRAINT chk_stock CHECK (stock >= 0)
);