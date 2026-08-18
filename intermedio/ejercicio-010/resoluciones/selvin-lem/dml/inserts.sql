USE campuslands_mysql;

INSERT INTO carreras_urbanas_pilotos_unique (nombre_piloto, placa_vehiculo, numero_corredor, temporada, estado) VALUES
('Kenji Ortiz',  'P123ABC', 7,  'temporada-1', 'activo'),
('Raul Ixtok',   'P456DEF', 12, 'temporada-1', 'activo'),
('Vale Nunez',   'P789GHI', 7,  'temporada-2', 'activo'),
('Bryan Solis',  'P321JKL', 3,  'temporada-1', 'sancionado'),
('Fer Osorio',   'P654MNO', 21, 'temporada-1', 'activo'),
('Andy Tul',     'P987PQR', 12, 'temporada-2', 'activo'),
('Kelly Baten',  'P159STU', 5,  'temporada-1', 'activo'),
('Ivan Rax',     'P753VWX', 8,  'temporada-1', 'activo');

-- Caso limite valido: el numero 7 se repite (Kenji vs Vale), pero en temporadas DISTINTAS -> permitido
-- (ya insertado arriba, confirma que el UNIQUE compuesto no bloquea esto)

-- === Caso limite invalido 1: placa duplicada (viola uq_placa) ===
INSERT INTO carreras_urbanas_pilotos_unique (nombre_piloto, placa_vehiculo, numero_corredor, temporada, estado)
VALUES ('Renato Xol', 'P124ABC', 30, 'temporada-1', 'activo');

-- === Caso limite invalido 2: mismo numero de corredor en la MISMA temporada (viola uq_numero_temporada) ===
INSERT INTO carreras_urbanas_pilotos_unique (nombre_piloto, placa_vehiculo, numero_corredor, temporada, estado)
VALUES ('Sofia Mux', 'P111ZZZ', 12, 'temporada-1', 'activo');