USE db_videojuego_accion;

-- Inserción de mínimo 8 registros variados de misiones y expediciones de aventura
INSERT INTO misiones_aventura (nombre_mision, region_mapa, dificultad, recompensa_oro, tipo_mision, estado) VALUES
('El Secreto del Templo Perdido', 'Templo Perdido', 8, 15000.00, 'Principal', 'completada'),
('Emboscada en la Selva Sombría', 'Selva Sombría', 5, 7500.00, 'Secundaria', 'en_curso'),
('Exploración de las Cavernas de Cristal', 'Cavernas de Cristal', 9, 22000.00, 'Principal', 'disponible'),
('Asalto a la Ciudadela del Ocaso', 'Ciudadela', 10, 35000.00, 'Principal', 'bloqueada'),
('Caza de Bestias en el Pantano', 'Selva Sombría', 4, 5000.00, 'Expedición', 'completada'),
('Rescate en las Ruinas Ancestrales', 'Templo Perdido', 7, 12500.00, 'Secundaria', 'disponible'),
('Saqueo al Convoy Mercante', 'Cavernas de Cristal', 6, 9000.00, 'Saqueo', 'en_curso'),
('Defensa del Puesto Avanzado', 'Ciudadela', 8, 18000.00, 'Expedición', 'disponible');