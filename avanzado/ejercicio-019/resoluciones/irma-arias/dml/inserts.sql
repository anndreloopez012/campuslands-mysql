-- DML: Inserción de datos para saltos de paracaidismo
USE db_paracaidismo;

INSERT INTO saltos_paracaidismo (codigo_salto, nombre_paracaidista, modalidad, altura_pies, precio_dolares, estado) VALUES
('JMP-01', 'Carlos Mendoza', 'Tándem', 12000, 220.00, 'completado'),
('JMP-02', 'Sofía Valdés', 'Freefly', 15000, 280.50, 'completado'),
('JMP-03', 'Mateo Ramírez', 'Wingsuit', 18000, 350.00, 'programado'),
('JMP-04', 'Valentina Ruiz', 'Tándem', 10000, 200.00, 'en_espera'),
('JMP-05', 'Alejandro Torres', 'Precision Landing', 8000, 180.00, 'completado'),
('JMP-06', 'Lucía Fernández', 'Freefly', 16000, 300.00, 'programado'),
('JMP-07', 'Diego Morales', 'Wingsuit', 20000, 380.00, 'cancelado'),
('JMP-08', 'Camila Rojas', 'Tándem', 12000, 220.00, 'programado');