USE db_videojuego_rpg;

-- Inserción de mínimo 8 registros variados de personajes RPG
INSERT INTO personajes_rpg (nombre_personaje, clase_rpg, nivel, puntos_vida, experiencia_acumulada, estado) VALUES
('Arthas el Justiciero', 'Guerrero', 85, 1250, 450000, 'activo'),
('Lyra la Tejedora de Hechizos', 'Mago', 90, 800, 520000, 'en_combate'),
('Kaelen Sombra Nómada', 'Asesino', 75, 950, 310000, 'activo'),
('Thorne Martillo de Acero', 'Guerrero', 60, 1100, 210000, 'inconciente'),
('Selene Luz Eterna', 'Clerigo', 82, 900, 430000, 'activo'),
('Varis Ojo de Halcón', 'Arquero', 70, 850, 280000, 'retirado'),
('Morgana la Oscura', 'Mago', 95, 850, 600000, 'en_combate'),
('Dorian Diente de León', 'Clerigo', 50, 700, 120000, 'activo');