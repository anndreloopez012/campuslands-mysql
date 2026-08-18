INSERT INTO categorias_kickboxing (
    nombre_categoria,
    limite_peso
) VALUES
('Peso Mosca', 56.00),
('Peso Gallo', 61.00),
('Peso Pluma', 66.00),
('Peso Ligero', 70.00),
('Peso Welter', 77.00),
('Peso Medio', 84.00),
('Peso Semipesado', 93.00),
('Peso Pesado', 100.00),
('Peso Superpesado', 120.00),
('Peso Abierto', 130.00),
('Peso Juvenil', 60.00),
('Peso Amateur', 75.00),
('Peso Intermedio', 80.00),
('Peso Profesional', 90.00),
('Peso Elite', 105.00);

INSERT INTO peleadores_kickboxing (
    nombre_peleador,
    nacionalidad,
    categoria_id
) VALUES
('Carlos Mendoza', 'Colombia', 1),
('Luis Ramirez', 'Mexico', 2),
('Andres Castillo', 'Peru', 3),
('Diego Morales', 'Argentina', 4),
('Santiago Torres', 'Chile', 5),
('Mateo Vargas', 'Colombia', 6),
('Gabriel Silva', 'Brasil', 7),
('Nicolas Herrera', 'Ecuador', 8),
('Daniel Ruiz', 'Paraguay', 9),
('Alejandro Gomez', 'Uruguay', 10),
('Fernando Lopez', 'Mexico', 11),
('Jorge Martinez', 'Argentina', 12),
('Sebastian Castro', 'Chile', 13),
('Miguel Fernandez', 'Colombia', 14),
('Juan Rodriguez', 'Brasil', 15);

INSERT INTO combates_kickboxing (
    peleador_id,
    fecha_combate,
    oponente,
    resultado
) VALUES
(1, '2026-01-10', 'Luis Ortega', 'Victoria'),
(2, '2026-01-15', 'Carlos Perez', 'Derrota'),
(3, '2026-01-20', 'Mateo Sanchez', 'Victoria'),
(4, '2026-01-25', 'Andres Vega', 'Empate'),
(5, '2026-02-01', 'Diego Rojas', 'Victoria'),
(6, '2026-02-05', 'Jorge Silva', 'Victoria'),
(7, '2026-02-10', 'Fernando Torres', 'Derrota'),
(8, '2026-02-15', 'Nicolas Cruz', 'Victoria'),
(9, '2026-02-20', 'Gabriel Ramos', 'Victoria'),
(10, '2026-02-25', 'Santiago Flores', 'Derrota'),
(11, '2026-03-01', 'Daniel Castro', 'Victoria'),
(12, '2026-03-05', 'Miguel Herrera', 'Empate'),
(13, '2026-03-10', 'Alejandro Ruiz', 'Victoria'),
(14, '2026-03-15', 'Sebastian Morales', 'Victoria'),
(15, '2026-03-20', 'Juan Torres', 'Derrota');