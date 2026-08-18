-- Datos de practica. Puedes cambiarlos o agregar mas filas.
-- dml/inserts.sql
-- Inserción de datos de prueba para el torneo.

USE moba_tournament_intermediate;

-- Insertar equipos
INSERT INTO equipos (nombre_equipo, region) VALUES
('Thunder Dragons', 'Norteamérica'),
('Shadow Wolves', 'Europa'),
('Crimson Phoenix', 'Asia'),
('Azure Serpents', 'Sudamérica');

-- Insertar jugadores (IDs de equipo: 1=Thunder, 2=Shadow, 3=Crimson, 4=Azure)
INSERT INTO jugadores (nickname, nombre_completo, rol, equipo_id) VALUES
('Viper', 'Jake Miller', 'Top Laner', 1),
('Shadow', 'Lena Petrova', 'Jungler', 1),
('Zephyr', 'Kenji Tanaka', 'Mid Laner', 2),
('Frost', 'Anna Schmidt', 'ADC', 2),
('Blaze', 'Li Wei', 'Support', 3),
('Raptor', 'Carlos Diaz', 'Top Laner', 4),
('Ghost', 'Emily White', 'Jungler', 3),
('Nova', 'Sofia Rossi', 'Mid Laner', 4),
('Reaper', 'David Chen', 'ADC', 1),
('Mirage', 'Isabella Costa', 'Support', 2);
