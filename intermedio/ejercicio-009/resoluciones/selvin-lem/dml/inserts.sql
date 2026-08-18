USE campuslands_mysql;

INSERT INTO kickboxing_gimnasios (nombre_gimnasio, ciudad, estado) VALUES
('Gimnasio Trueno',    'Guatemala',      'activo'),
('Fuerza Total',       'Quetzaltenango', 'activo'),
('Combate Extremo',    'Escuintla',      'activo'),
('Puño de Hierro',     'Coban',          'cerrado');

INSERT INTO kickboxing_peleadores_fk (nombre_peleador, id_gimnasio, categoria_peso, estado) VALUES
('Diego Solares', 1, 'welter', 'activo'),
('Marina Us',     1, 'pluma',  'activo'),
('Hector Ba',     2, 'welter', 'activo'),
('Sofia Chub',    2, 'ligero', 'activo'),
('Pablo Ixchel',  3, 'pesado', 'retirado'),
('Karen Toc',     3, 'pluma',  'activo'),
('Andres Mux',    4, 'ligero', 'retirado'),
('Lucia Ba',      1, 'welter', 'activo');

-- === Caso limite 1: intento de insertar un peleador con gimnasio inexistente ===
-- Debe fallar por violar la FOREIGN KEY (no existe id_gimnasio = 99)
INSERT INTO kickboxing_peleadores_fk (nombre_peleador, id_gimnasio, categoria_peso, estado)
VALUES ('Renato Xol', 99, 'ligero', 'activo');

-- === Caso limite 2: intento de borrar un gimnasio que aun tiene peleadores ===
-- Debe fallar por ON DELETE RESTRICT (Gimnasio Trueno tiene 3 peleadores)
DELETE FROM kickboxing_gimnasios WHERE nombre_gimnasio = 'Gimnasio Trueno';