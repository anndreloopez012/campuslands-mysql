-- Datos de practica: arbol de talentos de un videojuego RPG.
-- Se insertan primero los talentos raiz (sin prerequisito) y luego los
-- dependientes, referenciando el id de su talento previo segun el
-- orden de insercion (AUTO_INCREMENT empieza en 1).
USE campuslands_mysql;

-- Raices (id 1 a 5): sin talento previo.
INSERT INTO talentos_avanzado (nombre, clase, nivel_requerido, id_talento_previo) VALUES
('Golpe Firme', 'guerrero', 1, NULL),
('Chispa Arcana', 'mago', 1, NULL),
('Tiro Certero', 'arquero', 1, NULL),
('Paso Sombrio', 'picaro', 1, NULL),
('Toque Sanador', 'clerigo', 1, NULL);

-- Segundo nivel del arbol (id 6 a 9).
INSERT INTO talentos_avanzado (nombre, clase, nivel_requerido, id_talento_previo) VALUES
('Golpe Devastador', 'guerrero', 5, 1),
('Lluvia Arcana', 'mago', 8, 2),
('Lluvia de Flechas', 'arquero', 7, 3),
('Sanacion Mayor', 'clerigo', 12, 5);

-- Tercer nivel del arbol (id 10 y 11).
INSERT INTO talentos_avanzado (nombre, clase, nivel_requerido, id_talento_previo) VALUES
('Grito de Batalla', 'guerrero', 10, 6),
('Tormenta Arcana', 'mago', 18, 7);

-- Cuarto nivel del arbol (id 12).
INSERT INTO talentos_avanzado (nombre, clase, nivel_requerido, id_talento_previo) VALUES
('Furia Imparable', 'guerrero', 20, 10);
