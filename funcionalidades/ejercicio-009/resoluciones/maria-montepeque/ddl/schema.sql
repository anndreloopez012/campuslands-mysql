-- funcionalidades/ejercicio-009 - maria-montepeque
-- Tematica: tienda de ropa
USE campuslands_mysql;

DROP TABLE IF EXISTS productos_ropa;
DROP TABLE IF EXISTS categorias_ropa;

-- Categorias con jerarquia (autorreferencia): Ropa -> Ropa de Hombre -> Camisas -> Camisas de Vestir, etc.
CREATE TABLE categorias_ropa (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(60) NOT NULL,
    categoria_padre_id INT NULL,
    CONSTRAINT fk_categoria_padre
        FOREIGN KEY (categoria_padre_id) REFERENCES categorias_ropa (id)
);

CREATE TABLE productos_ropa (
    id INT AUTO_INCREMENT PRIMARY KEY,
    categoria_id INT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(8, 2) NOT NULL,
    stock INT NOT NULL DEFAULT 0,
    CONSTRAINT fk_producto_categoria
        FOREIGN KEY (categoria_id) REFERENCES categorias_ropa (id),
    CONSTRAINT chk_precio_producto CHECK (precio > 0),
    CONSTRAINT chk_stock_producto CHECK (stock >= 0)
);
