-- Campuslands MySQL - basico ejercicio 010
-- Solución para evelyn-barrios
-- Temática: Ventas de una Tienda de Electrónicos

USE campuslands_mysql;

-- Creación de la tabla para registrar ventas de productos electrónicos
CREATE TABLE ventas_electronica (
    id INT AUTO_INCREMENT PRIMARY KEY,
    producto VARCHAR(100) NOT NULL,
    categoria ENUM('Smartphones', 'Laptops', 'Auriculares', 'Teclados', 'Monitores') NOT NULL,
    precio_unitario DECIMAL(10, 2) NOT NULL,
    cantidad_vendida INT NOT NULL,
    fecha_venta DATE NOT NULL,
    CONSTRAINT chk_precio_positivo CHECK (precio_unitario > 0),
    CONSTRAINT chk_cantidad_positiva CHECK (cantidad_vendida > 0)
);
