USE db_accion_aventura;

-- Inserción de mínimo 8 registros variados para pruebas
INSERT INTO misiones (titulo_mision, region, dificultad, recompensa_oro, estado, fecha_limite) VALUES
('El Secreto del Templo Perdido', 'Ruinas Ancestrales', 'Dificil', 1500.00, 'disponible', '2026-08-15'),
('Caza en el Pantano Sombrío', 'Pantanos de Bruma', 'Media', 800.50, 'completada', '2026-07-10'),
('Defensa de la Aldea Fronteriza', 'Valle Verde', 'Facil', 300.00, 'completada', '2026-06-01'),
('Asalto a la Fortaleza del Dragón', 'Montañas Cenicientas', 'Legendaria', 5000.00, 'bloqueada', '2026-09-30'),
('Rescate en las Minas Subterráneas', 'Cavernas de Cristal', 'Media', 950.00, 'disponible', '2026-08-20'),
('El Robusto Tesoro del Pirata', 'Costa de los Naufragios', 'Dificil', 2200.75, 'disponible', '2026-08-25'),
('Escoltar al Mercader Perdido', 'Bosque Susurrante', 'Facil', 450.00, 'completada', '2026-06-15'),
('La Maldición del Hechicero Oscuro', 'Torre Abismal', 'Legendaria', 4800.00, 'bloqueada', '2026-10-05');