-- Datos de practica. Puedes cambiarlos o agregar mas filas.
USE campuslands_mysql;


INSERT INTO reactivos_quimicos (codigo_cas, nombre_quimico, formula_molecular, pureza_porcentaje) VALUES
('7647-01-0', 'Ácido Clorhídrico', 'HCl', 37.00),
('1310-73-2', 'Hidróxido de Sodio', 'NaOH', 98.50),
('7732-18-5', 'Agua Desionizada', 'H2O', 99.90),
('64-19-7', 'Ácido Acético Concentrado', 'CH3COOH', 99.50);

INSERT INTO quimicos_analistas (numero_colegiado, nombre_analista, correo, nivel_acceso) VALUES
('COL-Q-4011', 'Dra. Beatriz Estrada', 'beatriz.estrada@labquimico.com', 'Director'),
('COL-Q-5290', 'Ing. Mario López', 'mario.lopez@labquimico.com', 'Senior'),
('COL-Q-6102', 'Licda. Karen Morales', 'karen.morales@labquimico.com', 'Junior');

INSERT INTO formulas_quimicas (codigo_formula, nombre_formula, analista_creador_id, fecha_creacion, estado_formula) VALUES
('FORM-2026-001', 'Solución Reguladora de pH 7', 1, '2026-01-15', 'Aprobada'),
('FORM-2026-002', 'Reactivo Neutralizador Industrial', 2, '2026-02-10', 'Aprobada'),
('FORM-2026-003', 'Solución Tampón Acética', 2, '2026-03-05', 'En Pruebas'),
('FORM-2026-004', 'Detergente Químico Base', 3, '2026-04-01', 'Borrador');

INSERT INTO composicion_formula (formula_id, reactivo_id, cantidad_gramos) VALUES
(1, 3, 950.000),
(1, 2, 25.500),
(2, 1, 150.000),
(2, 3, 800.000),
(3, 4, 120.000),
(3, 3, 850.000),
(4, 2, 45.000),
(4, 3, 900.000);