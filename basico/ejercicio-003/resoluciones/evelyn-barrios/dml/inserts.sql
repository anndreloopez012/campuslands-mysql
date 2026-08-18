-- Datos de practica. Puedes cambiarlos o agregar mas filas.
-- Archivo: dml/inserts.sql
-- Descripción: Inserción de datos de ejemplo para el sistema de inventario de RPG.

USE inventario_rpg;

-- Inserción de categorías de ítems
INSERT INTO categorias_item (nombre_categoria, descripcion) VALUES
('Arma', 'Ítems utilizados para infligir daño.'),
('Armadura', 'Ítems que proporcionan defensa y protección.'),
('Poción', 'Consumibles que restauran salud, maná u otorgan efectos temporales.'),
('Material', 'Componentes utilizados para la creación de otros ítems.');

-- Inserción de ítems
INSERT INTO items (nombre_item, id_categoria, rareza, precio_venta) VALUES
('Espada Corta de Hierro', 1, 'Común', 50),
('Arco de Cazador', 1, 'Común', 60),
('Hacha de Batalla Épica', 1, 'Épico', 5000),
('Pechera de Cuero', 2, 'Común', 80),
('Yelmo de Acero Raro', 2, 'Raro', 1200),
('Poción de Salud Menor', 3, 'Común', 10),
('Poción de Maná Grande', 3, 'Poco Común', 50),
('Elixir de Fuerza Legendario', 3, 'Legendario', 10000),
('Lingote de Hierro', 4, 'Común', 5),
('Piel de Lobo', 4, 'Común', 3),
('Corazón de Dragón', 4, 'Legendario', 25000);

-- Inserción de personajes
INSERT INTO personajes (nombre_personaje, nivel, clase) VALUES
('Aragorn', 15, 'Guerrero'),
('Legolas', 18, 'Arquero'),
('Gandalf', 25, 'Mago'),
('Gimli', 16, 'Enano');

-- Asignación de ítems a los inventarios de los personajes
-- Inventario de Aragorn
INSERT INTO inventario_personaje (id_personaje, id_item, cantidad) VALUES
(1, 1, 1),  -- Espada Corta de Hierro
(1, 4, 1),  -- Pechera de Cuero
(1, 6, 5);  -- 5 Pociones de Salud Menor

-- Inventario de Legolas
INSERT INTO inventario_personaje (id_personaje, id_item, cantidad) VALUES
(2, 2, 1),  -- Arco de Cazador
(2, 6, 3);  -- 3 Pociones de Salud Menor

-- Inventario de Gandalf
INSERT INTO inventario_personaje (id_personaje, id_item, cantidad) VALUES
(3, 7, 10), -- 10 Pociones de Maná Grande
(3, 8, 1),  -- Elixir de Fuerza Legendario
(3, 11, 1); -- Corazón de Dragón
