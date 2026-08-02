USE futbol_sala_3fn_db;

INSERT INTO sedes_ciudades (nombre_ciudad, nombre_coliseo) VALUES
('Bogotá', 'Coliseo El Salitre'),
('Medellín', 'Coliseo Iván de Bedout'),
('Cali', 'Coliseo Evangelista Mora'),
('Bucaramanga', 'Coliseo Bicentenario');

INSERT INTO posiciones_juego (nombre_posicion, descripcion_tactica) VALUES
('Cierre', 'Organiza la defensa y salida de balón'),
('Ala', 'Controla las bandas y genera transiciones'),
('Pívot', 'Referente en ataque y juego de espaldas'),
('Portero', 'Protege el arco e inicia el ataque');

INSERT INTO equipos_sala (nombre_equipo, id_sede) VALUES
('Leones Futsal', 1),
('Águoras Doradas FS', 2),
('Alianza Platanera', 3),
('Real Bucaramanga', 4);

INSERT INTO jugadores_sala (nombre_jugador, dorsal, goles_anotados, id_equipo, id_posicion, estado_jugador) VALUES
('Andrés Ñañez', 10, 14, 1, 3, 'activo'),
('Felipe Echavarría', 7, 12, 2, 2, 'activo'),
('Angellot Caro', 9, 18, 4, 3, 'activo'),
('Jhonatan Cárdenas', 12, 1, 3, 4, 'activo'),
('Yéison Fonnegra', 5, 8, 2, 1, 'activo'),
('Camilo Gómez', 8, 6, 1, 2, 'lesionado'),
('Stiven Abril', 1, 0, 4, 4, 'activo'),
('Jorge Cuervo', 11, 9, 3, 3, 'suspendido');
