-- funcionalidades/ejercicio-006 - maria-montepeque
-- Nota: las cifras de taquilla son aproximadas y solo sirven para tener datos
-- numericos con los que practicar EXPLAIN, no son datos oficiales.
USE campuslands_mysql;

INSERT INTO sagas_ciencia_ficcion
    (nombre_saga, universo, anio_inicio)
VALUES
    ('Star Wars', 'Space Opera', 1977),
    ('Star Trek', 'Space Opera', 1966),
    ('Alien', 'Terror Espacial', 1979),
    ('Terminator', 'Accion Distopica', 1984),
    ('Matrix', 'Ciberpunk', 1999),
    ('Dune', 'Space Opera', 1984),
    ('Blade Runner', 'Ciberpunk', 1982),
    ('Guardianes de la Galaxia', 'Space Opera', 2014);

INSERT INTO entregas_saga
    (saga_id, titulo, anio_estreno, taquilla_millones, es_precuela)
VALUES
    -- Star Wars (saga_id = 1)
    (1, 'Una Nueva Esperanza', 1977, 775.00, 0),
    (1, 'El Imperio Contraataca', 1980, 538.00, 0),
    (1, 'El Retorno del Jedi', 1983, 475.00, 0),
    (1, 'La Amenaza Fantasma', 1999, 1027.00, 1),
    (1, 'El Ataque de los Clones', 2002, 649.00, 1),
    (1, 'La Venganza de los Sith', 2005, 850.00, 1),
    (1, 'El Despertar de la Fuerza', 2015, 2068.00, 0),
    (1, 'Los Ultimos Jedi', 2017, 1333.00, 0),
    (1, 'El Ascenso de Skywalker', 2019, 1074.00, 0),
    -- Star Trek (saga_id = 2)
    (2, 'La Pelicula', 1979, 139.00, 0),
    (2, 'La Ira de Khan', 1982, 97.00, 0),
    (2, 'En Busca de Spock', 1984, 87.00, 0),
    (2, 'Generaciones', 1994, 118.00, 0),
    (2, 'Star Trek', 2009, 385.00, 0),
    (2, 'En la Oscuridad', 2013, 467.00, 0),
    -- Alien (saga_id = 3)
    (3, 'Alien, el Octavo Pasajero', 1979, 203.00, 0),
    (3, 'Aliens, el Regreso', 1986, 183.00, 0),
    (3, 'Alien 3', 1992, 159.00, 0),
    (3, 'Prometheus', 2012, 403.00, 1),
    (3, 'Alien Covenant', 2017, 240.00, 1),
    -- Terminator (saga_id = 4)
    (4, 'The Terminator', 1984, 78.00, 0),
    (4, 'Terminator 2: El Juicio Final', 1991, 520.00, 0),
    (4, 'Terminator 3: La Rebelion de las Maquinas', 2003, 433.00, 0),
    (4, 'Terminator Salvation', 2009, 371.00, 0),
    (4, 'Terminator: Genesis', 2015, 440.00, 0),
    -- Matrix (saga_id = 5)
    (5, 'The Matrix', 1999, 465.00, 0),
    (5, 'The Matrix Reloaded', 2003, 742.00, 0),
    (5, 'The Matrix Revolutions', 2003, 427.00, 0),
    (5, 'The Matrix Resurrections', 2021, 159.00, 0),
    -- Dune (saga_id = 6)
    (6, 'Dune (1984)', 1984, 30.00, 0),
    (6, 'Dune: Parte Uno', 2021, 402.00, 0),
    (6, 'Dune: Parte Dos', 2024, 714.00, 0),
    -- Blade Runner (saga_id = 7)
    (7, 'Blade Runner', 1982, 33.00, 0),
    (7, 'Blade Runner 2049', 2017, 259.00, 0),
    -- Guardianes de la Galaxia (saga_id = 8)
    (8, 'Guardianes de la Galaxia', 2014, 773.00, 0),
    (8, 'Guardianes de la Galaxia Vol. 2', 2017, 863.00, 0),
    (8, 'Guardianes de la Galaxia Vol. 3', 2023, 845.00, 0);
