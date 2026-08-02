DROP DATABASE IF EXISTS restaurante_urbano_db;
CREATE DATABASE restaurante_urbano_db;
USE restaurante_urbano_db;

CREATE TABLE categorias_menu (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(50) NOT NULL,
    descripcion_categoria VARCHAR(100) NOT NULL
);

CREATE TABLE sucursales (
    id_sucursal INT AUTO_INCREMENT PRIMARY KEY,
    nombre_sucursal VARCHAR(60) NOT NULL,
    zona_ciudad VARCHAR(40) NOT NULL
);

CREATE TABLE platillos (
    id_platillo INT AUTO_INCREMENT PRIMARY KEY,
    nombre_platillo VARCHAR(80) NOT NULL,
    precio_usd DECIMAL(5,2) UNSIGNED CHECK (precio_usd BETWEEN 1.00 AND 50.00),
    calificacion_cliente DECIMAL(3,1) UNSIGNED CHECK (calificacion_cliente BETWEEN 1.0 AND 10.0),
    id_categoria INT NOT NULL,
    id_sucursal INT NOT NULL,
    estado_platillo ENUM('disponible', 'agotado', 'temporada', 'retirado') DEFAULT 'disponible',
    FOREIGN KEY (id_categoria) REFERENCES categorias_menu(id_categoria) ON DELETE CASCADE,
    FOREIGN KEY (id_sucursal) REFERENCES sucursales(id_sucursal) ON DELETE CASCADE
);
