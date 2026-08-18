-- dml/inserts.sql
-- Inserción de datos de prueba para la tabla de personajes.

USE rpg_game;

INSERT INTO personajes (nombre, clase, nivel, puntos_vida, puntos_ataque, region_origen) VALUES
('Aragorn', 'Guerrero', 15, 150, 35, 'Gondor'),
('Gandalf', 'Mago', 20, 100, 50, 'Valinor'),
('Legolas', 'Arquero', 18, 120, 45, 'Bosque Negro'),
('Kael', 'Pícaro', 12, 110, 30, 'Stormwind'),
('Grommash', 'Guerrero', 16, 180, 40, 'Durotar'),
('Jaina', 'Mago', 19, 95, 55, 'Kul Tiras'),
('Sylvanas', 'Arquero', 17, 115, 48, 'Lordaeron'),
('Zael', 'Guerrero', 10, 130, 28, 'Gondor');