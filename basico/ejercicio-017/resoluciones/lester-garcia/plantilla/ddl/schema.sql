DROP DATABASE IF EXISTS ejercicio_17;
CREATE DATABASE ejercicio_17;
USE ejercicio_17;

CREATE TABLE categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    descripcion VARCHAR(150)
);

CREATE TABLE productos (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    talla VARCHAR(10) NOT NULL,
    color VARCHAR(30) NOT NULL,
    precio DECIMAL(8,2) NOT NULL,
    stock INT UNSIGNED NOT NULL,
    disponible BOOLEAN NOT NULL DEFAULT TRUE,
    id_categoria INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
);

CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(80) NOT NULL,
    telefono VARCHAR(15) NOT NULL UNIQUE,
    correo VARCHAR(100) UNIQUE,
    fecha_registro DATE NOT NULL
);

CREATE TABLE ventas (
    id_venta INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    fecha_venta DATETIME NOT NULL,
    metodo_pago ENUM('Efectivo', 'Tarjeta', 'Transferencia') NOT NULL,
    total DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);