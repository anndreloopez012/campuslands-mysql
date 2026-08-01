-- DDL: Estructura avanzada para Inventario de Skins Shooter (PRIMARY KEY)
DROP DATABASE IF EXISTS db_inventario_skins;
CREATE DATABASE db_inventario_skins;
USE db_inventario_skins;

CREATE TABLE skins_shooter (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_skin VARCHAR(20) NOT NULL UNIQUE,
    nombre_skin VARCHAR(60) NOT NULL,
    arma_asociada VARCHAR(30) NOT NULL,
    rareza_skin ENUM('comun', 'rara', 'epica', 'legendaria', mitica) DEFAULT 'comun',
    precio_valor DECIMAL(10,2) NOT NULL,
    stock_disponible INT NOT NULL,
    estado_inventario ENUM('disponible', 'equipado', 'en_venta', 'archivado') DEFAULT 'disponible',
    
    -- Restricciones y validaciones profesionales
    CONSTRAINT chk_precio_valor CHECK (precio_valor >= 0),
    CONSTRAINT chk_stock_disponible CHECK (stock_disponible >= 0)
);