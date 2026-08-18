-- Datos de practica: objetos de un videojuego RPG.
-- Cada fila respeta el CHECK: solo llena el atributo de su tipo.
USE campuslands_mysql;

INSERT INTO objetos_intermedio (nombre, tipo, nivel_requerido, precio, danio, defensa, curacion) VALUES
('Espada Rota del Alba', 'arma', 5, 210, 36, NULL, NULL),
('Baston de Cenizas', 'arma', 8, 360, 46, NULL, NULL),
('Arco del Viento Norte', 'arma', 6, 290, 31, NULL, NULL),
('Coraza de Placas Antigua', 'armadura', 10, 410, NULL, 52, NULL),
('Tunica del Sabio Errante', 'armadura', 7, 225, NULL, 26, NULL),
('Elixir de Vida Menor', 'pocion', 1, 16, NULL, NULL, 32),
('Elixir de Vida Mayor', 'pocion', 10, 62, NULL, NULL, 105),
('Anillo del Coraje', 'accesorio', 12, 510, NULL, NULL, NULL),
('Amuleto del Vidente', 'accesorio', 15, 560, NULL, NULL, NULL);
