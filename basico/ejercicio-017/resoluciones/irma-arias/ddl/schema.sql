DROP DATABASE IF EXISTS db_tienda_ropa_irma;
CREATE DATABASE db_tienda_ropa_irma;
USE db_tienda_ropa_irma;

CREATE TABLE inventario_ropa (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_prenda VARCHAR(70) NOT NULL,
    categoria VARCHAR(30) NOT NULL CHECK (categoria IN ('Camisa', 'Pantalon', 'Chaquetas', 'Vestido', 'Calzado', 'Accesorios')),
    talla VARCHAR(10) NOT NULL CHECK (talla IN ('XS', 'S', 'M', 'L', 'XL', 'Unica')),
    precio DECIMAL(10,2) NOT NULL CHECK (precio > 0.00),
    stock INT NOT NULL CHECK (stock >= 0),
    estado_stock VARCHAR(20) NOT NULL DEFAULT 'Disponible' CHECK (estado_stock IN ('Disponible', 'Agotado', 'Liquidacion'))
);