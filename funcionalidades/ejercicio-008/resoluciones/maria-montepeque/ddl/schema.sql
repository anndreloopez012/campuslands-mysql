-- funcionalidades/ejercicio-008 - maria-montepeque
-- Tematica: restaurante de comida urbana
USE campuslands_mysql;

DROP TABLE IF EXISTS pedidos_urbanos;
DROP TABLE IF EXISTS platos_menu;

CREATE TABLE platos_menu (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(80) NOT NULL,
    categoria ENUM(
        'Tacos',
        'Hamburguesas',
        'Bowls',
        'Bebidas',
        'Postres'
    ) NOT NULL,
    precio DECIMAL(6, 2) NOT NULL,
    CONSTRAINT chk_precio_plato CHECK (precio > 0)
);

CREATE TABLE pedidos_urbanos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    plato_id INT NOT NULL,
    cliente VARCHAR(60) NOT NULL,
    cantidad INT NOT NULL,
    fecha_pedido DATE NOT NULL,
    CONSTRAINT fk_pedido_plato
        FOREIGN KEY (plato_id) REFERENCES platos_menu (id),
    CONSTRAINT chk_cantidad_pedido CHECK (cantidad > 0)
);
