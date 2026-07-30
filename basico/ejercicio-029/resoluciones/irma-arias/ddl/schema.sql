-- Eliminar la base de datos si ya existe para asegurar ejecución limpia desde cero
DROP DATABASE IF EXISTS db_mercado_accesorios;
CREATE DATABASE db_mercado_accesorios;
USE db_mercado_accesorios;

-- Tabla principal: Inventario de Accesorios con control de fechas
CREATE TABLE accesorios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_accesorio VARCHAR(80) NOT NULL,
    categoria VARCHAR(40) NOT NULL, -- Ej: Audio, Video, Carga, Proteccion
    precio DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL,
    fecha_ingreso DATE NOT NULL,
    estado ENUM('disponible', 'agotado', 'descontinuado') DEFAULT 'disponible',
    
    -- Restricciones de validación profesionales
    CONSTRAINT chk_precio_positivo CHECK (precio >= 0),
    CONSTRAINT chk_stock_no_negativo CHECK (stock >= 0)
);