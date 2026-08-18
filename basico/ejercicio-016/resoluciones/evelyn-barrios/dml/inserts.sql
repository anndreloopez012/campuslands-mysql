-- Datos de práctica. Se pueden modificar o agregar más registros.
USE campuslands_mysql;

-- Insertar categorías de platos
INSERT INTO categorias_plato (nombre, descripcion) VALUES
('Entradas', 'Platos ligeros para comenzar la comida.'),
('Platos Fuertes', 'Opciones principales y sustanciosas.'),
('Bebidas', 'Variedad de refrescos y bebidas naturales.'),
('Postres', 'Dulces para finalizar la experiencia.');

-- Insertar platos
INSERT INTO platos (titulo, descripcion, precio, id_categoria, disponible) VALUES
('Papas Fritas con Queso', 'Porción de papas fritas con salsa de queso cheddar.', 5.50, (SELECT id FROM categorias_plato WHERE nombre = 'Entradas'), TRUE),
('Nachos Supremos', 'Nachos con carne, frijoles, queso, jalapeños y crema agria.', 8.75, (SELECT id FROM categorias_plato WHERE nombre = 'Entradas'), TRUE),
('Hamburguesa Clásica', 'Carne de res, lechuga, tomate, cebolla, pepinillos y salsa especial.', 12.00, (SELECT id FROM categorias_plato WHERE nombre = 'Platos Fuertes'), TRUE),
('Pizza Pepperoni', 'Pizza con salsa de tomate, mozzarella y pepperoni.', 15.50, (SELECT id FROM categorias_plato WHERE nombre = 'Platos Fuertes'), TRUE),
('Tacos al Pastor', 'Tres tacos de cerdo marinado con piña, cebolla y cilantro.', 10.25, (SELECT id FROM categorias_plato WHERE nombre = 'Platos Fuertes'), TRUE),
('Refresco de Cola', 'Bebida carbonatada de cola.', 2.50, (SELECT id FROM categorias_plato WHERE nombre = 'Bebidas'), TRUE),
('Limonada Natural', 'Limonada fresca hecha en casa.', 3.00, (SELECT id FROM categorias_plato WHERE nombre = 'Bebidas'), TRUE),
('Tarta de Chocolate', 'Rebanada de tarta de chocolate con helado de vainilla.', 6.00, (SELECT id FROM categorias_plato WHERE nombre = 'Postres'), TRUE),
('Brownie con Helado', 'Brownie caliente con una bola de helado.', 5.75, (SELECT id FROM categorias_plato WHERE nombre = 'Postres'), TRUE),
('Ensalada César', 'Ensalada con lechuga romana, crutones, queso parmesano y aderezo César.', 9.50, (SELECT id FROM categorias_plato WHERE nombre = 'Platos Fuertes'), FALSE); -- Plato no disponible