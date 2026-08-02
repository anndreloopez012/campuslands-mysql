DROP DATABASE IF EXISTS tienda_ropa_db;
CREATE DATABASE tienda_ropa_db;
USE tienda_ropa_db;

CREATE TABLE inventario_ropa (
    id_prenda INT AUTO_INCREMENT PRIMARY KEY,
    nombre_prenda VARCHAR(100) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    talla ENUM('XS', 'S', 'M', 'L', 'XL') NOT NULL,
    precio DECIMAL(8,2) CHECK (precio > 0),
    stock INT UNSIGNED DEFAULT 0,
    estado ENUM('disponible', 'agotado', 'en_oferta') DEFAULT 'disponible'
);
