-- funcionalidades/ejercicio-018 - maria-montepeque
-- Este archivo se ejecuta como 'campus' (usuario normal de la app).
USE campuslands_mysql;

INSERT INTO personajes_rpg (nombre, clase, nivel, experiencia, propietario) VALUES
    ('Thalrik', 'Guerrero', 22, 48500, 'Lira'),
    ('Vaenna', 'Mago', 18, 36200, 'Lira'),
    ('Doryen', 'Arquero', 25, 61000, 'Orion'),
    ('Sylas', 'Sanador', 15, 21800, 'Kael');

INSERT INTO objetos_inventario (personaje_id, nombre_objeto, tipo, cantidad) VALUES
    (1, 'Espada Larga de Acero', 'Arma', 1),
    (1, 'Pocion de Vida Mayor', 'Pocion', 5),
    (2, 'Baston Arcano', 'Arma', 1),
    (2, 'Tunica de Mago Novato', 'Armadura', 1),
    (3, 'Arco Compuesto', 'Arma', 1),
    (3, 'Carcaj de Flechas', 'Miscelaneo', 30),
    (4, 'Amuleto de Sanacion', 'Miscelaneo', 1);
