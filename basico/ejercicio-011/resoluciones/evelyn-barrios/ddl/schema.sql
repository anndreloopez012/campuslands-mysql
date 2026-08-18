-- Campuslands MySQL - basico ejercicio 011
-- Solución para evelyn-barrios
-- Temática: Análisis de Clientes en E-commerce

USE campuslands_mysql;

-- Creación de la tabla para registrar pedidos de clientes
CREATE TABLE pedidos_clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_nombre VARCHAR(100) NOT NULL,
    producto VARCHAR(100) NOT NULL,
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10, 2) NOT NULL,
    fecha_pedido DATE NOT NULL,
    CONSTRAINT chk_cantidad_positiva CHECK (cantidad > 0),
    CONSTRAINT chk_precio_positivo CHECK (precio_unitario > 0)
);
