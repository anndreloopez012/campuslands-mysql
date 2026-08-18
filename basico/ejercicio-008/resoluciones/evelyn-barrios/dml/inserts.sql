-- basico/ejercicio-008 - evelyn-barrios
-- Inserción de datos iniciales de jugadores de futsal
USE campuslands_mysql;

INSERT INTO jugadores_futsal (nombre_jugador, equipo, posicion, goles_anotados, asistencias, tarjetas_amarillas, estado) VALUES
('Ricardo "Ricardinho" Braga', 'Movistar Inter', 'Ala', 15, 20, 3, 'Activo'),
('Alessandro "Falcão" Rosa Vieira', 'Magnus Futsal', 'Ala', 25, 10, 1, 'Activo'),
('Sergio Lozano', 'Barça Futsal', 'Ala', 18, 15, 5, 'Activo'),
('Leandro "Lino" Dos Santos', 'Magnus Futsal', 'Cierre', 5, 8, 2, 'Activo'),
('Carlos Ortiz', 'Movistar Inter', 'Cierre', 3, 12, 4, 'Activo'),
('Fernando "Fernan" Aguilera', 'Barça Futsal', 'Pívot', 22, 5, 0, 'Activo'),
('Francisco "Paco" Sedano', 'Barça Futsal', 'Portero', 1, 2, 1, 'Retirado'),
('Adrián "Pola" Alonso', 'Movistar Inter', 'Ala', 9, 11, 6, 'Activo');