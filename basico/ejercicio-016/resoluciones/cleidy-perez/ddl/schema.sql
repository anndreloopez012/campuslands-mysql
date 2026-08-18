-- Campuslands MySQL - basico ejercicio 016
-- Ejecuta este archivo antes de inserts.sql.

CREATE DATABASE IF NOT EXISTS campuslands_mysql;
USE campuslands_mysql;

CREATE TABLE menu (
    id_platillo INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    categoria ENUM('Burgers', 'Tacos', 'Papas/Acompañamientos', 'Bebidas', 'Postres') NOT NULL,
    precio DECIMAL(6,2) NOT NULL CHECK (precio > 0),
    disponible BOOLEAN DEFAULT TRUE
);


CREATE TABLE pedidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_platillo INT NOT NULL,
    nombre_cliente VARCHAR(80) NOT NULL,
    cantidad INT NOT NULL DEFAULT 1 CHECK (cantidad > 0),
    tipo_servicio ENUM('Comer aquí', 'Para llevar', 'Delivery') NOT NULL,
    estado_pedido ENUM('En cocina', 'Listo', 'Entregado') DEFAULT 'En cocina',
    fecha_pedido DATETIME DEFAULT CURRENT_TIMESTAMP,
    
    FOREIGN KEY (id_platillo) REFERENCES menu(id_platillo) ON DELETE CASCADE
);
