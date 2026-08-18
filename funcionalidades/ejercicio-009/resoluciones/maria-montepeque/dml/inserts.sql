-- funcionalidades/ejercicio-009 - maria-montepeque
USE campuslands_mysql;

-- Arbol de categorias (3 niveles de profundidad bajo la raiz 'Ropa').
INSERT INTO categorias_ropa (nombre, categoria_padre_id) VALUES
    ('Ropa', NULL),                    -- 1: raiz
    ('Ropa de Hombre', 1),             -- 2
    ('Ropa de Mujer', 1),              -- 3
    ('Camisas', 2),                    -- 4
    ('Pantalones', 2),                 -- 5
    ('Vestidos', 3),                   -- 6
    ('Blusas', 3),                     -- 7
    ('Camisas de Vestir', 4),          -- 8
    ('Camisas Casuales', 4),           -- 9
    ('Accesorios', 1),                 -- 10
    ('Cinturones', 10);                -- 11

-- 16 productos repartidos en distintos niveles del arbol (algunos en hojas,
-- otros pegados directo a una categoria intermedia).
INSERT INTO productos_ropa (categoria_id, nombre, precio, stock) VALUES
    (8, 'Camisa Oxford Blanca', 45.00, 12),
    (8, 'Camisa Oxford Celeste', 45.00, 3),
    (9, 'Camisa Franela Cuadros', 32.00, 20),
    (9, 'Camisa Denim Casual', 38.00, 2),
    (4, 'Camisa Basica Blanca', 20.00, 30),
    (5, 'Pantalon Chino Beige', 55.00, 8),
    (5, 'Pantalon Jean Slim', 60.00, 15),
    (5, 'Pantalon Cargo', 50.00, 1),
    (6, 'Vestido Floral Verano', 65.00, 6),
    (6, 'Vestido de Noche Negro', 120.00, 2),
    (7, 'Blusa de Seda', 48.00, 10),
    (7, 'Blusa Estampada', 30.00, 25),
    (2, 'Chaqueta Bomber', 90.00, 5),
    (11, 'Cinturon de Cuero Cafe', 25.00, 18),
    (11, 'Cinturon Reversible', 28.00, 4),
    (10, 'Gorra Snapback', 22.00, 40);
