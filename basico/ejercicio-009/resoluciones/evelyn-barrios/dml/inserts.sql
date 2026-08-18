-- basico/ejercicio-009 - evelyn-barrios
-- Inserción de datos de kickboxers
USE campuslands_mysql;

INSERT INTO kickboxers (nombre, pais, categoria_peso, record_victorias, record_derrotas, estado) VALUES
('Rico Verhoeven', 'Países Bajos', 'Peso Pesado', 59, 10, 'Activo'),
('Badr Hari', 'Marruecos', 'Peso Pesado', 106, 17, 'Activo'),
('Giorgio Petrosyan', 'Italia', 'Peso Medio', 104, 2, 'Activo'),
('Takeru Segawa', 'Japón', 'Peso Pluma', 41, 3, 'Activo'),
('Marat Grigorian', 'Armenia', 'Peso Ligero', 65, 12, 'Activo'),
('Peter Aerts', 'Países Bajos', 'Peso Pesado', 108, 35, 'Retirado'),
('Semmy Schilt', 'Países Bajos', 'Peso Pesado', 43, 6, 'Retirado'),
('Buakaw Banchamek', 'Tailandia', 'Peso Welter', 240, 24, 'Activo'),
('John Doe', 'Desconocido', 'Peso Ligero', 0, 1, 'Inactivo'); -- Peleador de prueba para ser eliminado