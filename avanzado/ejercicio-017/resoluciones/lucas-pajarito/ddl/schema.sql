-- Creación y selección de la Base de Datos
CREATE DATABASE IF NOT EXISTS avanzado_tienda_ropa;
USE avanzado_tienda_ropa;

-- Limpieza previa de tablas
DROP TABLE IF EXISTS detalle_ventas_017;
DROP TABLE IF EXISTS productos_017;
DROP TABLE IF EXISTS clientes_017;
DROP TABLE IF EXISTS categorias_017;

-- Creación de tablas principales
CREATE TABLE categorias_017 (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE productos_017 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    codigo_sku VARCHAR(20) NOT NULL UNIQUE,
    nombre VARCHAR(100) NOT NULL,
    talla ENUM('XS', 'S', 'M', 'L', 'XL') NOT NULL,
    color VARCHAR(30) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL CHECK(precio > 0.00),
    stock INT NOT NULL DEFAULT 0 CHECK(stock >= 0),
    categoria_id INT NOT NULL,
    FOREIGN KEY (categoria_id) REFERENCES categorias_017(id)
) ENGINE=InnoDB;

CREATE TABLE clientes_017 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(80) NOT NULL,
    correo VARCHAR(100) NOT NULL UNIQUE,
    fecha_nacimiento DATE NOT NULL
) ENGINE=InnoDB;

CREATE TABLE detalle_ventas_017 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    producto_id INT NOT NULL,
    cliente_id INT NOT NULL,
    cantidad INT NOT NULL CHECK(cantidad > 0),
    monto_total DECIMAL(10, 2) NOT NULL CHECK(monto_total > 0.00),
    fecha_venta DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (producto_id) REFERENCES productos_017(id),
    FOREIGN KEY (cliente_id) REFERENCES clientes_017(id)
) ENGINE=InnoDB;