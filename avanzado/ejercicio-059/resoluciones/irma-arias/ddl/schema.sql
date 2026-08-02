DROP DATABASE IF EXISTS mercado_accesorios_db;
CREATE DATABASE mercado_accesorios_db;
USE mercado_accesorios_db;

CREATE TABLE accesorios (
    id_accesorio INT AUTO_INCREMENT PRIMARY KEY,
    nombre_accesorio VARCHAR(100) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    precio_usd DECIMAL(8,2) CHECK (precio_usd >= 0),
    stock INT UNSIGNED CHECK (stock >= 0),
    fecha_ingreso DATE NOT NULL,
    estado ENUM('disponible', 'agotado', 'en_oferta') DEFAULT 'disponible'
);
