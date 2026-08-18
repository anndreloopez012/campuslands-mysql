
INSERT INTO equipos_futsal (nombre_equipo, ciudad, pabellon_local, anio_fundacion) VALUES
('Inter Movistar', 'Torrejón de Ardoz', 'Pabellón Jorge Garbajosa', 1977),
('ElPozo Murcia', 'Murcia', 'Palacio de Deportes de Murcia', 1989),
('FC Barcelona Lassa', 'Barcelona', 'Palau Blaugrana', 1978);

INSERT INTO jugadores_futsal (equipo_id, nombre_completo, dorsal, posicion, salario_mensual_usd) VALUES
(1, 'Carlos Ortiz', 2, 'Cierre', 12500.00),
(1, 'Ricardinho', 10, 'Ala', 28000.00),
(2, 'Miguelín', 11, 'Ala', 14000.00),
(2, 'Matías Rosa', 9, 'Pívot', 11000.00),
(3, 'Sérgio Lozano', 9, 'Ala', 18500.00);

INSERT INTO encuentros_futsal (equipo_local_id, equipo_visitante_id, goles_local, goles_visitante, fecha_encuentro) VALUES
(1, 2, 4, 3, '2026-02-14'),
(2, 3, 2, 2, '2026-03-01'),
(3, 1, 1, 5, '2026-03-20');

INSERT INTO estadisticas_partido_futsal (encuentro_id, jugador_id, goles_anotados, asistencias, faltas_cometidas, tarjetas_amarillas, tarjetas_rojas) VALUES
(1, 1, 1, 1, 2, 1, 0),
(1, 2, 2, 2, 1, 0, 0),
(1, 3, 2, 0, 3, 1, 0),
(1, 4, 1, 1, 2, 0, 0),
(2, 3, 1, 0, 1, 0, 0),
(2, 5, 2, 0, 4, 1, 0),
(3, 1, 1, 2, 1, 0, 0),
(3, 2, 3, 1, 0, 0, 0),
(3, 5, 1, 0, 3, 1, 0);
