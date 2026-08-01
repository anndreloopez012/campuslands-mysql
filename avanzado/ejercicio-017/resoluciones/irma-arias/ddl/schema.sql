-- DDL: Estructura avanzada para la Tienda de Ropa (Tipos de datos y restricciones)
DROP DATABASE IF EXISTS db_tienda_ropa;
CREATE DATABASE db_tienda_ropa;
USE db_tienda_ropa;

CREATE TABLE inventario_ropa (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_prenda VARCHAR(20) NOT NULL UNIQUE,
    nombre_articulo VARCHAR(60) NOT NULL,
    categoria VARCHAR(30) NOT NULL,
    talla ENUM('XS', 'S', 'M', 'L', 'XL', 'XXL') NOT NULL,
    precio_unitario DECIMAL(10,2) NOT NULL,
    stock_disponible INT NOT NULL,
    fecha_ingreso DATE NOT NULL,
    estado ENUM('en_stock', 'ultimas_unidades', 'agotado', 'liquidado') DEFAULT 'en_stock',
    
    -- Restricciones y validaciones profesionales
    CONSTRAINT chk_precio_ropa CHECK (precio_unitario > 0),
    CONSTRAINT chk_stock_ropa CHECK (stock_disponible >= 0)
);