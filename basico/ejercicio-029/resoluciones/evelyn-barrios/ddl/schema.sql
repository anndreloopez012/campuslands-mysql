-- ddl/schema.sql
-- Creación de la estructura para el marketplace de accesorios.

CREATE DATABASE IF NOT EXISTS marketplace_accesorios;
USE marketplace_accesorios;

-- Tabla para registrar las ventas de productos
CREATE TABLE IF NOT EXISTS ventas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    producto_nombre VARCHAR(100) NOT NULL,
    categoria ENUM('Anillos', 'Collares', 'Pulseras', 'Relojes') NOT NULL,
    precio_unitario DECIMAL(10, 2) NOT NULL,
    cantidad INT NOT NULL,
    fecha_venta DATE NOT NULL,
    cliente_email VARCHAR(100),
    creado_en TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- Fin del script