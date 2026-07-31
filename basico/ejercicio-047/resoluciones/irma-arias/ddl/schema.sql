-- Eliminar la base de datos si ya existe para asegurar ejecución limpia desde cero
DROP DATABASE IF EXISTS db_tienda_ropa;
CREATE DATABASE db_tienda_ropa;
USE db_tienda_ropa;

-- Tabla principal: Prendas e Inventario de la Tienda de Ropa
CREATE TABLE prendas_tienda (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_prenda VARCHAR(60) NOT NULL,
    categoria VARCHAR(30) NOT NULL, -- Ej: Camisetas, Pantalones, Chaquetas, Calzado, Accesorios
    talla ENUM('XS', 'S', 'M', 'L', 'XL', 'XXL', 'Única') NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL,
    fecha_ingreso DATE NOT NULL,
    estado ENUM('disponible', 'agotado', 'en_oferta', 'descontinuado') DEFAULT 'disponible',
    
    -- Restricciones de validación profesionales
    CONSTRAINT chk_precio_ropa CHECK (precio > 0),
    CONSTRAINT chk_stock_positivo CHECK (stock >= 0)
);