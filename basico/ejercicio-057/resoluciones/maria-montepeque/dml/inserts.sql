-- Datos de practica: gestas de un videojuego de accion y aventura.
USE campuslands_mysql;

INSERT INTO gestas_basico (titulo, tipo_gesta, dificultad, region, recompensa_oro, experiencia_otorgada, completada) VALUES
('El Ocaso del Reino Perdido', 'principal', 'dificil', 'Cañadas Grises', 520, 1250, TRUE),
('El Centinela Ultimo', 'principal', 'extremo', 'Fortaleza Helada', 850, 2100, FALSE),
('Rescate en el Pantano Negro', 'secundaria', 'normal', 'Pantano Sombrio', 160, 320, TRUE),
('Caceria de Lobos Grises', 'desafio', 'facil', 'Bosque Viejo', 85, 160, TRUE),
('Reliquias del Templo Roto', 'coleccionable', 'facil', 'Ruinas de Ashen', 55, 110, FALSE),
('El Mercader de las Sombras', 'secundaria', 'dificil', 'Ciudad Puerto', 230, 420, FALSE),
('Torneo de la Arena Real', 'desafio', 'extremo', 'Coliseo Imperial', 640, 950, TRUE),
('El Mapa del Tesoro Hundido', 'coleccionable', 'normal', 'Islas Brumosas', 110, 190, FALSE),
('La Traicion del Alto Consejo', 'principal', 'normal', 'Capital Dorada', 370, 720, TRUE);
