-- Eliminar la base de datos si ya existe para asegurar ejecución limpia desde cero
DROP DATABASE IF EXISTS db_equipo_streaming;
CREATE DATABASE db_equipo_streaming;
USE db_equipo_streaming;

-- Tabla relacionada 1: Categorías de equipos (ej. Micrófonos, Cámaras, Iluminación, Capturadoras)
CREATE TABLE categorias_equipo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(50) NOT NULL,
    descripcion VARCHAR(150)
);

-- Tabla principal 2: Equipos de Streaming (relacionada con categorías)
CREATE TABLE equipos_streaming (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_equipo VARCHAR(80) NOT NULL,
    categoria_id INT NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL,
    estado ENUM('disponible', 'mantenimiento', 'agotado') DEFAULT 'disponible',
    fecha_adquisicion DATE NOT NULL,
    
    -- Restricciones y Llave Foránea
    CONSTRAINT fk_categoria FOREIGN KEY (categoria_id) REFERENCES categorias_equipo(id),
    CONSTRAINT chk_precio_positivo CHECK (precio >= 0),
    CONSTRAINT chk_stock_no_negativo CHECK (stock >= 0)
);