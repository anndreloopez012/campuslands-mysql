-- DML: Inserción de datos para fórmulas químicas de laboratorio
USE db_laboratorio_quimico;

INSERT INTO formulas_quimicas (codigo_formula, nombre_compuesto, clasificacion_quimica, numero_atomos_totales, volumen_producido_ml, estado_formula) VALUES
('FOR-01', 'Acido Sulfurico Concentrado', 'Inorganico', 7, 1500.00, 'catalogado'),
('FOR-02', 'Glucosa Anhidra', 'Organico', 24, 850.50, 'validado'),
('FOR-03', 'Cloruro de Sodio Puro', 'Salino', 2, 3000.00, 'catalogado'),
('FOR-04', 'Etanol Absoluto', 'Organico', 9, 2000.00, 'en_sintesis'),
('FOR-05', 'Nitrato de Potasio', 'Inorganico', 5, 1200.00, 'validado'),
('FOR-06', 'Peroxido de Hidrogeno', 'Inorganico', 4, 500.00, 'experimental'),
('FOR-07', 'Acido Acetilsalicilico', 'Organico', 21, 950.00, 'catalogado'),
('FOR-08', 'Sulfato de Cobre Pentahidratado', 'Salino', 21, 1800.00, 'en_sintesis');