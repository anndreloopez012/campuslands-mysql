-- Datos de practica. Puedes cambiarlos o agregar mas filas.
USE campuslands_mysql;

INSERT INTO Jugadores (nombre_usuario, correo) VALUES 
('ShadowHunter', 'shadow@game.com'),
('ValeriaHero', 'valeria@game.com'),
('Drakon99', 'drakon@game.com');

INSERT INTO Personajes (jugador_id, nombre, clase, nivel, puntos_vida, oro) VALUES 
(1, 'Kaelen', 'Guerrero', 5, 250, 150),
(2, 'Aria', 'Maga', 12, 180, 500),
(3, 'Thorne', 'Pícaro', 8, 200, 320);

INSERT INTO InventarioPersonaje (personaje_id, nombre_item, tipo, cantidad) VALUES 
(1, 'Espada de Hierro', 'Arma', 1),
(1, 'Poción de Vida', 'Pocion', 5),
(2, 'Báculo de Fuego', 'Arma', 1),
(3, 'Daga Sombría', 'Arma', 2);